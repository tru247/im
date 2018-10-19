<?php
Class HomeController extends BaseService implements Controller{
	function __construct(){
		parent::__construct();
	}

	public function displayHomepage(){
	    #get all categories
	    $invetorysrv = new InventoryService();
	    $cats = $invetorysrv->getCategories();
	    $this->assign('cats', $cats);

	    $prods = $invetorysrv->getRandomFourProduct();
	    $this->assign('prods', $prods);
	    #echo'<pre>'; print_r($app ); die;
	    
	    #get blogs
	    #$blogsrv = new BlogService();
	    #$blogs = $blogsrv->getBlogs();
	    #$this->assign('blogs', $blogs);
	    #echo'<pre>'; print_r($blogs); die;
	    
	    $this->assign('active', 'home');
	    $this->assign('title', 'e-mboga: Welcome to Successful Online Agri-Shopping!');
	    $this->display('home/index.tpl');
    }

    public function displayAbout(){
    	echo'<pre>'; print_r($_REQUEST); die;
    }

    public function contactUs(){
	    #get all categories
	    $invetorysrv = new InventoryService();
	    $cats = $invetorysrv->getCategories();
	    $this->assign('cats', $cats);

	    $prods = $invetorysrv->getProducts();
	    $this->assign('prods', $prods);
	    #echo'<pre>'; print_r($prods ); die;
	    
	    #get blogs
	    #$blogsrv = new BlogService();
	    #$blogs = $blogsrv->getBlogs();
	    #$this->assign('blogs', $blogs);
	    #echo'<pre>'; print_r($blogs); die;
	    
	    $this->assign('active', 'home');
	    $this->assign('title', 'e-mboga: Welcome to no. 1 Online Agri-Shopping! in Kenya');
	    $this->display('home/contact.tpl');
    }

	function execute(){
	    $q = trim(filter_input(INPUT_GET, 'query'));
	    switch(isset($q) ? $q: NULL){
            case NULL:
                $this->displayHomepage();
                break;
            case 'about':
                $this->displayAbout();
                break;
            case 'contact':
                $this->contactUs();
                break;
            default:
                die('Home query error 404: Page not found');
                break;
        }
    }
}