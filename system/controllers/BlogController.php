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

class BlogController extends BlogService implements Controller{
	function __construct(){
		parent::__construct();
	}

	private function newBlog(){
		#echo "<pre>"; print_r($_REQUEST); die;
		#$this->assign('cats', $this->getTypes());
		$this->display('blogs/new.tpl');
	}
	
	public function addBlog(){
		#get variables
		$title = trim(filter_input(INPUT_POST, 'title'));
		$excerpt = trim(filter_input(INPUT_POST, 'excerpt'));
		$description = trim(filter_input(INPUT_POST, 'description'));
		$author = 1;
		$category = trim(filter_input(INPUT_POST, 'category'));

		#generate url
        $url = '';
		@$stitch = Utils::generateRandomString($url);
		$name = implode("-", [$stitch, $title]);
    	$url = Utils::generateSlug($name);

    	#get user ip address
    	$ip = Utils::getClientIpServer();

		$filename = stripslashes($_FILES['photo']['name']);
        $uploadDir = 'uploads/';
        $ext = Utils::getExtension($filename);
        $validFormats = ['jpg', 'png', 'jpeg', 'JPG'];
        if(in_array($ext, $validFormats)){
            $photo = time() . '-' . $filename;
            $targetPath = $uploadDir . $photo;
            $upload = @move_uploaded_file($_FILES['photo']['tmp_name'], $targetPath);
            if($upload){
                $url = Utils::generateRandomString('');
                #echo'<pre>'; print_r($url); die;
                #insert at this point
                $insert = $this->inserBlog($url, $photo, $title, $excerpt, $description);
                #echo'<pre>'; print_r($insert); die;
                if($insert > 0){
                    header('Location: /blogs');
                }
                else die('Error inserting image into the blog table');
            }
            else die('Error uploading image');
        }
        else die('Invalid image format');
	}
	
	protected function allBlogs(){
	    $blogs = $this->getBlogs();
	    //echo'<pre>'; print_r($blogs); die;
	    $this->assign('blogs', $blogs);
	    $this->display('blogs/all.tpl');
	}
	
	protected function blogProfile(){
	    echo'<pre>'; print_r($_REQUEST); die;
	}
	
	protected function editBlog(){
	    echo'<pre>'; print_r($_REQUEST); die;
	}
	
	protected function newCategory(){
	    echo'<pre>'; print_r($_REQUEST); die;
	}
	
	protected function addCategory(){
	    echo'<pre>'; print_r($_REQUEST); die;
	}
	
	protected function allCategories(){
	    echo'<pre>'; print_r($_REQUEST); die;
	}
	
	public function frontBlogs(){
	    $blogs = $this->getBlogs();
	    #echo'<pre>'; print_r($blogs); die;
	    
	    $this->assign('title', 'Blogs & News');
	    $this->assign('blogs', $blogs);
	    $this->display('blogs/main.tpl');
	}

	function execute(){
		$q = trim(filter_input(INPUT_GET, 'query'));
		switch (isset($q) ? $q : NULL) {
			case NULL:
			    $this->frontBlogs();
			break;
			case 'all':
				$this->allBlogs();
			break;
			case 'new':
				$this->newBlog();
			break;
			case 'add':
				$this->addBlog();
			break;
			case 'profile':
				$this->blogProfile();
			break;
            case 'edit':
                $this->editBlog();
            break;
            case 'new-category':
                $this->newCategory();
            break;
            case 'add-category':
                $this->addCategory();
            break;
            case 'all-categories':
                $this->allCategories();
            break;
			default:
            	// $controller = new ErrorController();
				echo "Blog query error 404!!";
			break;
		}
	}
}
