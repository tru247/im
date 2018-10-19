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
class BlogService extends BaseService{
    function __construct(){
    parent::__construct();
  }

    protected function inserBlog($url, $image, $title, $excerpt, $description){
        try {
			$stmt = $this->runQuery("insert into blogs(url, image, title, excerpt, description, created_at)
                                         values (:url, :image, :title, :excerpt, :description, now())");
		    $stmt->bindParam(':url', $url);
		    $stmt->bindParam(':image', $image);
		    $stmt->bindParam(':title', $title);
		    $stmt->bindParam(':excerpt', $excerpt);
		    $stmt->bindParam(':description', $description);
		    $stmt->execute();

		    $result = $this->lastID();
		}
		catch (PDOException $e) {
			$result = $e->getMessage();
		}
		return $result;
    }
  
    public function getBlogs(){
      try{
            $sql = 'SELECT * FROM blogs';
            $stmt = $this->runQuery($sql);
            $stmt->execute();
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
            $results = $e->getMessage();
        }

        return $results;
  }
  
    protected function getBlog($burl){
      
  }

    protected function insertBlogCategory(){
      
  }
  
    protected function getBlogCategories(){
      
  }
  
    protected function getBlogCategory($curl){
      
    }
    
    // events
    protected function insertEvent($url, $image, $title, $excerpt, $description){
        try {
			$stmt = $this->runQuery("insert into events(url, image, title, excerpt, description, created_at)
                                         values (:url, :image, :title, :excerpt, :description, now())");
		    $stmt->bindParam(':url', $url);
		    $stmt->bindParam(':image', $image);
		    $stmt->bindParam(':title', $title);
		    $stmt->bindParam(':excerpt', $excerpt);
		    $stmt->bindParam(':description', $description);
		    $stmt->execute();

		    $result = $this->lastID();
		}
		catch (PDOException $e) {
			$result = $e->getMessage();
		}
		return $result;
    }
  
    public function getEvents(){
      try{
            $sql = 'SELECT * FROM events';
            $stmt = $this->runQuery($sql);
            $stmt->execute();
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
        catch (PDOException $e){
            $results = $e->getMessage();
        }

        return $results;
  }
}
