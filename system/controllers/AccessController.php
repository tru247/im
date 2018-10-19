<?php
/*~
.----------------------------------------------------------------------------.
|  Mission: To Code Business Ideas Into Realities                            |
|   Version: 87101713039(304480)                                             |
|----------------------------------------------------------------------------|
|     Admin: Charles Evans Ogego Otieno (Project Administrator)            |
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
class AccessController extends UserService implements Controller{
	function __construct(){
		parent::__construct();
	}

	public function displayLoginPage(){
		$this->display('access/login.tpl');
	}

	public function loginUsr(){
        // echo "<pre>"; print_r($_SESSION); die;
        #get the inputs
        $result = [];

        $loginuid = trim(filter_input(INPUT_POST, 'loginuid'));
        $pwd = trim(filter_input(INPUT_POST, 'pwd'));

        #Create mail existence function here
        $log = $this->loginUser($loginuid, $pwd);
        #echo'<pre>'; print_r($log); die;
        if(!empty($log)){
        	if($log['role'] == 1){
    				$_SESSION[WM_SYSADMIN] = $log['url'];
    		}
    		elseif ($log['role'] == 2) {
    			$_SESSION[WM_ADMIN] = $log['url'];
    		}
    		elseif ($log['role'] == 3) {
    			$_SESSION[WM_STAFF] = $log['url'];
    		}
    		elseif ($log['role'] == 4) {
    			$_SESSION[WM_CLIENT] = $log['url'];
    		}
    		#echo "<pre>"; print_r($_SESSION); die;
            $result['msg'] = 'Good, proceed';
        }
        else{
            $result['msg'] = 'Error login in. Try again.';
        }

        header('Content-type: application/json');
        echo json_encode($result);
	}

	function execute(){
		$q = trim(filter_input(INPUT_GET, 'query'));
		switch (isset($q) ? $q : NULL) {
			case NULL:
				$this->displayLoginPage();
			break;
			case 'login';
				$this->loginUsr();
			break;			
			default:
			    if(!isset($_SESSION[WM_SYSADMIN])){
			        $this->displayLoginPage();
                }
			break;
		}
	}
}