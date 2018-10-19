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

class StaffController extends UserService implements Controller{
	function __construct(){
		parent::__construct();
	}

	private function newStaff(){
        #echo "<pre>"; print_r($this->getRoles()); 
        $this->assign('title', 'New User Form');
		$this->assign('roles', $this->getRoles());
		$this->display('staff/new.tpl');
	}

	private function addStaff(){
        #echo "<pre>"; print_r($_REQUEST); die;

		#get variables
		$fname = trim(filter_input(INPUT_POST, 'fname'));
		$lname = trim(filter_input(INPUT_POST, 'lname'));
		$role = trim(filter_input(INPUT_POST, 'role'));
        $role = '1';
		$email = trim(filter_input(INPUT_POST, 'email'));
		$phone = trim(filter_input(INPUT_POST, 'phone'));
		$pwd = trim(filter_input(INPUT_POST, 'pwd'));
		$hashPwd = password_hash($pwd, PASSWORD_DEFAULT);
		$gender = trim(filter_input(INPUT_POST, 'gender'));
		$dob = trim(filter_input(INPUT_POST, 'dob'));

		#generate url
        $url = '';
		@$stitch = Utils::generateRandomString($url);
		$name = implode("-", [$stitch, $fname, $lname]);
    	$url = Utils::generateSlug($name);
    	
    	$activationPin = Utils::trugPinGen();

    	#get user ip address
    	$ip = Utils::getClientIpServer();

		#insert into the db
		#1check if mail or phone exists
		$exists = $this->staffExists($email, $phone);
		#echo'<pre>'; print_r($_REQUEST); die;
		
        if(empty($exists)){
		    $insert = $this->insertStaff($fname, $lname, $role, $gender, $url, $email, $phone, $hashPwd, $ip, $pin, $status = 0);
            $result['msg'] = 'Success';
            
    		// if ($insert > 0){
    		//     #send email with the pin
      //           $to = $email;
      //           $subject = "TruCommerce Admin Activation";
    
      //           $message = "
      //               <html>
      //                   <head>
      //                   <title>TruCommerce Admin Activation</title>
      //                   </head>
      //                   <body>
      //                       <h1>Welcome onboard . $fname .,</h1>
      //                       <p>Please Activate your TruCommerce Admin Activation here: </p>
      //                       <p>
      //                           Click 
      //                           <a href='https://www.e-mboga.co.ke/access' target='__blank'>
      //                               <img src='https://www.e-mboga.co.ke/cdn/assets/images/logo.png' />
      //                               <strong style='color: green;'>HERE</strong>
      //                           </a>
      //                       </p>
      //                       <p>Email: ". $email ."</P>
      //                       <p>Password: ". $pwd ."</P>

      //                       <p>
      //                           Please report any errors to the system developer through ceo.ogego@gmail.com in case of query or suggestions on how we can improve the system to satisfy the African eCommerce customers.
      //                       </p>
      //                       <p>We thank you for being our trusted TruCommerce Application System.</p>
      //                       <br />
      //                       <hr>
      //                       <h2>Cheers &amp; Happy TruCommercing,</h2>
      //                       <p>Charles Evans Ogego Otieno</p>
      //                   </body>
      //               </html>
      //           ";
    
      //           // Always set content-type when sending HTML email
      //           $headers = "MIME-Version: 1.0" . "\r\n";
      //           $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
    
      //           // More headers
      //           $headers .= 'From: <support@emboga.co.ke>' . "\r\n";
    
      //           if(mail($to,$subject,$message,$headers)){
      //               #2. then mail admin
      //               #Now set session in accordance to user role (For initial system setup)
      //               #header('Location: /staff/new');
      //               $result['msg'] = 'Success';
      //               $result['url'] = $url;
      //               $result['info'] = 'Success.' .$fname. ' has been successfully added.';
      //           }
      //           else{
      //              $result['msg'] = 'User has been successfully added. But, failed to send mail';  
      //           }
      //       }
		}
		else{
			$result['msg'] = 'Failed. User already exists.Please check your email or telphone number. Thank you.';
		}

        #return result
        header('Content-type: application/json');
        echo json_encode($result);
	}

    private function displaySystemAdmins(){
        #get all staff by role equal to 1
        $staff = $this->getStaffBy(1);
		#echo'<pre>'; print_r($staff); die;
        
        $this->assign('users', $staff);
        $this->display('staff/sysAdmins.tpl');
    }

    private function displayAdmins(){
        #get all staff by role equal to 1
        $staff = $this->getStaffBy(2);
        $this->assign('users', $staff);
        $this->display('staff/admins.tpl');
    }

    private function displayStaff(){
        #get all staff by role equal to 1
        $staff = $this->getStaffBy(3);
        $this->assign('users', $staff);
        $this->display('staff/staff.tpl');
    }

	private function staffProfile(){
	    $admin = $this->getAdminBy($_REQUEST['info']);
		#echo'<pre>'; print_r($admin); die;
        $this->assign('url', $_REQUEST['info']);
		$this->assign('admin', $admin);
        $this->assign('title', 'Staff Profile');
		$this->display('staff/profile.tpl');
	}
	
	private function updateStaff(){
	    echo'<pre>'; print_r($_REQUEST); die;
    }
    
    private function deleteStaff(){
        echo'<pre>'; print_r($_REQUEST); die;
    }

	function execute(){
		$q = trim(filter_input(INPUT_GET, 'query'));
		switch (isset($q) ? $q : NULL) {
			case NULL:
			case 'profile':
				$this->newStaff();
				#$this->staffProfile();
			break;
			case 'new':
				$this->newStaff();
			break;
			case 'add':
				$this->addStaff();
			break;
			case 'update':
				$this->updateStaff();
			break;
            case 'sysadmins':
                $this->displaySystemAdmins();
            break;
            case 'admins':
                $this->displayAdmins();
            break;
            case 'all':
                $this->displayStaff();
            break;
            case 'delete':
                $this->deleteStaff();
                break;
			default:
            	// $controller = new ErrorController();
				echo "Staff query error 404!!";
			break;
		}
	}
}
