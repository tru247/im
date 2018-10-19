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

class ClientController extends ClientService implements Controller{
	function __construct(){
		parent::__construct();
	}

	private function newClient(){
	    #get user ip address
        $this->assign('ipAddress', Utils::getClientIpServer());
	    $this->assign('title', 'Add Client Form');
	    $this->display('clients/new.tpl');
    }

    private function addClient(){
	    #get inputs
        $fname = trim(filter_input(INPUT_POST, 'fname'));
        $lname = trim(filter_input(INPUT_POST, 'lname'));
        $mail = trim(filter_input(INPUT_POST, 'email'));
        $phone = trim(filter_input(INPUT_POST, 'phone'));
        $pwd = trim(filter_input(INPUT_POST, 'pwd'));
        $pwd = password_hash($pwd, PASSWORD_DEFAULT);
        $estate = trim(filter_input(INPUT_POST, 'estate'));
        $town = trim(filter_input(INPUT_POST, 'town'));
        $county = trim(filter_input(INPUT_POST, 'county'));
        $country = trim(filter_input(INPUT_POST, 'country'));
        $bank_details = trim(filter_input(INPUT_POST, 'bank_details'));

        #get ip address
        $ipAddress = Utils::getClientIpServer();

        #generate url and client reference
        $url = '';
        $stitch = Utils::generateRandomString($url);
        $url = Utils::generateSlug($stitch);

        $ref = 'CLI';
        $ref = Utils::referenceGenerator($ref);

        $result = [];

        #but first check if client exists
        if(!$this->clientExists($mail, $phone)){
            if($this->insertClient($fname, $lname, $url, $ref, $mail, $phone, $pwd, $ipAddress, $estate, $town, $county, $country, $bank_details)) {
                $result['msg'] = 'Success';
                $result['url'] = $url;
                $result['info'] = 'Success.' . $fname . ' has been successfully added.';
            }
        }
        else{
            $result['msg'] = 'Client already exists!';
        }

        #return result
        header('Content-type: application/json');
        echo json_encode($result);
    }

    private function allClients(){
        $this->assign('users', $this->getClients());
        $this->display('clients/all.tpl');
    }

    private function clientProfile(){
        $info = trim(filter_input(INPUT_GET, 'info'));
        $client = $this->getClientBy($info);
        $this->assign('url', $info);
        $this->assign('client', $client);
        $this->assign('title', 'Client Profile');
        $this->display('clients/profile.tpl');
    }

    private function editProfile(){
        echo '<pre>'; print_r($_REQUEST); die;
    }

    private function updateProfile(){
        echo '<pre>'; print_r($_REQUEST); die;
    }

    private function deleteProfile(){
        echo '<pre>'; print_r($_REQUEST); die;
    }

	function execute(){
	    $q = trim(filter_input(INPUT_GET, 'query'));
	    switch (isset($q) ? $q : NULL){
            case 'new':
                $this->newClient();
                break;
            case 'add':
                $this->addClient();
                break;
            case 'all':
                $this->allClients();
                break;
            case 'profile':
                $this->clientProfile();
                break;
            case 'edit':
                $this->editProfile();
                break;
            case 'update':
                $this->updateProfile();
                break;
            case 'delete':
                $this->deleteProfile();
                break;
	        default:
                die('Client error 404: Page not found');
                break;
        }
    }
}