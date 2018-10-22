<?php
/**
 * Created by PhpStorm.
 * User: user
 * Date: 8/8/2017
 * Time: 6:35 AM
 */

class CartController extends InventoryService implements Controller {
    function __construct(){
        parent::__construct();
    }

    private function manageCart(){
        #echo "<pre>"; print_r($_REQUEST); die;
        #get the id
        $pid = trim(filter_input(INPUT_POST, 'pid'));
        $pqty = trim(filter_input(INPUT_POST, 'pqty'));
        $purl = trim(filter_input(INPUT_POST, 'purl'));

        $pCounter = $_SESSION['p_counter'];
        $pCounter = $pCounter + $pqty;

        if(isset($pid)) {
            foreach($_POST as $key => $value){
                $product[$key] = filter_var($value, FILTER_SANITIZE_STRING);
            }
            #echo "<pre>"; print_r($product); die;

            #get product by id as you add
            $q = "SELECT url, name, image, price FROM product WHERE id=:id LIMIT 1";
            $stmt = $this->runQuery($q);
            $stmt->bindParam(':id', $product['pid'], PDO::PARAM_INT);
            $stmt->execute();
            $exists = $stmt->fetch();
            #echo'<pre>'; print_r($product); die;

            $total = $_SESSION['total_amount'];
            $subtotal = $product["pprice"] * $pqty;
            if(isset($_SESSION["trucommerce_cart"]) && !empty($_SESSION["trucommerce_cart"])){
                if(isset($_SESSION["trucommerce_cart"][$product['pid']])) {
                    $_SESSION["trucommerce_cart"][$product['pid']]["pqty"] = $_SESSION["trucommerce_cart"][$product['pid']]['pqty'] + $pqty;
                } else {
                    $_SESSION["trucommerce_cart"][$product['pid']] = $product;
                }
            } else {
                $_SESSION["trucommerce_cart"][$product['pid']] = $product;
            }

            $total_amount = $total + $subtotal;
            $_SESSION['total_amount'] = $total_amount;

            $_SESSION['p_counter'] = $pCounter;
            #echo "<pre>"; print_r($_SESSION["trucommerce_cart"]);die;

            $total_product = count($_SESSION["trucommerce_cart"]);

            header('Content-type: application/json');
            echo json_encode(['trucommerce_cart' => $total_product]);
        }
    }

    public function displayCart(){
        $cart = $_SESSION['trucommerce_cart'];
	    $cats = $this->getCategories();
        #echo'<pre>'; print_r($_SESSION); die;

        $this->assign('le_grand_total', $_SESSION['total_amount']);
        $this->assign('cats', $cats);
        $this->assign('cart', $cart);
        $this->assign('title', 'Shopping Cart');
        $this->display('cart/main.tpl');
    }

    public function updateCart(){
        echo'<pre>'; print_r($_REQUEST); die;
    }

    public function displayCheckout(){
        $cart = $_SESSION['trucommerce_cart'];
	    $cats = $this->getCategories();
        #echo'<pre>'; print_r($cart); die;

        $this->assign('cats', $cats);
        $this->assign('cart', $cart);
        $this->assign('title', 'Checkout');
        $this->display('cart/checkout.tpl');
    }

