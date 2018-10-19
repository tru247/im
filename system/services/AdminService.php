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
class AdminService extends NoticeService{
  function __construct(){
    # code...
    parent::__construct();
  }

  #Staff CRUDS

  #inventory CRUDS

  #Client CRUDS

  #Order CRUDS

  #Sales CRUDS

  #Content CRUDS

  #Discount and promotion CRUDS

  #Shipping CRUDS
  protected function insertShipper($ref, $title, $descr){
    try {
        $stmt = $this->runQuery("insert into shipping(ref, title, description, created_at) values (:r, :t, :d, now())");
        $stmt->bindParam(':r', $ref);
        $stmt->bindParam(':t', $title);
        $stmt->bindParam(':d', $descr);
        $stmt->execute();

        $result = $this->lastID();
    }
    catch (PDOException $e) {
      $result = $e->getMessage();
    }
    return $result;
  }

  #Payment CRUDS
  protected function insertPayMethod($ref, $id, $title, $descr){
    try {
        $stmt = $this->runQuery("insert into payment_method(ref, vendor_id, title, description, created_at) values (:r, :v, :t, :d, now())");
        $stmt->bindParam(':r', $ref);
        $stmt->bindParam(':v', $id);
        $stmt->bindParam(':t', $title);
        $stmt->bindParam(':d', $descr);
        $stmt->execute();

        $result = $this->lastID();
    }
    catch (PDOException $e) {
      $result = $e->getMessage();
    }
    return $result;
  }
}
