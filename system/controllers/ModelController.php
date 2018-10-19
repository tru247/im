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

class ModelController extends ModelService implements Controller{
	function __construct(){
		parent::__construct();
	}

	private function newModel(){
		//echo "<pre>"; print_r($this->getModelTypes()); die;
		$this->assign('title', 'New Model');
		$this->assign('types', $this->getModelTypes());
		$this->display('model/new.tpl');
	}

	private function addModel(){
	    $fname = trim(filter_input(INPUT_POST, 'fname'));
	    $lname =  trim(filter_input(INPUT_POST, 'lname'));
	    $nick =  trim(filter_input(INPUT_POST, 'nick'));
	    $height =  trim(filter_input(INPUT_POST, 'height'));
	    $biust =  trim(filter_input(INPUT_POST, 'biust'));
	    $waist =  trim(filter_input(INPUT_POST, 'waist'));
	    $hips =  trim(filter_input(INPUT_POST, 'hips'));
	    $shoe =  trim(filter_input(INPUT_POST, 'shoes'));
	    $eye =  trim(filter_input(INPUT_POST, 'eye'));
	    $hair =  trim(filter_input(INPUT_POST, 'hair'));
	    $type= trim(filter_input(INPUT_POST, 'type'));
	    
		$filename = stripslashes($_FILES['photo']['name']);
        $uploadDir = 'uploads/';
        $ext = Utils::getExtension($filename);
        $validFormats = ['jpg', 'png', 'jpeg', 'JPG'];
        if(in_array($ext, $validFormats)){
            $photo = time() . '-' . $filename;
            $targetPath = $uploadDir . $photo;
            $upload = @move_uploaded_file($_FILES['photo']['tmp_name'], $targetPath);
            if($upload){
                $url = Utils::generateRandomString('');
                #echo'<pre>'; print_r($url); die;
                #insert the product at this point
                $insert = $this->insertModel($url, $fname, $lname, $nick, $height, $biust, $waist, $hips, $shoe, $eye, $hair, $photo, $type);
                #echo'<pre>'; print_r($insert); die;
                if($insert){
                    header('Location: /model');
                }
                else die('Error inserting image into the product table');
            }
            else die('Error uploading image');
        }
        else die('Invalid image format');
	}

    private function displayModels(){
        $models = $this->getModels();
        $this->assign('models', $models);
        #echo'<pre>'; print_r($models); die;
        $this->display('model/models.tpl');
    }

	private function modelProfile(){
	    $murl = trim(filter_input(INPUT_GET, 'info'));
	    $model = $this->getModelByUrl($murl);
	    #echo'<pre>'; print_r($this->getModelTypes()); die;
	    
		$this->assign('types', $this->getModelTypes());
	    $this->assign('model', $model);
	    $this->display('model/profile.tpl');
	}
	
	private function updateModel(){
        #now get the form posts and update the model details the refresh to the model list
        $id = trim(filter_input(INPUT_GET, 'info'));
        $fname = trim(filter_input(INPUT_POST, 'fname'));
        $lname = trim(filter_input(INPUT_POST, 'lname'));
        $nick = trim(filter_input(INPUT_POST, 'nick'));
        $about = trim(filter_input(INPUT_POST, 'about'));
        $eyes = trim(filter_input(INPUT_POST, 'eyes'));
        $height = trim(filter_input(INPUT_POST, 'height'));
        $biust = trim(filter_input(INPUT_POST, 'biust'));
        $waist = trim(filter_input(INPUT_POST, 'waist'));
        $hips = trim(filter_input(INPUT_POST, 'hips'));
        $shoes = trim(filter_input(INPUT_POST, 'shoes'));
        $type = trim(filter_input(INPUT_POST, 'type'));
        
        $email = trim(filter_input(INPUT_POST, 'email'));
        $phone = trim(filter_input(INPUT_POST, 'phone'));
        $address = trim(filter_input(INPUT_POST, 'address'));
        
        $fb = trim(filter_input(INPUT_POST, 'fb'));
        $tw = trim(filter_input(INPUT_POST, 'tw'));
        $gp = trim(filter_input(INPUT_POST, 'gp'));
        $ln = trim(filter_input(INPUT_POST, 'ln'));
        $pin = trim(filter_input(INPUT_POST, 'pin'));
        
	    $name = $_FILES['photo']['name'];
	    if(!empty($name)){
	        $filename = stripslashes($_FILES['photo']['name']);
            $uploadDir = 'uploads/';
            $ext = Utils::getExtension($filename);
            $validFormats = ['jpg', 'png', 'jpeg', 'JPG'];
            if(in_array($ext, $validFormats)){
                $photo = time() . '-' . $filename; //Save this to the DB
                $targetPath = $uploadDir . $photo;
                $upload = @move_uploaded_file($_FILES['photo']['tmp_name'], $targetPath);
                if($upload){
                    $update = $this->changeModelWithPic($id, $fname, $lname, $nick, $about, $eyes, $height, $biust, $waist, $hips, $shoes, $email, $phone, $address,  $fb, $tw, $gp, $ln, $pin, $photo, $type);
                    if($update){
                        header('Location: /model');
                    }
                    else die('Error inserting image into the product table');
                }
                else die('Error uploading image');
            }
            else die('Invalid image format');
	    }
	    else{
	        $update = $this->changeModel($id, $fname, $lname, $nick, $about, $eyes, $height, $biust, $waist, $hips, $shoes, $email, $phone, $address, $fb, $tw, $gp, $ln, $pin, $type);
	        if($update > 0){
    	        header('Location: /model');
                exit;
    	    }
    	    else{
    	        echo 'Error updating model profile details';
    	    }
	    }
    }
    
