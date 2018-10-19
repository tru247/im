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

class OrderController extends InventoryService implements Controller{
	function __construct(){
		parent::__construct();
	}
	
	private function displayOrders(){
	    $orders = $this->getOrders();
	    #echo'<pre>'; print_r($orders); die;
	    
	    $this->assign('orders', $orders);
	    $this->display('order/all.tpl');
	}
	
	private function viewOrder(){
	    $iurl = trim(filter_input(INPUT_GET, 'info'));
	    $invoice = $this->getOrderByUrl($iurl);
	    $invoiceNo = $invoice[0]['ref'];
	    $cid = $invoice[0]['clientId'];
	    $paymode = $invoice[0]['paymentMode'];
	    $total = $invoice[0]['total'];
	    $client = $this->getClientById($cid);
	    $status =$invoice[0]['status'];
	    #echo'<pre>'; print_r($invoice); die;
	    
	    $this->assign('ourl', $iurl);
	    $this->assign('status', $status);
	    $this->assign('total', $total);
	    $this->assign('paymethod', $paymode);
	    $this->assign('date', $invoice[0]['created_at']);
	    $this->assign('c', $client);
	    $this->assign('invoiceno', $invoiceNo);
	    $this->assign('invoice', $invoice);
	    $this->display('order/profile.tpl');
	}
	
	private function confirmPayment(){
	    $ourl = trim(filter_input(INPUT_GET, 'info'));
	    $paymode = trim(filter_input(INPUT_POST, 'paymode'));
	    $txncode = trim(filter_input(INPUT_POST, 'txncode'));
	    $status = trim(filter_input(INPUT_POST, 'status'));
	    
	    $update = $this->updateOrder($ourl, $paymode, $txncode, $status);
	    if($update > 0){
	        $result['msg'] = 'Success';
	    }
	    else{
	        $result['msg'] = 'Failed';
	    }

        header('Content-type: application/json');
        echo json_encode($result);
	}

    ######################################
	private function newOrder(){
		$this->display("order/new.tpl");
	}

	private function placeOrder(){
		#get all order iput requests from the client...

		#generate a new url and order reference number...

		#save this order in te db, then send a notification to the general manager and system admin (1. email 2. sms)

		#server response to the client side jsonification here
		echo "<pre>"; print_r($_REQUEST); die;
	}

	private function allOrders(){
		#if staff is logged in dont show the new orders else show all
		$this->display('order/all.tpl');
	}

	private function orderProfile(){
		$this->display('order/profile.tpl');
	}

	private function assignOrder(){
		#get order url

		#assign new status as per the GM's input...
		echo "<pre>"; print_r($_REQUEST); die;
	}

	private function invoiceOrder(){
		#do the invoice CRUDS in the inventory service
		echo "<pre>"; print_r($_REQUEST); die;
	}

	private function displayInvoice(){
		$orderUrl = '';
		$this->assign('orderUrl', $orderUrl);
	}

	private function paymentReceipt(){
		echo "<pre>"; print_r($_REQUEST); die;
	}	

	private function archiveOrder(){
		echo "<pre>"; print_r($_REQUEST); die;
	}

	function execute(){
		$q = trim(filter_input(INPUT_GET, 'query'));
		switch (isset($q) ? $q : NULL) {
		    case NULL:
		        $this->displayOrders();
		        break;
		    case 'profile':
		        $this->viewOrder();
		        break;
		    case 'confirm-pay':
		        $this->confirmPayment();
		        break;
			default:
				die('Order query error 404!');
				break;
		}
	}
}