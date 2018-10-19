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
require_once __ROOT__ . "/smarty/libs/Smarty.class.php";

class BaseService extends smarty{
  #use Connector;

  //Create a user interface to automatically load this part
  private $DBhost = DBHOST;
  private $DBname = DBNAME;
  private $DBuser = DBUSER;
  private $DBpwd  = DBPWD;
  
  public $conn;

  function __construct(){
    //Initialize all the basics configs here toi run automatically on firing up the System
    #smarty fire!!
    #now smarty inits
    parent::__construct();

    $this->template_dir = __SYS__ . '/templates/';
    $this->compile_dir = __SYS__ . '/templates_c/';
    $this->cache_dir = __SYS__ . '/cache/';
    $this->config_dir = __SYS__ . '/configs/';

    #db connection
    $this->dbConnection();

    #get signed in user
    if(isset($_SESSION[WM_SYSADMIN])){
        #get user by url
        $this->assign('uID', $_SESSION[WM_SYSADMIN]);
    }
    elseif(isset($_SESSION[WM_ADMIN])){
        #get user by url
        $this->assign('uID', $_SESSION[WM_ADMIN]);
    }
    elseif(isset($_SESSION[WM_STAFF])){
        #get user by url
        $this->assign('uID', $_SESSION[WM_STAFF]);
    }
    elseif(isset($_SESSION[WM_CLIENT])){
        #get user by url
        $this->assign('uID', $_SESSION[WM_CLIENT]);
    }

    #diable caching
    $this->caching = false;

    #killing debugging
    $this->debugging = false;
    
    $this->assign('app', $this->getApp());
    #echo'<pre>'; print_r($this->getApp()); die;
    
    #Registering our trucommerce session
    $cart = $_SESSION['trucommerce_cart'];
    $total = $_SESSION['total_amount'];
    #echo'<pre>'; print_r($cart); die;
    
    $this->assign('pCounter', $_SESSION['p_counter']);
    $this->assign('totalAmount', $total);
    $this->assign('cartCounter', count($cart));
    $this->assign('cart', $cart);


    $pays = $this->getPaymentInfo();
    $this->assign('pays', $pays);
    #echo'<pre>'; print_r($pays); die;

    $ship = $this->getShippingInfo();
    $this->assign('ship', $ship);
    #echo'<pre>'; print_r($ship); die;

    #Counties 
    $counties = $this->getCounties();
    $this->assign('counties', $counties);
    #echo'<pre>'; print_r($ship); die;

    #path to cdn

    #assign app name
    $this->assign('appName', APP_NAME);

    $this->assign("cdn", CDN, false);

    #path to domain
    $this->assign("domain", WM_AD, false);

    #uploads url
    $this->assign('uploads', WAKAKA_UPLOADS);

    #assign copyrights
    $this->assign('copyright', COPYRIGHT);

    #Get into the system manipulations
    $this->assign('globals', array(
          'admin' => [
            'login' => Controller::ADMIN_LOGIN_USR
          ],
          'dashboard' => [
              'main' => Controller::SYSADMIN_DASHBOARD
          ],
          'staff' => [
             'new' => Controller::NEW_STAFF,
             'add' => Controller::ADD_NEW_STAFF,
             'profile' => Controller::ADMIN_STAFF_PROFILE,
             'update' => Controller::UPDATE_STAFF_PROFILE,
             'sysadmins' => Controller::ALL_SYSTEM_SYSADMINS,
             'admins' => Controller::ALL_SYSTEM_ADMINS,
             'all' => Controller::ALL_SYSTEM_STAFF
          ],
          'client' => [],
          'cat' => [],
          'prod' => [],
          'cart' => [],
          'order' => [],
          'sales' => [],
          'promotion' => [],
          'landing' => []
    ));
  }

