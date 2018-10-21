<?php
/*~
.----------------------------------------------------------------------------.
|  Mission: To Code Business Ideas Into Realities                            |
|   Version: 87101713039(304480)                                             |
|----------------------------------------------------------------------------|
|     Admin: Charles Evans Ogego Otieno (Project Administrator)              |
|   Author(s): C.E.O Otieno (trulance247)                                    |
|          : ogegoe@trulancetechnologies.com                                 |
|          : trulance247@gmail.com                                           |
| Copyright (c) 2013-2017, C.E.O Otieno. All Rights Reserved.                |
| ---------------------------------------------------------------------------|
| I offer a number of paid services :                                        |
| - Web Hosting on highly optimized fast and secure customized linux servers |
| - Technology Consulting                                                    |
| - Outsourcing (programmers and graphic designers)                          |
'----------------------------------------------------------------------------'
|   License:                                                                 |
| This program is distributed in the hope that it will be useful - WITH      |
| A WARRANTY; with the implied warranty of MERCHANTABILITY or                |
| FITNESS FOR A PARTICULAR PURPOSE.                                          |
|                                                                            |
| THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"|
| AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE  |
| IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE |
| ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE  |
| LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR        |
| CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF       |
| SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS   |
| INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN    |
| CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)    |
| ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE |
| POSSIBILITY OF SUCH DAMAGE.                                                |
|----------------------------------------------------------------------------|
*/
//include composer autoload
require_once __ROOT__ . "/system/apis/vendor/autoload.php";

//import the Intervention Image Manager Class
use Intervention\Image\ImageManager;

class ProductController extends InventoryService implements Controller{
	function __construct(){
		parent::__construct();
	}
	
	#new product
	private function newProduct(){
		$this->assign('cats', $this->getCategories());
		$this->display('product/new.tpl');
	}
	
	private function addProduct(){
        #pick user inputs
	    $pname= trim(filter_input(INPUT_POST, 'pname'));
	    $psummary=  trim(filter_input(INPUT_POST, 'psummary'));
	    $cat=  trim(filter_input(INPUT_POST, 'cat'));
	    $status=  trim(filter_input(INPUT_POST, 'status'));
        if (empty($status)) {
            $status = 0;
        }
	    $pprice=  trim(filter_input(INPUT_POST, 'pprice'));
	    $discount=  trim(filter_input(INPUT_POST, 'discount'));
        if (empty($discount)) {
            $discount = 0;
        }
	    $commission=  trim(filter_input(INPUT_POST, 'commission'));
        if (empty($commission)) {
            $commission = 0;
        }
	    $pdescription=  trim(filter_input(INPUT_POST, 'pdescription'));
	    $metatitle=  trim(filter_input(INPUT_POST, 'metatitle'));
	    $metakey=  trim(filter_input(INPUT_POST, 'metakey'));
	    $brand= trim(filter_input(INPUT_POST, 'brand'));
	    $stock=  trim(filter_input(INPUT_POST, 'stock'));
        if (empty($stock)) {
            $stock = 1;
        }
	    $delivery= trim(filter_input(INPUT_POST, 'delivery'));
	    
	    #process data, to start with image handling
	    $filename = stripslashes($_FILES['photo']['name']);
	    $uploadDir = 'products/';
	    
        #This helps in creating a unique copy of each product uploaded
        $photoStore = 'imranma_product_'.time().'_'.$filename;        
        
        #target name indication
        $targetPath = $uploadDir . $photoStore; 
	    
	    //Instansiate image manager
	    $imageManager = new ImageManager();

	    //Read image from temporary file & Resize image
	    $img = $imageManager->make($_FILES['photo']['tmp_name'])->resize(260, 260);
        #echo "<pre>"; print_r($img); die;

	    //save image & Proceed
	    if($img->save($targetPath)){
            // echo "<pre>"; print_r($_FILES); die;
            $url = Utils::generateRandomString(''); 
            // Get me my skus!
            $sku = Utils::skuGenerator($pname);
            #insert the product at this point
            $insert = $this->insertProduct($url, $sku, $pname, $psummary, $cat, $status, $pprice, $commission, $discount, $pdescription, $metatitle, $metakey, $photoStore, $brand, $delivery, $stock);
            #echo'<pre>'; print_r($insert); die;
            if($insert > 0){
                header('Location: /product');
            }
            else die('Error inserting image into the product table');
        }
        else die('Error uploading image');
	}