    private function deleteModel(){
        $mid = trim(filter_input(INPUT_GET, 'info'));
        $delete = $this->removeModel($mid);
        if($delete > 0){
            header('Location: /model'); 
            exit;    
        } else {
            echo "Error deleting record";
        }
    }
	
	public function frontProfile(){
	    $app = $this->getApp();
	    $murl = trim(filter_input(INPUT_GET, 'info'));
	    $model = $this->getModelByUrl($murl);
	    $gallery = $this->getModelGallery($murl);
	    #echo'<pre>'; print_r($gallery); die;
	    
	    $this->assign('gallery', $gallery);
	    $this->assign('model', $model);
	    $this->assign('app', $app);
	    $this->display('model/frontProfile.tpl');
	}
    
    private function modelGallery(){
        $murl = trim(filter_input(INPUT_GET, 'info'));
	    $model = $this->getModelByUrl($murl);
	    $gallery = $this->getModelGallery($murl);
	    #echo'<pre>'; print_r($gallery); die;
	    
	    $this->assign('gallery', $gallery);
	    $this->assign('model', $model);
	    $this->display('model/account.tpl');
    }
    
    private function updateGallery(){
        $modelUrl = trim(filter_input(INPUT_GET, 'info'));
        $gurl = Utils::generateRandomString($modelUrl);
        
        if (isset($modelUrl)) {
            $j = 0;     // Variable for indexing uploaded image.
            $dir = "models/";     // Declaring Path for uploaded images.
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
                    if (move_uploaded_file($_FILES['photos']['tmp_name'][$i], $target_path)) {
                        // If file moved to uploads folder.
                        //now, insert that shit...
                        $updated = $this->insertGallery($gurl, $modelUrl, $photo);
                        #echo'<pre>'; print_r($updated); die;
                    } else {     //  If File Was Not Moved.
                        echo $j. ' File not moved, please try again!';
                    }
                } else {     //   If File Size And File Type Was Incorrect.
                    echo $j. '***Invalid file Size or Type***';
                }
            }
            if($updated > 1){
                header('Location: /model/gallery/'.$modelUrl);
            }
            else{
                 echo $j. ' Not inserted into the db, please try again!';
            }
        }
    }
	
	private function newType(){
	    #echo'<pre>'; print_r($_REQUEST); die;
		#$this->assign('title', 'New Model Type Form');
		$this->display('model/newType.tpl');
	}
	
	private function addNewType(){
	    $title = trim(filter_input(INPUT_POST, 'title'));
	    $descr = trim(filter_input(INPUT_POST, 'descr')); 
	    
		#generate url
        $url = '';
		#@$stitch = Utils::generateRandomString($url);
		$name = implode("-", [$title]);
    	$url = Utils::generateSlug($name);
    	$insert = $this->insertModelType($title, $descr, $url);
        #	echo'<pre>'; print_r($insert); die;
    	if($insert > 0){
    	    $result['msg'] = 'Success';
            $result['url'] = $url;
            $result['info'] = 'Success.' .$name. ' has been successfully added.';
    	}
		else{
			$result['msg'] = 'Failed.';
		}

        #return result
        header('Content-type: application/json');
        echo json_encode($result);
	}
	
	private function allModelTypes(){
	    #gte all types
	    $types = $this->getModelTypes();
	    #echo'<pre>'; print_r($types); die;
	    #display
	    $this->assign('types', $types);
	    $this->display('model/types.tpl');
	}
    
    private function deleteModelType(){
        #echo'<pre>'; print_r($_REQUEST); die;
        $tid = trim(filter_input(INPUT_GET, 'info'));
        $delete = $this->removeModeType($tid);
        if($delete > 0){
            header('Location: /model/all-types');
        }
        else{
            echo "Error deleting record";
        }
    }

	function execute(){
		$q = trim(filter_input(INPUT_GET, 'query'));
		switch (isset($q) ? $q : NULL) {
			case NULL:
			case 'all':
				$this->displayModels();
			break;
			case 'new':
				$this->newModel();
			break;
			case 'add':
				$this->addModel();
			break;
			case 'profile':
			    $this->modelProfile();
			break;
			case 'gallery':
			    $this->modelGallery();
			break;
			case 'update-gallery':
			    $this->updateGallery();
			break;
			case 'account':
			    $this->frontProfile();
			    break;
			case 'update':
				$this->updateModel();
			break;
			case 'delete':
			    $this->deleteModel();
			break;
			
			case 'new-type':
				$this->newType();
			break;
			case 'add-type':
				$this->addNewType();
			break;
			case 'all-types':
				$this->allModelTypes();
			break;
			case 'update-type':
				$this->updateType();
			break;
			case 'delete-type':
			    $this->deleteModelType();
			break;
			default:
            	// $controller = new ErrorController();
				echo "Model query error 404!!";
			break;
		}
	}
}