  public function dbConnection(){
    $this->conn = null;
    try {
      $this->conn = new PDO("mysql:host=" . $this->DBhost .";port=3306; dbname=" . $this->DBname, $this->DBuser, $this->DBpwd);
      $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
    catch (PDOException $e) {
      echo "connection error: " .$e->getMessage();
    }

    return $this->conn;
  }

  //run db query against the given variables
  public function runQuery($sql){
    return $this->conn->prepare($sql);
  }

  //return the last queried table id from the db
  public function lastID(){
    return $this->conn->lastInsertId();
  }
  
  /*THIS SECTION HANDLES UPDATING THIS APP'S BASIC CONFIGURATIONS AND INFORMATION*/
  public function getApp(){
      try{
          $q = "SELECT * FROM app";
          $stmt = $this->runQuery($q);
          $stmt->execute();
          $result = $stmt->fetch(PDO::FETCH_ASSOC);
      }
      catch(PDOException $e){
          $result = $e->getMessage();
      }
      
      return $result;
  }

  public function getCounties(){
    try{
        $q = "SELECT code, title FROM county";
        $stmt = $this->runQuery($q);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    catch(PDOException $e){
        $result = $e->getMessage();
    }
    
    return $result;
  }

  public function getPaymentInfo(){
    try{
        $q = "SELECT * FROM payment_method";
        $stmt = $this->runQuery($q);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    catch(PDOException $e){
        $result = $e->getMessage();
    }
    
    return $result;
  }

  public function getShippingInfo(){
    # code...
    try{
        $q = "SELECT * FROM shipping";
        $stmt = $this->runQuery($q);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    catch(PDOException $e){
        $result = $e->getMessage();
    }
    
    return $result;
  }
  
  public function insertName($appName){
      try{
          $stmt = $this->runQuery("insert into app(name) values (:name)");
	    $stmt->bindParam(':name', $appName);
	    $stmt->execute();

	    $result = $this->lastID();
      }
      catch(PDOException $e){
          $result = $e->getMessage();
      }
      
      return $result;
  }
  
  public function updateName($appName){
    try{
        $qry = "UPDATE app SET name = :name WHERE id =1";
        $stmt = $this->conn->prepare($qry);
        $stmt->bindParam(":name", $appName, PDO::PARAM_STR);
        $stmt->execute();
        
        $result = $stmt->rowCount();
    }
    catch(PDOException $e){
        $result = $e->getMessage();
    }
    
    return $result;
  }
  
  public function updateIntroduction($aboutUs){
    try{
      $qry = "UPDATE app SET introduction = :intro WHERE id =1";
      $stmt = $this->conn->prepare($qry);
      $stmt->bindParam(":intro", $aboutUs, PDO::PARAM_STR);
      $stmt->execute();
      
      $result = $stmt->rowCount();
    }
    catch(PDOException $e){
      $result = $e->getMessage();
    }
    
    return $result;
  }

  public function updateCompanyCurrency($currency){
    try{
      $qry = "UPDATE app SET currency = :curr WHERE id = 1";
      $stmt = $this->conn->prepare($qry);
      $stmt->bindParam(":curr", $currency, PDO::PARAM_STR);
      $stmt->execute();

      $resp = $stmt->rowCount();
    }
    catch(PDOException $e){
      $resp = $e->getMessage();
    }

    return $resp;
  }
  
  public function updateContacts($email, $phone, $address, $city, $fb, $tw, $insta, $gp, $pin, $ln){
    try{
      $qry = "UPDATE app SET email = :email, phone = :phone, address = :address, city = :city, fb = :fb, tw = :tw, insta = :insta, gp = :gp, pin = :pin, ln = :ln WHERE id =1";
      $stmt = $this->conn->prepare($qry);
      $stmt->bindParam(":email", $email, PDO::PARAM_STR);
      $stmt->bindParam(":phone", $phone, PDO::PARAM_STR);
      $stmt->bindParam(":address", $address, PDO::PARAM_STR);
      $stmt->bindParam(":city", $city, PDO::PARAM_STR);
      $stmt->bindParam(":fb", $fb, PDO::PARAM_STR);
      $stmt->bindParam(":tw", $tw, PDO::PARAM_STR);
      $stmt->bindParam(":insta", $insta, PDO::PARAM_STR);
      $stmt->bindParam(":gp", $gp, PDO::PARAM_STR);
      $stmt->bindParam(":pin", $pin, PDO::PARAM_STR);
      $stmt->bindParam(":ln", $ln, PDO::PARAM_STR);
      $stmt->execute();
      
      $result = $stmt->rowCount();
    }
    catch(PDOException $e){
      $result = $e->getMessage();
    }
    
    return $result;
  }
  
  public function getServices(){
    try{
      $q = "SELECT * FROM services";
      $stmt = $this->runQuery($q);
      $stmt->execute();
      $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    catch(PDOException $e){
      $result = $e->getMessage();
    }
    
    return $result;
  }
  
  public function removeService($sid){
    try{
      $q = 'DELETE FROM services WHERE id = :id';
      $stmt = $this->runQuery($q);
      $results = $stmt->execute([':id' =>  $sid]);
    }
    catch(PDOException $e){
      $results = $e->getMessage();
    }
    
    return $results;
  }
  
  public function insertService($title, $descr){
    try{
      $stmt = $this->runQuery("insert into services(title, description, created_at) values (:title, :description, now())");
    $stmt->bindParam(':title', $title);
    $stmt->bindParam(':description', $descr);
    $stmt->execute();

    $result = $this->lastID();
    }
    catch(PDOException $e){
        $result = $e->getMessage();
    }
    
    return $result;
  }
  
  public function updateService($id, $title, $descr){
    try{
      $qry = "UPDATE services SET title = :title, description = :descr WHERE id = ".$id;
      $stmt = $this->conn->prepare($qry);
      $stmt->bindParam(":tilte", $title, PDO::PARAM_STR);
      $stmt->bindParam(":descr", $description, PDO::PARAM_STR);
      $stmt->execute();
      
      $result = $stmt->rowCount();
    }
    catch(PDOException $e){
        $result = $e->getMessage();
    }
    
    return $result;
  }
  
  public function insertMessage($name, $email, $phone, $subject, $message, $status){
    try{
      $stmt = $this->runQuery("insert into contactUs(name, email, phone, subject, message, status, created_at) values (:name, :email, :phone, :subject, :message, :status, now())");
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':phone', $phone);
    $stmt->bindParam(':subject', $subject);
    $stmt->bindParam(':message', $message);
    $stmt->bindParam(':status', $status);
    $stmt->execute();

    $result = $this->lastID();
    }
    catch(PDOException $e){
        $result = $e->getMessage();
    }
    
    return $result;
  }
  
  public function getMessages(){
    try{
      $q = "SELECT * FROM contactUs";
      $stmt = $this->runQuery($q);
      $stmt->execute();
      $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    catch(PDOException $e){
      $result = $e->getMessage();
    }
    
    return $result;
  }
  
  public function getMessage($mid){
    try{
      $q = "SELECT * FROM contactUs WHERE id = :id";
      $stmt = $this->runQuery($q);
      $stmt->execute([':id' => $mid]);
      $result = $stmt->fetch(PDO::FETCH_ASSOC);
    }
    catch(PDOException $e){
      $result = $e->getMessage();
    }
    
    return $result;
  }
  
  /*END*/

  /**
   * @param $url
   * @return mixed|string
  */
  protected function getAdminBy($url){
    try{
      $sql = "SELECT * FROM staff WHERE url=:url";
      $stmt = $this->runQuery($sql);
      $stmt->execute([':url' => $url]);
      $results = $stmt->fetch(PDO::FETCH_ASSOC);
    }catch(PDOException $e){
          $results = $e->getMessage();
    }

    return $results;
  }

  protected function getClients(){
    try{
      $q = "SELECT * FROM client";
      $stmt = $this->runQuery($q);
      $stmt->execute();
      $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    catch (PDOException $e){  
        $results = $e->getMessage();
    }

    return $results;
  }

  protected function pullProducts(){
    try{
        $q = "SELECT * FROM product";
        $stmt = $this->runQuery($q);
        $stmt->execute();
        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
    catch (PDOException $e){
        $results = $e->getMessage();
    }

    return $results;
  }
}