	private function productProfile(){
    	$url = trim(filter_input(INPUT_GET, 'info'));
        
	    $gallery = $this->getProductGallery($url);
        
        $this->assign('gallery', $gallery);
    	$this->assign('info', $url);
    	$this->assign('p', $this->getProductByURL($url));
    	$this->display('product/profile.tpl');
	}

	private function allProducts(){
    	$products = $this->pullProducts();
    	#echo'<pre>'; print_r($products); die;
    	
    	$this->assign('products', $products);
    	$this->display('product/all.tpl');
	}
    	
    private function productEdit(){
        $pid = trim(filter_input(INPUT_GET, 'info'));
        $product = $this->getProductById($pid);
        
	    $gallery = $this->getProductGallery($product['url']);
	    #echo'<pre>'; print_r($gallery); die;
        #echo'<pre>'; print_r($product); die;
        
        $this->assign('gallery', $gallery);
        $this->assign('prod', $product);
		$this->assign('cats', $this->getCategories());
		$this->display('product/edit.tpl');
    }

    private function updateProductPrice(){
        $result = [];
        $pId = trim(filter_input(INPUT_GET, 'info'));
        $pPrice = trim(filter_input(INPUT_POST, 'price'));

        $update = $this->updateProductPricePerTime($pId, $pPrice);

        if (!empty($update) && $update > 0) {
            # code...
            $result['msg'] = 'Success';
        }
        else{
            $result['msg'] = 'Failed';
        }

        header('Content-type: application/json');
        echo json_encode($result);
    }
    
    private function editProdctImage(){
        $pId = trim(filter_input(INPUT_GET, 'info'));

        #process data, to start with image handling
        $filename = stripslashes($_FILES['newImage']['name']);
        $uploadDir = 'products/';
        
        #This helps in creating a unique copy of each product uploaded
        $photoStore = 'imranma_product_'.time().'_'.$filename;        
        
        #target name indication
        $targetPath = $uploadDir . $photoStore; 
        
        //Instansiate image manager
        $imageManager = new ImageManager();

        //Read image from temporary file & Resize image
        $img = $imageManager->make($_FILES['newImage']['tmp_name'])->resize(260, 260);

        //save image & Proceed
        if($img->save($targetPath)){
            #insert the product at this point
            $update = $this->updateProductImg($pId, $photoStore);
            #echo'<pre>'; print_r($update); die;
            if($update > 0){
                header('Location: /product/edit/'.$pId);
            }
            else die('Error inserting image into the product table');
        }
        else die('Error uploading image');
    }
    
    private function addProductGallery(){
        $pUrl = trim(filter_input(INPUT_GET, 'info'));
        $gurl = Utils::generateRandomString($modelUrl);
        
        if (isset($pUrl)) {
            $j = 0;     // Variable for indexing uploaded image.
            $dir = "products/";     // Declaring Path for uploaded images.
            for ($i = 0; $i < count($_FILES['photos']['name']); $i++) {
                // Loop to get individual element from the array
                $validextensions = array("jpeg", "jpg", "png");      // Extensions which are allowed.
                $ext = explode('.', basename($_FILES['photos']['name'][$i]));   // Explode file name from dot(.)
                $file_extension = end($ext); // Store extensions in the variable.
                $photo = time() . '-' . stripslashes($_FILES['photos']['name'][$i]);
                $target_path = $dir . $photo;     // Set the target path with a new name of image.
                $j = $j + 1;      // Increment the number of uploaded images according to the files in array.
                if (($_FILES["photos"]["size"][$i] < 500000)     // Approx. 500kb files can be uploaded.
                    && in_array($file_extension, $validextensions)) {
                    #TODO: Add the new Image class Here!!
                    if (move_uploaded_file($_FILES['photos']['tmp_name'][$i], $target_path)) {
                        // If file moved to uploads folder.
                        //now, insert that shit...
                        $updated = $this->insertGallery($gurl, $pUrl, $photo);
                        #echo'<pre>'; print_r($updated);
                    } else {     //  If File Was Not Moved.
                        echo $j. ' File not moved, please try again!';
                    }
                } else {     //   If File Size And File Type Was Incorrect.
                    echo $j. '***Invalid file Size or Type***';
                }
            }
            
            if($updated > 1){
                header('Location: /product/');
            }
            else{
                 echo $j. ' Not inserted into the db, please try again!';
            }
        }
    }
    	
