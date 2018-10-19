<?php
/**
 * Created by PhpStorm.
 * User: user
 * Date: 8/2/2017
 * Time: 2:52 PM
 */

class ClientService extends UserService {
    function __construct(){
        parent::__construct();
    }

    #Create client

    /**
     * @param $fname
     * @param $lname
     * @param $url
     * @param $ref
     * @param $mail
     * @param $phone
     * @param $pwd
     * @param $ip
     * @param $estate
     * @param $town
     * @param $county
     * @param $country
     * @param $bank
     * @return string
     */
    public function insertClient($usrUrl, $name, $email, $phone, $ship_addr, $ship_town, $ship_county, $ship_code){
        try {
            $stmt = $this->runQuery("insert into client(url, fname, email, phone, shipping_address, shipping_town, shipping_county, shipping_postcode, created_at) values (:url, :name, :email, :phone, :ship_addr, :ship_town, :ship_county, :ship_code, now())");
            $stmt->bindParam(':url', $usrUrl);
            $stmt->bindParam(':name', $name);
            $stmt->bindParam(':email', $email);
            $stmt->bindParam(':phone', $phone);
            $stmt->bindParam(':ship_addr', $ship_addr);
            $stmt->bindParam(':ship_town', $ship_town);
            $stmt->bindParam(':ship_county', $ship_county);
            $stmt->bindParam(':ship_code', $ship_code);
            $stmt->execute();

            $result = $this->lastID();
        }
        catch (PDOException $e) {
            $result = $e->getMessage();
        }
        return $result;
    }

    /**
     * @param $email
     * @param $phone
     * @return mixed
     */
    protected  function clientExists($email, $phone){
        try{
            $stmt = $this->conn->prepare("SELECT * FROM client WHERE email=:email_id OR phone=:phone");
            $stmt->execute([
                    ":email_id"=>$email,
                    ":phone" => $phone
                ]
            );
            $staff = $stmt->fetch(PDO::FETCH_ASSOC);

            return $staff;
        }
        catch(PDOException $e){
            die("Error: " .$e->getMessage());
        }
    }
    
    protected function getClientBy($url){
        try{
            $sql = "SELECT * FROM client WHERE url=:url";
            $stmt = $this->runQuery($sql);
            $stmt->execute([':url' => $url]);
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
        }
        catch(PDOException $e){
            $result = $e->getMessage();
        }

        return $result;
    }
}