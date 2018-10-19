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

Class ModelService extends UserService{
	function __construct(){
		parent::__construct();
	}
	
	protected function insertModel($url, $fname, $lname, $nick, $height, $biust, $waist, $hips, $shoe, $eye, $hair, $photo, $type){
	    try {
			$stmt = $this->runQuery("insert into model(url, fname, lname, nick, height, biust, waist, hips, shoes, eyes, hair, image, type, created_at)
                                         values (:url, :fname, :lname, :nick, :height, :biust, :waist, :hips, :shoe, :eye, :hair, :photo, :type, now())");
		    $stmt->bindParam(':url', $url);
		    $stmt->bindParam(':fname', $fname);
		    $stmt->bindParam(':lname', $lname);
		    $stmt->bindParam(':nick', $nick);
		    $stmt->bindParam(':height', $height);
		    $stmt->bindParam(':biust', $biust);
		    $stmt->bindParam(':waist', $waist);
		    $stmt->bindParam(':hips', $hips);
		    $stmt->bindParam(':shoe', $shoe);
		    $stmt->bindParam(':eye', $eye);
		    $stmt->bindParam(':hair', $hair);
		    $stmt->bindParam(':photo', $photo);
		    $stmt->bindParam(':type', $type);
		    $stmt->execute();

		    $result = $this->lastID();
		}
		catch (PDOException $e) {
			$result = $e->getMessage();
		}
		return $result;
	}
	
	public function getModels(){
	    try{
            $sql = 'SELECT * FROM model';
            $stmt = $this->runQuery($sql);
            $stmt->execute();
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
            $results = $e->getMessage();
        }

        return $results;
	}
	
	public function getModelByUrl($murl){
	    try{
            $sql = 'SELECT * FROM model where url = :url';
            $stmt = $this->runQuery($sql);
            $stmt->execute([':url' => $murl]);
            $results = $stmt->fetch(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
            $results = $e->getMessage();
        }

        return $results;
	}
	
	public function changeModel($id, $fname, $lname, $nick, $about, $eyes, $height, $biust, $waist, $hips, $shoes, $email, $phone, $address, $fb, $tw, $gp, $ln, $pin, $type){
	    try{
            $qry = "UPDATE model 
                    SET 
                        fname = :fname, lname = :lname, nick = :nick, about = :about, eyes = :eyes, height = :height, biust = :biust, waist = :waist, hips = :hips,
                        shoes = :shoes, fb = :fb, tw = :tw, gp = :gp, ln = :ln, pin = :pin, type = :type, updated_at = now()
                    WHERE 
                        id =:id";
            $stmt = $this->conn->prepare($qry);
            $stmt->bindParam(":id", $id, PDO::PARAM_INT);
            $stmt->bindParam(":fname", $fname, PDO::PARAM_STR);
            $stmt->bindParam(":lname", $lname, PDO::PARAM_STR);
            $stmt->bindParam(":nick", $nick, PDO::PARAM_STR);
            $stmt->bindParam(":about", $about, PDO::PARAM_STR);
            $stmt->bindParam(":eyes", $eyes, PDO::PARAM_STR);
            $stmt->bindParam(":height", $height, PDO::PARAM_INT);
            $stmt->bindParam(":biust", $biust, PDO::PARAM_INT);
            $stmt->bindParam(":waist", $waist, PDO::PARAM_INT);
            $stmt->bindParam(":hips", $hips, PDO::PARAM_INT);
            $stmt->bindParam(":shoes", $shoes, PDO::PARAM_INT);
            $stmt->bindParam(":type", $type, PDO::PARAM_STR);
            $stmt->bindParam(":fb", $fb, PDO::PARAM_STR);
            $stmt->bindParam(":tw", $tw, PDO::PARAM_STR);
            $stmt->bindParam(":gp", $gp, PDO::PARAM_STR);
            $stmt->bindParam(":ln", $ln, PDO::PARAM_STR);
            $stmt->bindParam(":pin", $pin, PDO::PARAM_STR);
            $stmt->execute();
            
            $result = $stmt->rowCount();
        }
        catch(PDOException $e){
            $result = $e->getMessage();
        }
        
        return $result;
	}
	
	public function changeModelWithPic($id, $fname, $lname, $nick, $about, $eyes, $height, $biust, $waist, $hips, $shoes, $email, $phone, $address, $fb, $tw, $gp, $ln, $pin, $photo, $type){
	    try{
            $qry = "UPDATE model 
                    SET 
                        fname = :fname, lname = :lname, nick = :nick, about = :about, eyes = :eyes, height = :height, biust = :biust, waist = :waist, hips = :hips,
                        shoes = :shoes, fb = :fb, tw = :tw, gp = :gp, ln = :ln, pin = :pin, image = :image, type = :type, updated_at = now()
                    WHERE 
                        id =:id";
            $stmt = $this->conn->prepare($qry);
            $stmt->bindParam(":id", $id, PDO::PARAM_INT);
            $stmt->bindParam(":fname", $fname, PDO::PARAM_STR);
            $stmt->bindParam(":lname", $lname, PDO::PARAM_STR);
            $stmt->bindParam(":nick", $nick, PDO::PARAM_STR);
            $stmt->bindParam(":about", $about, PDO::PARAM_STR);
            $stmt->bindParam(":eyes", $eyes, PDO::PARAM_STR);
            $stmt->bindParam(":height", $height, PDO::PARAM_INT);
            $stmt->bindParam(":biust", $biust, PDO::PARAM_INT);
            $stmt->bindParam(":waist", $waist, PDO::PARAM_INT);
            $stmt->bindParam(":hips", $hips, PDO::PARAM_INT);
            $stmt->bindParam(":shoes", $shoes, PDO::PARAM_INT);
            $stmt->bindParam(":type", $type, PDO::PARAM_STR);
            $stmt->bindParam(":fb", $fb, PDO::PARAM_STR);
            $stmt->bindParam(":tw", $tw, PDO::PARAM_STR);
            $stmt->bindParam(":gp", $gp, PDO::PARAM_STR);
            $stmt->bindParam(":ln", $ln, PDO::PARAM_STR);
            $stmt->bindParam(":pin", $pin, PDO::PARAM_STR);
            $stmt->bindParam(":image", $photo, PDO::PARAM_STR);
            $stmt->execute();
            
            $result = $stmt->rowCount();
        }
        catch(PDOException $e){
            $result = $e->getMessage();
        }
        
        return $result;
	}
	
	public function removeModel($mid){
	    try{
	        $q = 'DELETE FROM model WHERE id = :id';
	        $stmt = $this->runQuery($q);
	        $results = $stmt->execute([':id' =>  $mid]);
	    }
	    catch(PDOException $e){
            $results = $e->getMessage();
	    }
	    
	    return $results;
	}
	
	public function insertGallery($gurl, $modelUrl, $photo){
	    try {
			$stmt = $this->runQuery("insert into gallery (url, modelUrl, image, created_at)
                                         values (:url, :murl, :image, now())");
		    $stmt->bindParam(':url', $gurl);
		    $stmt->bindParam(':murl', $modelUrl);
		    $stmt->bindParam(':image', $photo);
		    $stmt->execute();

		    $result = $this->lastID();
		}
		catch (PDOException $e) {
			$result = $e->getMessage();
		}
		return $result;
	}
	
	public function getModelGallery($murl){
	    try{
            $sql = 'SELECT * FROM gallery WHERE modelUrl = :murl';
            $stmt = $this->runQuery($sql);
            $stmt->execute([':murl' => $murl]);
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
            $results = $e->getMessage();
        }

        return $results;
	}
	
	protected function insertModelType($title, $descr, $url){
	    try {
			$stmt = $this->runQuery("insert into modelType(title, url, description, created_at)
                                         values (:title, :url, :descr, now())");
		    $stmt->bindParam(':title', $title);
		    $stmt->bindParam(':url', $url);
		    $stmt->bindParam(':descr', $descr);
		    $stmt->execute();

		    $result = $this->lastID();
		}
		catch (PDOException $e) {
			$result = $e->getMessage();
		}
		return $result;
	}
	
	protected function getModelTypes(){
	    try{
            $sql = 'SELECT * FROM modelType';
            $stmt = $this->runQuery($sql);
            $stmt->execute();
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
            $results = $e->getMessage();
        }

        return $results;
	}
	
	public function removeModeType($tid){
	    try{
	        $q = 'DELETE FROM modelType WHERE id = :id';
	        $stmt = $this->runQuery($q);
	        $results = $stmt->execute([':id' =>  $mid]);
	    }
	    catch(PDOException $e){
            $results = $e->getMessage();
	    }
	    
	    return $results;
	}
}