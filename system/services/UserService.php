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

Class UserService extends AdminService{
	function __construct(){
		parent::__construct();
	}

	protected function getRoles(){
		try {
			$stmt = $this->conn->prepare("SELECT id, title FROM role");
            $stmt->execute();
            $staff = $stmt->fetchAll(PDO::FETCH_ASSOC);

            return $staff;
		} catch (PDOException $e) {
			$r = $e->getMessage();
		}

		return $r;
	}

	protected function insertStaff($fname, $lname, $role, $gender, $url, $mail, $phone, $pwd, $ip, $pin, $status){
		try {
			$stmt = $this->runQuery("insert into staff(fname, lname, role, gender, url, email, phone, password, ip, pin, status)
                                         values (:fname, :lname, :role, :gender, :url, :mail, :phone, :pwd, :ip, :pin, :status)");
		    $stmt->bindParam(':fname', $fname);
		    $stmt->bindParam(':lname', $lname);
		    $stmt->bindParam(':role', $role);
		    $stmt->bindParam(':gender', $gender);
		    $stmt->bindParam(':url', $url);
		    $stmt->bindParam(':mail', $mail);
		    $stmt->bindParam(':phone', $phone);
		    $stmt->bindParam(':pwd', $pwd);
		    $stmt->bindParam(':ip', $ip);
		    $stmt->bindParam(':pin', $pin);
		    $stmt->bindParam(':status', $status);
		    $stmt->execute();

		    $result = $this->lastID();
		}
		catch (PDOException $e) {
			$result = $e->getMessage();
		}
		return $result;
	}

	/**
     * @param $mail
     * @return mixed
     */
    public function staffExists($mail, $phone){
        try{
            $stmt = $this->conn->prepare("SELECT * FROM staff WHERE email=:email_id OR phone=:phone");
            $stmt->execute([
            	":email_id"=>$mail,
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

    /**
     * @param $loginUID
     * @param $loginPass
     * @return mixed
     */
    public function loginUser($loginUID, $loginPass){
        $stmt = $this->conn->prepare("SELECT * FROM staff WHERE email=:email");
        $stmt->execute([":email"=>$loginUID]);
        $row = $stmt->rowCount();
        $userRow = $stmt->fetch(PDO::FETCH_ASSOC);

        if($row == 1){
            if(password_verify($loginPass, $userRow['password'])){
                return $userRow;
            }
            else{
            	echo "Invalid passowrd!";
            }
        }
        else{
        	echo "Cannot retrieve correct information";
        }
    }

    protected function getStaffBy($role){
        try{
            $sql = 'SELECT * FROM staff WHERE role =:role';
            $stmt = $this->runQuery($sql);
            $stmt->execute([':role' => $role]);
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
            $results = $e->getMessage();
        }

        return $results;
    }

    public function getStaffByUrl($url){
        try{
            $sql = 'SELECT * FROM staff WHERE url =:url';
            $stmt = $this->runQuery($sql);
            $stmt->execute([':url' => $url]);
            $results = $stmt->fetch(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
            $results = $e->getMessage();
        }

        return $results;
    }
}
