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

class DashboardController extends InventoryService implements Controller{
	function __construct(){
		parent::__construct();
	}

	private function displayDashboard(){
        // echo "<pre>"; print_r($_SESSION); die;
        #now get user by url
        $url = $_SESSION['_les_admin'];
        $user = $this->getStaffByUrl($url);
        $modelsrv = new ModelService();
	    $blogsrv = new BlogService();
	    
	    $orders = $this->getOrders();
	    #echo'<pre>'; print_r($orders); die;
	    
	    $this->assign('orders', $orders);
        
        #the get and assig user role to a variable for the next step...
        #now display system admin dashboard
        $this->assign('orders', $orders);
        $this->assign('orderCount', count($orders));
        $this->assign('categories', count($this->getCategories()));
        $this->assign('messages', count($this->getMessages()));
        $this->assign('events', count($blogsrv->getEvents()));
        $this->assign('blogs', count($blogsrv->getBlogs()));
        $this->assign('models', count($modelsrv->getModels()));
        $this->assign('sysadmins', count($this->getStaffBy(1)));
        $this->assign('admins', count($this->getStaffBy(2)));
        $this->assign('staff', count($this->getStaffBy(3)));
        $this->assign('clients', count($this->getClients()));
        $this->assign('products', count($this->pullProducts()));
        if($user['role'] === 1){
            $this->assign('user', 'systemadmin');   
            $this->assign('title', 'System Admin Dashboard');   
        }
        elseif($user['role'] === 2){
            $this->assign('user', 'admin');   
            $this->assign('title', 'General Manager Dashboard');
        }

        $this->assign('title', 'Welcome to TruCommerce!');
        $this->display('dashboard/tachometer.tpl');
    }
    
    private function displayMessages(){
        #echo'<pre>'; print_r($_REQUEST); die;
        $this->assign('title', 'Messages');
        $this->display('dashboard/messages.tpl');
    }

	function execute(){
        // TODO: Implement execute() method.
        $q = trim(filter_input(INPUT_GET, 'query'));
        switch (isset($q) ? $q : NULL){
            case '':
            case 'main':
                $this->displayDashboard();
                break;
            case 'messages':
                $this->displayMessages();
                break;
            default:
                die('Dashboard query error 404');
                break;
        }
    }
}