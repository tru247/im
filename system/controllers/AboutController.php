<?php
Class AboutController extends BaseService implements Controller{
    function __construct(){
        parent::__construct();
    }

    public function displayHomepage(){
        echo'<pre>'; print_r($_REQUEST); die;   
        $this->assign('title', 'About us');
        $this->display('home/about.tpl');
    }

    public function ourContacts(){
	    $invetorysrv = new InventoryService();
	    $cats = $invetorysrv->getCategories();
	    
	    $this->assign('title', 'Contact us');
	    $this->assign('cats', $cats);
        $this->display('home/contact.tpl');
    }

    public function ourTerms(){
	    $invetorysrv = new InventoryService();
	    $cats = $invetorysrv->getCategories();
	    
	    $this->assign('title', 'Our Terms & Conditions');
	    $this->assign('cats', $cats);
        $this->display('home/terms.tpl');
    }

    public function whoWeAre(){
        # code...
        $this->display('home/whoWeAre.tpl');
    }

    public function whyChooseUs(){
        $this->display('home/WhyUs.tpl');
    }

    public function ourLegacy(){
        $this->display('home/ourLegacy.tpl');
    }

    public function feedBack(){
        $this->display('home/feedback.tpl');
    }

    public function tours(){
        $this->display('home/tours.tpl');
    }

    public function products(){
        $this->display('home/products.tpl');
    }

    function execute(){
        $q = trim(filter_input(INPUT_GET, 'query'));
        switch(isset($q) ? $q: NULL){
            case NULL:
                $this->displayHomepage();
                break;
            case 'contact':
                $this->ourContacts();
                break;
            case 'terms':
                $this->ourTerms();
                break;
            case 'who-we-are':
                $this->whoWeAre();
                break;
            case 'why-us':
                $this->whyChooseUs();
                break;
            case 'our-legacy':
                $this->ourLegacy();
                break;
            case 'our-contacts':
                $this->ourContacts();
                break;
            case 'feedback':
                $this->feedBack();
                break;
            case 'tours':
                $this->tours();
                break;
            case 'products':
                $this->products();
                break;
            default:
                die('About query error 404: Page not found');
                break;
        }
    }
}
