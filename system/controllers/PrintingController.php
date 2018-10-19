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
class PrintingController extends InventoryService implements Controller{
	function __construct(){
		parent::__construct();
	}

	protected function aboutUs(){
		#get all categories
	    $invetorysrv = new InventoryService();
	    $cats = $invetorysrv->getCategories();
	    $this->assign('cats', $cats);

	    $prods = $invetorysrv->getRandomFourProduct();
	    $this->assign('prods', $prods);
	    #echo'<pre>'; print_r($app ); die;
	    
	    #get blogs
	    #$blogsrv = new BlogService();
	    #$blogs = $blogsrv->getBlogs();
	    #$this->assign('blogs', $blogs);
	    #echo'<pre>'; print_r($blogs); die;
	    
	    $this->assign('active', 'about');
		$this->display('print/about.tpl');
	}

	protected function getQuote(){
		#get all categories
	    $invetorysrv = new InventoryService();
	    $cats = $invetorysrv->getCategories();
	    $this->assign('cats', $cats);

	    $prods = $invetorysrv->getRandomFourProduct();
	    $this->assign('prods', $prods);
	    #echo'<pre>'; print_r($app ); die;
	    
	    #get blogs
	    #$blogsrv = new BlogService();
	    #$blogs = $blogsrv->getBlogs();
	    #$this->assign('blogs', $blogs);
	    #echo'<pre>'; print_r($blogs); die;
	    
	    $this->assign('active', 'quote');
		$this->display('print/quote.tpl');
	}

	protected function submitQuote(){
		#echo'<pre>'; print_r($_REQUEST); die;
		$client = trim(filter_input(INPUT_POST, 'client_name'));
		$cemail = trim(filter_input(INPUT_POST, 'client_email'));
		$cphone = trim(filter_input(INPUT_POST, 'client_phone'));
		$service = trim(filter_input(INPUT_POST, 'item_service'));
		$qty = trim(filter_input(INPUT_POST, 'item_qty'));
		$cmsg = trim(filter_input(INPUT_POST, 'client_msg'));

		$url = Utils::generateRandomString('_');
		$status = 'new';
		$insert = $this->insertQuote($url, $client, $cemail, $cphone, $service, $qty, $cmsg, $status);
		#echo'<pre>'; print_r($insert); die;
		if($insert > 0){
			#send email to admin at this point; and a confirmation email to the user
			$results['msg'] = 'Success';
			$results['info'] = 'You have successfully submitted your quote.';
		}
		else{
			$results['msg'] = 'Failed';
			$results['info'] = 'An error was encountered when submitting your quote.';
		}

		header('Content-type: application/json');
        echo json_encode($results);
	}

	protected function uploadForPrint(){
		#get all categories
	    $invetorysrv = new InventoryService();
	    $cats = $invetorysrv->getCategories();
	    $this->assign('cats', $cats);

	    $prods = $invetorysrv->getRandomFourProduct();
	    $this->assign('prods', $prods);
	    #echo'<pre>'; print_r($app ); die;
	    
	    #get blogs
	    #$blogsrv = new BlogService();
	    #$blogs = $blogsrv->getBlogs();
	    #$this->assign('blogs', $blogs);
	    #echo'<pre>'; print_r($blogs); die;
	    
	    $this->assign('active', 'upload');
		$this->display('print/upload.tpl');
	}

	protected function upload(){
		#get data from the client
		$due = trim(filter_input(INPUT_POST, 'due_date'));
		$client = trim(filter_input(INPUT_POST, 'client_name'));
		$email = trim(filter_input(INPUT_POST, 'client_email'));
		$phone = trim(filter_input(INPUT_POST, 'client_phone'));
		$company = trim(filter_input(INPUT_POST, 'company_name'));
		$instructions = trim(filter_input(INPUT_POST, 'job_description'));

		//Work on that fucking image now!
		#process data, to start with image handling
	    $filename = stripslashes($_FILES['artwork_file']['name']);
	    $uploadDir = 'uploads/';
	    
        #This helps in creating a unique copy of each product uploaded
        $photoStore = 'imranma_client_artwork_'.time().'_'.$filename;        
        
        #target name indication
        $targetPath = $uploadDir . $photoStore; 
	    
	    //Instansiate image manager
	    $imageManager = new ImageManager();

	    //Read image from temporary file & Resize image
	    $img = $imageManager->make($_FILES['artwork_file']['tmp_name']);//->resize(260, 260);

	    //save image & Proceed
	    if($img->save($targetPath)){
            // echo "<pre>"; print_r($_FILES); die;
            $url = Utils::generateRandomString('_'); 
            $status = 'new';
            #insert the product at this point TODO: To create a Transaction that simultaneaously save client details in the client table
            $insert = $this->insertPrintingOrder($url, $due, $client, $email, $phone, $company, $instructions, $photoStore, $status);
            #echo'<pre>'; print_r($insert); die;
            if($insert > 0){
            	#send a notification to the admin & the client too
                header('Location: /printing/thanks');
            }
            else die('Error inserting image into server');
        }
        else die('Error uploading image');
	}

	private function thanks(){
		#get all categories
	    $invetorysrv = new InventoryService();
	    $cats = $invetorysrv->getCategories();
	    $this->assign('cats', $cats);

	    $prods = $invetorysrv->getRandomFourProduct();
	    $this->assign('prods', $prods);
	    #echo'<pre>'; print_r($app ); die;
	    
	    #get blogs
	    #$blogsrv = new BlogService();
	    #$blogs = $blogsrv->getBlogs();
	    #$this->assign('blogs', $blogs);
	    #echo'<pre>'; print_r($blogs); die;
	    
	    // $this->assign('active', 'contact');
		$this->display('print/thanks.tpl');
	}

	protected function contactUs(){
		#get all categories
	    $invetorysrv = new InventoryService();
	    $cats = $invetorysrv->getCategories();
	    $this->assign('cats', $cats);

	    $prods = $invetorysrv->getRandomFourProduct();
	    $this->assign('prods', $prods);
	    #echo'<pre>'; print_r($app ); die;
	    
	    #get blogs
	    #$blogsrv = new BlogService();
	    #$blogs = $blogsrv->getBlogs();
	    #$this->assign('blogs', $blogs);
	    #echo'<pre>'; print_r($blogs); die;
	    
	    $this->assign('active', 'contact');
		$this->display('print/contact.tpl');
	}

	protected function sendMessage(){
		echo'<pre>'; print_r($_REQUEST); die;
	}

	function execute(){
		$q = trim(filter_input(INPUT_GET, 'query'));
		switch(isset($q) ? $q : NULL){
			case 'about-us':
				$this->aboutUs();	
				break;
			case 'get-quote':
				$this->getQuote();
				break;
			case 'submit-quote':
				$this->submitQuote();
				break;
			case 'upload-for-printing':
				$this->uploadForPrint();
				break;
			case 'upload':
				$this->upload();
				break;
			case 'thanks':
				$this->thanks();
				break;
			case 'contact-us':
				$this->contactUs();
				break;
			case 'send':
				$this->sendMessage();
				break;
			default:
				die('Sorry, Our printer has unexpected server issues! Contact the admin');
			break;
		}
	}
}

?>