    private function productUpdate(){
        $pid = trim(filter_input(INPUT_GET, 'info'));
	    $pname= trim(filter_input(INPUT_POST, 'pname'));
	    $psummary=  trim(filter_input(INPUT_POST, 'psummary'));
	    $cat=  trim(filter_input(INPUT_POST, 'cat'));
	    $status=  trim(filter_input(INPUT_POST, 'status'));
	    $pprice=  trim(filter_input(INPUT_POST, 'pprice'));
	    $discount=  trim(filter_input(INPUT_POST, 'discount'));
	    $commission=  trim(filter_input(INPUT_POST, 'commission'));
	    $pdescription=  trim(filter_input(INPUT_POST, 'pdescription'));
	    $metatitle=  trim(filter_input(INPUT_POST, 'metatitle'));
	    $metakey=  trim(filter_input(INPUT_POST, 'metakey'));
	    $brand= trim(filter_input(INPUT_POST, 'brand'));
	    $stock=  trim(filter_input(INPUT_POST, 'stock'));
	    $delivery= trim(filter_input(INPUT_POST, 'delivery'));
	    
	    $update = $this->updateProduct($pid, $pname, $psummary, $cat, $status, $pprice, $commission, $discount, $pdescription, $metatitle, $metakey, $brand, $delivery, $stock);
        if($update > 0){
            header("Location: /product/edit/".$pid);
        }
        
    }
    	
    private function productDelete(){
        $pid = trim(filter_input(INPUT_GET, 'info'));
        $delete = $this->removeProduct($pid);
        if($delete > 0){
            header('Location: /product'); 
            exit;    
        } else {
            echo "Error deleting record";
        }
    }
    	
    public function productDetails(){
        $url = trim(filter_input(INPUT_GET, 'info'));
        $product = $this->getProductByURL($url);
        $cat = $this->getCategoryByUrl($product['cat']);
        
	    $gallery = $this->getProductGallery($product['url']);
	    #echo'<pre>'; print_r($gallery); die;
        
        $this->assign('gallery', $gallery);
        $this->assign('purl', $url);
        $this->assign('title', $product['metaTitle']);
        $this->assign('catName', $cat['name']);
        $this->assign('prod', $product);
        $this->assign('cats', $this->getCategories());
        $this->display('product/details.tpl');
    }

    public function productPage(){
        #echo'<pre>'; print_r($_REQUEST); die;
        #get all categories
        $invetorysrv = new InventoryService();
        $cats = $invetorysrv->getCategories();
        $this->assign('cats', $cats);
        
        $pUrl = trim(filter_input(INPUT_GET, 'info'));
        $p = $this->findProdDetails($pUrl); 
        #echo "<pre>"; print_r($p); die;
        
        $gallery = $this->getProductGallery($pUrl);
        #echo'<pre>'; print_r($gallery); die;
        
        $this->assign('gallery', $gallery);
        $this->assign('p', $p);
        $this->assign('title', 'e-mboga.co.ke: ' .$p['name']);
        $this->display('product/page.tpl');
    }

	function execute(){
	    $q = trim(filter_input(INPUT_GET, 'query'));
	    switch (isset($q) ? $q : NULL){
            case NULL:
            case 'all':
                $this->allProducts();
                break;
            case 'page':
            case 'info':
                $this->productPage();
                break;
            case 'add':
                $this->addProduct();
                break;
            case 'new':
                $this->newProduct();
                break;
            case 'profile':
                $this->productProfile();
                break;
            case 'edit':
                $this->productEdit();
                break;
            case 'edit-image':
                $this->editProdctImage();
                break;
            case 'add-product-gallery':
                $this->addProductGallery();
                break;
            case 'update':
                $this->productUpdate();
                break;
            case 'delete':
                $this->productDelete();
                break;
                
                
            case 'details':
                $this->productDetails();
                die;
            default:
                die("Product query error 404: Page not found");
                break;
        }
    }
}

