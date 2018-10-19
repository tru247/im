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
| Copyright (c) 2013-2018, C.E.O Otieno. All Rights Reserved.                |
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
Class InventoryService extends UserService{
	function __construct(){
		parent::__construct();
	}

    #PrintingShop Services
    protected function insertPrintingOrder($url, $due, $client, $email, $phone, $company, $instructions, $photoStore, $status){
        try{
            $stmt = $this->runQuery("insert into printer(url, due_date, client, email, phone, company, description, file, status, created_at)values (:url, :due, :client, :email, :phone, :company, :instructions, :photoStore, :status, now())");
            $stmt->bindParam(':url', $url);
            $stmt->bindParam(':due', $due);
            $stmt->bindParam(':client', $client);
            $stmt->bindParam(':email', $email);
            $stmt->bindParam(':phone', $phone);
            $stmt->bindParam(':company', $company);
            $stmt->bindParam(':instructions', $instructions);
            $stmt->bindParam(':photoStore', $photoStore);
            $stmt->bindParam(':status', $status);
            $stmt->execute();

            $resp = $this->lastID();
        }
        catch(PDOException $e){
            $resp = $e->getMessage();
        }

        return $resp;
    }

    protected function insertQuote($url, $client, $email, $phone, $service, $qty, $msg, $status){
        try{
            $stmt = $this->runQuery("insert into quote (url, client, email, phone, service, qty, msg, status, created_at) values(:url, :client, :email, :phone, :service, :qty, :msg, :status, now())");
            $stmt->bindParam(':url', $url);
            $stmt->bindParam(':client', $client);
            $stmt->bindParam(':email', $email);
            $stmt->bindParam(':phone', $phone);
            $stmt->bindParam(':service', $service);
            $stmt->bindParam(':qty', $qty);
            $stmt->bindParam(':msg', $msg);
            $stmt->bindParam(':status', $status);
            $stmt->execute();

            $resp = $this->lastID();
        }
        catch(PDOException $e){
            $resp = $e->getMessage();
        }

        return $resp;
    }

	#Category
	protected function insertCategory($name, $url, $ref, $parent, $description){
        try {
            $stmt = $this->runQuery("insert into category(name, url, ref, parent, description, created_at)
                                         values (:name, :url, :ref, :parent, :desc, now())");
            $stmt->bindParam(':name', $name);
            $stmt->bindParam(':url', $url);
            $stmt->bindParam(':ref', $ref);
            $stmt->bindParam(':parent', $parent);
            $stmt->bindParam(':desc', $description);
            $stmt->execute();

            $result = $this->lastID();
        }
        catch (PDOException $e) {
            $result = $e->getMessage();
        }
        return $result;
    }

	protected function getCategoryByUrl($url){
	    try{
	        $q = "SELECT * FROM category WHERE url=:url";
	        $stmt = $this->runQuery($q);
	        $stmt->execute([":url" => $url]);
	        $results = $stmt->fetch(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
	        $results = $e->getMessage();
        }

        return $results;
    }

	protected function getCategoryByRef($ref){
	    try{
	        $q = "SELECT * FROM category WHERE ref=:ref";
	        $stmt = $this->runQuery($q);
	        $stmt->execute([":ref" => $ref]);
	        $results = $stmt->fetch(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
	        $results = $e->getMessage();
        }

        return $results;
    }

	public function getCategories(){
	    try{
	        $q = "SELECT * FROM category ORDER BY id ASC";
	        $stmt = $this->runQuery($q);
	        $stmt->execute();
	        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
	        $results = $e->getMessage();
        }

        return $results;
    }

    protected function removeCategory($cid){
        try{
	        $q = 'DELETE FROM category WHERE id = :id';
	        $stmt = $this->runQuery($q);
	        $results = $stmt->execute([':id' =>  $cid]);
	    }
	    catch(PDOException $e){
            $results = $e->getMessage();
	    }
	    
	    return $results;
    }

    #Product
    protected function insertProduct($url, $sku, $name, $summary, $cat, $status, $price, $commission, $discount, $descr, $metatitle, $metakey, $image, $brand, $delivery, $stock){
    	try {
            $stmt = $this->runQuery("insert into product(url, sku, name, summary, cat, status, price, commission, discount, description, metaTitle, metaKey, image, brand, deliveryCondition, stock, created_at)
                values (:url, :sku, :name, :sum, :cat, :status, :price, :commission, :discount, :descr, :metatitle, :metakey, :img, :brand, :delivery, :stock, now())");
            $stmt->bindParam(':url', $url);
            $stmt->bindParam(':sku', $sku);
            $stmt->bindParam(':name', $name);
            $stmt->bindParam(':sum', $summary);
            $stmt->bindParam(':cat', $cat);
            $stmt->bindParam(':status', $status);
            $stmt->bindParam(':price', $price);
            $stmt->bindParam(':commission', $commission);
            $stmt->bindParam(':discount', $discount);
            $stmt->bindParam(':descr', $descr);
            $stmt->bindParam(':metatitle', $metatitle);
            $stmt->bindParam(':metakey', $metakey);
            $stmt->bindParam(':img', $image);
            $stmt->bindParam(':brand', $brand);
            $stmt->bindParam(':delivery', $delivery);
            $stmt->bindParam(':stock', $stock);
            $stmt->execute();

            $result = $this->lastID();
        }
        catch (PDOException $e) {
            $result = $e->getMessage();
        }
        return $result;
    }
    
    protected function insertProductImg($sku, $imgUrl, $ref){
        try {
            $stmt = $this->runQuery("insert into product(sku, imgUrl, ref, created_at)
                                         values (:sku, :img, :ref, now())");
            $stmt->bindParam(':sku', $sku);
            $stmt->bindParam(':img', $imgUrl);
            $stmt->bindParam(':ref', $ref);
            $stmt->execute();

            $result = $this->lastID();
        }
        catch (PDOException $e) {
            $result = $e->getMessage();
        }
        return $result;
    }

    protected function updateProductPricePerTime($pId, $pPrice){
        try{
            $qry = "UPDATE product 
                    SET 
                        price = :pp,
                        updated_at = now()
                    WHERE 
                        id =:id";
            $stmt = $this->conn->prepare($qry);
            $stmt->bindParam(":pp", $pPrice, PDO::PARAM_STR);
            $stmt->bindParam(":id", $pId, PDO::PARAM_INT);
            $stmt->execute();
            $stmt = $stmt->rowCount();

            $result = $stmt;
        }
        catch(PDOException $e){
            $result = $e->getMessage();
        }
        return $result;
    }
    
	public function insertGallery($gurl, $pUrl, $photo){
	    try {
			$stmt = $this->runQuery("insert into gallery (url, productUrl, image, created_at)
                                         values (:url, :purl, :image, now())");
		    $stmt->bindParam(':url', $gurl);
		    $stmt->bindParam(':purl', $pUrl);
		    $stmt->bindParam(':image', $photo);
		    $stmt->execute();

		    $result = $this->lastID();
		}
		catch (PDOException $e) {
			$result = $e->getMessage();
		}
		return $result;
	}
	
	public function getProductGallery($purl){
	    try{
            $sql = 'SELECT * FROM gallery WHERE productUrl = :purl';
            $stmt = $this->runQuery($sql);
            $stmt->execute([':purl' => $purl]);
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
            $results = $e->getMessage();
        }

        return $results;
	}

    protected function getProductBySKU($sku){
        try{
            $q = "SELECT * FROM product WHERE sku=:sku";
            $stmt = $this->runQuery($q);
            $stmt->execute([":sku" => $sku]);
            $results = $stmt->fetch(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
            $results = $e->getMessage();
        }

        return $results;
    }

    public function getProductByURL($url){
        try{
            $q = "SELECT * FROM product WHERE url=:url";
            $stmt = $this->runQuery($q);
            $stmt->execute([":url" => $url]);
            $results = $stmt->fetch(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
            $results = $e->getMessage();
        }

        return $results;
    }

    public function findProdDetails($pUrl){
        try{
            $q = "SELECT * FROM product WHERE url = :url";
            $stmt = $this->runQuery($q);
            $stmt->execute([":url" => $pUrl]);
            $results = $stmt->fetch(PDO::FETCH_ASSOC);
        }
        catch(PDOException $e){
            $results = $e->getMessage();
        }

        return $results;
    }
    
    protected function getProductById($pid){
        try{
            $q = "SELECT * FROM product WHERE id=:id";
            $stmt = $this->runQuery($q);
            $stmt->execute([":id" => $pid]);
            $results = $stmt->fetch(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
            $results = $e->getMessage();
        }

        return $results;
    }

    protected function updateProductDetailsBySKU($sku, $url, $name, $summary, $desc, $metaTitle, $metaKey, $cat, $price, $disc, $status, $created_by){
        try{
            $qry = "UPDATE product 
                    SET 
                        name = :name,
                        url = :url,
                        summary = :summary,
                        description = :desc,
                        meta_title = :mtitle,
                        meta_keyword = :mkey,
                        category = :cat,
                        price = :price,
                        discount = :disc,
                        status = :status,
                        created_by = :creator,
                        updated_at = now()
                    WHERE 
                        sku =:sku";
            $stmt = $this->conn->prepare($qry);
            $stmt->bindParam(":sku", $sku, PDO::PARAM_STR);
            $stmt->bindParam(":name", $name, PDO::PARAM_STR);
            $stmt->bindParam(":url", $url, PDO::PARAM_STR);
            $stmt->bindParam(":summary", $summary, PDO::PARAM_STR);
            $stmt->bindParam(":desc", $desc, PDO::PARAM_STR);
            $stmt->bindParam(":mtitle", $metaTitle, PDO::PARAM_STR);
            $stmt->bindParam(":mkey", $metaKey, PDO::PARAM_STR);
            $stmt->bindParam(":cat", $cat, PDO::PARAM_STR);
            $stmt->bindParam(":price", $price, PDO::PARAM_STR);
            $stmt->bindParam(":disc", $disc, PDO::PARAM_STR);
            $stmt->bindParam(":status", $status, PDO::PARAM_STR);
            $stmt->bindParam(":creator", $created_by, PDO::PARAM_STR);
            $stmt->execute();
            $stmt = $stmt->rowCount();

            $result = $stmt;
        }
        catch(PDOException $e){
            $result = $e->getMessage();
        }

        return $result;
    }
    
    protected function updateProductImg($pId, $photo){
        try{
            $qry = "UPDATE product SET image = :image, updated_at = now() WHERE id =:id";
            $stmt = $this->conn->prepare($qry);
            $stmt->bindParam(":id", $pId, PDO::PARAM_INT);
            $stmt->bindParam(":image", $photo, PDO::PARAM_STR);
            $stmt->execute();
            $stmt = $stmt->rowCount();

            $result = $stmt;
        }
        catch(PDOException $e){
            $result = $e->getMessage();
        }

        return $result;
    }
    
    public function getProducts(){
        try{
            $q = "SELECT * FROM product ORDER BY RAND()";
            $stmt = $this->runQuery($q);
            $stmt->execute();
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
            $results = $e->getMessage();
        }

        return $results;
    }
    
    public function getRandomFourProduct(){
	    try{
	        $q = "SELECT * FROM product ORDER BY RAND() LIMIT 4";
	        $stmt = $this->runQuery($q);
	        $stmt->execute();
	        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
	        $results = $e->getMessage();
        }

        return $results;
    }
    
    public function updateProduct($pid, $pname, $psummary, $cat, $status, $pprice, $commission, $discount, $pdescription, $metatitle, $metakey, $brand, $delivery, $stock){
        try{
            $qry = "UPDATE product 
                    SET 
                        name = :name,
                        summary = :summary,
                        description = :desc,
                        metaTitle = :mtitle,
                        metaKey = :mkey,
                        cat = :cat,
                        price = :price,
                        discount = :disc,
                        status = :status,
                        brand = :brand,
                        deliveryCondition = :delivery,
                        stock = :stock,
                        updated_at = now()
                    WHERE 
                        id =:id";
            $stmt = $this->conn->prepare($qry);
            $stmt->bindParam(":id", $pid, PDO::PARAM_INT);
            $stmt->bindParam(":name", $pname, PDO::PARAM_STR);
            $stmt->bindParam(":summary", $psummary, PDO::PARAM_STR);
            $stmt->bindParam(":desc", $pdescription, PDO::PARAM_STR);
            $stmt->bindParam(":mtitle", $metatitle, PDO::PARAM_STR);
            $stmt->bindParam(":mkey", $metakey, PDO::PARAM_STR);
            $stmt->bindParam(":cat", $cat, PDO::PARAM_STR);
            $stmt->bindParam(":price", $pprice, PDO::PARAM_STR);
            $stmt->bindParam(":disc", $discount, PDO::PARAM_STR);
            $stmt->bindParam(":status", $status, PDO::PARAM_STR);
            $stmt->bindParam(":brand", $brand, PDO::PARAM_STR);
            $stmt->bindParam(":delivery", $delivery, PDO::PARAM_STR);
            $stmt->bindParam(":stock", $stock, PDO::PARAM_STR);
            $stmt->execute();
            $stmt = $stmt->rowCount();

            $result = $stmt;
        }
        catch(PDOException $e){
            $result = $e->getMessage();
        }

        return $result;
    }
    
    public function removeProduct($pid){
        try{
	        $q = 'DELETE FROM product WHERE id = :id';
	        $stmt = $this->runQuery($q);
	        $results = $stmt->execute([':id' =>  $pid]);
	    }
	    catch(PDOException $e){
            $results = $e->getMessage();
	    }
	    
	    return $results;
    }
    
    public function getProductsByCatUrl($curl){
        try{
	        $q = "SELECT * FROM product WHERE cat = :curl";
	        $stmt = $this->runQuery($q);
	        $stmt->execute([':curl' => $curl]);
	        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
	        $results = $e->getMessage();
        }

        return $results;
    }
    
    #Order
    #public function insertOrder($url, $ref, $client, $prod, $pprice, $pqty, $subtotal, $total, $paymode, $notes, $status)
    public function insertOrder($url, $ref, $clientId, $pname, $pimage, $pprice, $pqty, $subtotal, $total, $payment, $shipping, $status){
        try {
            $stmt = $this->runQuery("insert into orders(url, ref, clientId, product, pimage, pprice, pqty, subtotal, total, paymentMode, shipping, status, created_at)values (:url, :ref, :clientId, :product, :pimage, :pprice, :pqty, :subtotal, :total, :paymode, :shipping, :status, now())");
            $stmt->bindParam(':url', $url);
            $stmt->bindParam(':ref', $ref);
            $stmt->bindParam(':clientId', $clientId);
            $stmt->bindParam(':product', $pname);
            $stmt->bindParam(':pimage', $pimage);
            $stmt->bindParam(':pprice', $pprice);
            $stmt->bindParam(':pqty', $pqty);
            $stmt->bindParam(':subtotal', $subtotal);
            $stmt->bindParam(':total', $total);
            $stmt->bindParam(':paymode', $payment);
            $stmt->bindParam(':shipping', $shipping);
            $stmt->bindParam(':status', $status);
            $stmt->execute();

            $result = $this->lastID();
        }
        catch (PDOException $e) {
            $result = $e->getMessage();
        }
        return $result;
    }
    
    public function getOrders(){
        try{
	        $q = "SELECT * FROM orders";
	        $stmt = $this->runQuery($q);
	        $stmt->execute();
	        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
	        $results = $e->getMessage();
        }

        return $results;
    }
    
    public function getOrderByUrl($iurl){
        try{
	        $q = "SELECT * FROM orders WHERE url = :iurl";
	        $stmt = $this->runQuery($q);
	        $stmt->execute([':iurl' => $iurl]);
	        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
	        $results = $e->getMessage();
        }

        return $results;
    }
    
    public function updateOrder($url, $paymode, $txncode, $status){
        try{
            $qry = "UPDATE orders 
                    SET 
                        paymentMode = :paymode,
                        txn_code = :txncode,
                        status = :status,
                        updated_at = now()
                    WHERE 
                        url =:url";
            $stmt = $this->conn->prepare($qry);
            $stmt->bindParam(":url", $url, PDO::PARAM_STR);
            $stmt->bindParam(":paymode", $paymode, PDO::PARAM_STR);
            $stmt->bindParam(":txncode", $txncode, PDO::PARAM_STR);
            $stmt->bindParam(":status", $status, PDO::PARAM_STR);
            $stmt->execute();
            $stmt = $stmt->rowCount();

            $result = $stmt;
        }
        catch(PDOException $e){
            $result = $e->getMessage();
        }

        return $result;
    }
    
    #order client
    public function getClientById($cid){
        try{
            $q = "SELECT * FROM client WHERE id=:cid";
            $stmt = $this->runQuery($q);
            $stmt->execute([":cid" => $cid]);
            $results = $stmt->fetch(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
            $results = $e->getMessage();
        }

        return $results;
    }
}