    public function placeOrder(){
        #first, define results holder
        $results = [];

        $checkedTerms = trim(filter_input(INPUT_POST, 'terms'));
        if(isset($checkedTerms) && $checkedTerms == 'on'){
            #auto generate client url and get the form client inputs
            $usrUrl = Utils::generateRandomString('');
            $name = trim(filter_input(INPUT_POST, 'name')); // trim(filter_input(HTTP_REQUEST_CMD: INPUT_POST; INPUT_GET, INPUT_DELETE, INPUT_PUT, 'form_input'));
            $email = trim(filter_input(INPUT_POST, 'email'));
            $phone = trim(filter_input(INPUT_POST, 'phone'));
            $ship_addr = trim(filter_input(INPUT_POST, 'ship_addr'));
            $ship_town = trim(filter_input(INPUT_POST, 'ship_town'));
            $ship_county = trim(filter_input(INPUT_POST, 'ship_county'));
            $ship_code = trim(filter_input(INPUT_POST, 'ship_code'));

            #Now, save the client halafu return the client ID
            $clientsrv = new ClientService();
            $clientId = $clientsrv->insertClient($usrUrl, $name, $email, $phone, $ship_addr, $ship_town, $ship_county, $ship_code);
            #echo'<pre>'; print_r($clientId); die;
            if($clientId > 0){
                #now get the client id and store it together with order information in the order tbl;
                #First, create an order reference id, save the order with the client id in consideration
                $ourl = Utils::generateRandomString('');
                $oref = Utils::referenceGenerator('ORDER-');
                #echo "<pre>"; print_r($ourl);
                #echo "<pre>"; print_r($oref); die;
                #Get order details from the session array and store them in the db with order url and reference

                $shipping = trim(filter_input(INPUT_POST, 'shipping'));
                $payment = trim(filter_input(INPUT_POST, 'payment'));
                $status = 'new';
                $total = $_SESSION['total_amount'];
                #echo "<pre>"; print_r($_SESSION['trucommerce_cart']);die;

                $i = 0;
                foreach ($_SESSION['trucommerce_cart'] as $val) {
                    $pname = $val['pname'];
                    $pimage = $val['pimage'];
                    $pprice = $val['pprice'];
                    $pqty = $val['pqty'];
                    $subtotal = $pprice * $pqty;

                    $orderId = $this->insertOrder($ourl, $oref, $clientId, $pname, $pimage, $pprice, $pqty, $subtotal, $total, $payment, $shipping, $status);
                    $i++;
                }

                #return formated json repsonse for the UI for presentation to the client
                if ($orderId > 0) {
                    unset($_SESSION['trucommerce_cart']);
                    unset($_SESSION['total_amount']);
                    unset($_SESSION['p_counter']);
                    $results['msg'] = "Your order has been successfully placed!";
                    $results['url'] = '/cart/thanks';
                }
                else{
                    $results['msg'] = "Your order has not been successfully placed!";
                }

                #now send email
                //$to = $email;

                #Subject
                //$subject = 'eMboga.co.ke Order #'.$oref. ' Confirmation';

                #Message
                // $message = '
                //     <html>
                //     <head>
                //       <title>eMboga.co.ke Order #'.$oref. ' Confirmation</title>
                //     </head>
                //     <body>
                //       <p>Hi '.$fname.',</p>
                //       <p>We have successfully received your order no. <strong>'.$oref.'.</strong> Our customer care agents will get in contact with you as soon as possible.</p>

                //       <p>Thanks for doing business with us.</p>
                //       <p>-----------------------------------------------------------------------------</p>
                //       <p>Best regards,</p>
                //       <h2>TEAM eMboga.co.ke</h2>

                //     </body>
                //     </html>
                // ';

                #To send HTML mail, the Content-type header must be set
                //$headers[] = 'MIME-Version: 1.0';
                //$headers[] = 'Content-type: text/html; charset=iso-8859-1';

                #Additional headers
                //$headers[] = 'Cc: sales@emboga.co.ke';
                //$headers[] = 'Cc: sales@trulancetechnologies.com';

                #Mail it
                //$mail = mail($to, $subject, $message, implode("\r\n", $headers));
                #echo'<pre>'; print_r($mail); die;

                // if($mail){
                    // unset($_SESSION['trucommerce_cart']);
                    // unset($_SESSION['total_amount']);

                //     header("Location: /cart/thanks");
                // }
            }
            else{
                $results['msg'] = "User not inserted!";
            }

            header('Content-type: application/json');
            echo json_encode($results);
        }
    }

    private function thanksNote(){
        #unset($_SESSION['p_counter']);
        #echo "<pre>"; print_r($_SESSION); die;
	    $cats = $this->getCategories();

        $this->assign('cats', $cats);
        $this->assign('title', 'Thank you');
        $this->display('cart/thanks.tpl');
    }

    function execute(){
        $q = trim(filter_input(INPUT_GET, 'query'));
        switch (isset($q) ? $q : NULL){
            case NULL:
                $this->displayCart();
                break;
            case 'manage':
                $this->manageCart();
                break;
            case 'update':
                $this->updateCart();
                break;
            case 'checkout':
                $this->displayCheckout();
                break;
            case 'place-order':
                $this->placeOrder();
                break;
            case 'thanks':
                $this->thanksNote();
                break;
            default:
                die('Cart query error 404; Page cannot be found');
                break;
        }
    }
}
