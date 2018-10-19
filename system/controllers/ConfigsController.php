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

#To handle landing page and different admins logins [system admin; staff; client;]
class ConfigsController extends UserService implements Controller{
	function __construct(){
		parent::__construct();
	}

	public function basicInformation(){
	    $app = $this->getApp();
	    $this->assign('app', $app);
	    
	    $this->assign('title', 'Basic Information');
		$this->display('configs/basic.tpl');
	}
	
	public function changeName(){
	    $appName = trim(filter_input(INPUT_POST, 'agencyName'));
	    $update = $this->updateName($appName);
	    #echo'<pre>'; print_r($update); die;
	    if($update > 0){
	        $result['msg'] = 'Success';
	    }
	    else{
	        $reult['msg'] = 'Failed.';
	    }

            #return result
            header('Content-type: application/json');
            echo json_encode($result);
	}
	
	public function changeAboutAgency(){
	    $aboutUs = trim(filter_input(INPUT_POST, 'aboutUs'));
	    $update = $this->updateIntroduction($aboutUs);
	    #echo'<pre>'; print_r($update); die;
	    if($update > 0){
	        $result['msg'] = 'Success';
	    }
	    else{
	        $reult['msg'] = 'Failed.';
	    }

        #return result
        header('Content-type: application/json');
        echo json_encode($result);
	}

	public function changeCurrency(){
		#echo "<pre>"; print_r($_REQUEST); die;
		$currency = trim(filter_input(INPUT_POST, 'currency'));
		if(!empty($currency)){
			#store details in the db
			$insert = $this->updateCompanyCurrency($currency);
			#echo'<pre>'; print_r($insert); die;

			#get results and respond
			if(is_int($insert) && $insert > 0){
				$result['msg'] = 'Success';
			}
			else {
				$result['msg'] = 'Failed';
			}
		}

		#return JSONIFIED results to the UI
		header('Content-type: application/json');
		echo json_encode($result);
	}
	
	public function changeContacts(){
	    $email = trim(filter_input(INPUT_POST, 'email'));
	    $phone = trim(filter_input(INPUT_POST, 'phone'));
	    $address = trim(filter_input(INPUT_POST, 'address'));
	    $city = trim(filter_input(INPUT_POST, 'city'));
	    $fb = trim(filter_input(INPUT_POST, 'fb'));
	    $tw = trim(filter_input(INPUT_POST, 'tw'));
	    $insta = trim(filter_input(INPUT_POST, 'insta'));
	    $gp = trim(filter_input(INPUT_POST, 'gp'));
	    $pin = trim(filter_input(INPUT_POST, 'pin'));
	    $ln = trim(filter_input(INPUT_POST, 'ln'));
	    
	    $update = $this->updateContacts($email, $phone, $address, $city, $fb, $tw, $insta, $gp, $pin, $ln);
	    #echo'<pre>'; print_r($update); die;
	    
	    if($update > 0){
	        $result['msg'] = 'Success';
	    }
	    else{
	        $reult['msg'] = 'Failed.';
	    }

        #return result
        header('Content-type: application/json');
        echo json_encode($result);
	}

	public function newService(){
	    #echo'<pre>'; print_r($_REQUEST); die;
	    $this->assign('title', 'New Service');
		$this->display('configs/newService.tpl');
	}
	
	public function addService(){
	    $title = trim(filter_input(INPUT_POST, 'title'));
	    $descr = trim(filter_input(INPUT_POST, 'descr'));
	    $insert = $this->insertService($title, $descr);
	    #echo'<pre>'; print_r($insert); die;
	    if($insert > 0){
	        $result['msg'] = 'Success';
	    }
	    else{
	        $reult['msg'] = 'Failed.';
	    }

        #return result
        header('Content-type: application/json');
        echo json_encode($result);
	}
	
	public function deleteService(){
        $sid = trim(filter_input(INPUT_GET, 'info'));
        $delete = $this->removeService($sid);
	    #echo'<pre>'; print_r($delete); die;
        if($delete > 0){
            header('Location: /settings/basic-information'); 
            exit;    
        } else {
            echo "Error deleting record";
        }
	}

	public function addShipping(){
		$title = trim(filter_input(INPUT_POST, 'title'));
		$descr = trim(filter_input(INPUT_POST, 'descr'));
		$ref = Utils::generateRandomString('ship');

		$result=[];

		$insert = $this->insertShipper($ref, $title, $descr);
		#echo "<pre>"; print_r($insert); die;
		if($insert > 0){
            $result['msg'] = 'Success';
        }
        else{
            $reult['msg'] = 'Failed.';
        }

        #return result
        header('Content-type: application/json');
        echo json_encode($result);
	}

	public function addPaymentMethod(){
		$title = trim(filter_input(INPUT_POST, 'title'));
		$vendor_no = trim(filter_input(INPUT_POST, 'vendor_no'));
		$descr = trim(filter_input(INPUT_POST, 'descr'));
		$ref = Utils::generateRandomString('pay');

		$result=[];

		$insert = $this->insertPayMethod($ref, $vendor_no, $title, $descr);
		#echo "<pre>"; print_r($insert); die;
		if($insert > 0){
            $result['msg'] = 'Success';
        }
        else{
            $reult['msg'] = 'Failed.';
        }

        #return result
        header('Content-type: application/json');
        echo json_encode($result);
	}

	public function serverInformation(){
	    #echo'<pre>'; print_r($_REQUEST); die;
	    $this->assign('title', 'Server Information');
		$this->display('configs/server.tpl');
	}

	function execute(){
		$q = trim(filter_input(INPUT_GET, 'query'));
		switch (isset($q) ? $q : NULL) {
			case NULL:
			case 'basic-information':
				$this->basicInformation();
			break;
			case 'update-name':
			    $this->changeName();
			break;
			case 'update-about-agency':
			    $this->changeAboutAgency();
			break;
			case 'update-currency':
				$this->changeCurrency();
			break;
			case 'update-contacts':
			    $this->changeContacts();
			break;
			case 'new-service';
				$this->newService();
			break;
			case 'add-service':
			    $this->addService();
			    break;
			case 'delete-service':
			    $this->deleteService();
			    break;
			case 'add-shipping':
				$this->addShipping();
			break;	
			case 'add-payment-method':
				$this->addPaymentMethod();
				break;
			case 'server-information';
				$this->serverInformation();
			break;			
			default:
			    echo "Settings query error 404!!";
			break;
		}
	}
}
