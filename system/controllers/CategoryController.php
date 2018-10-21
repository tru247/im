<?php
/**
 * Created by PhpStorm.
 * User: user
 * Date: 8/3/2017
 * Time: 5:42 AM
 */

class CategoryController extends InventoryService implements Controller {
    function __construct(){
        parent::__construct();
    }

    private function newCategory(){
        $this->assign('cats', $this->getCategories());
        $this->display('category/new.tpl');
    }

    private function addCategory(){
        #echo "<pre>"; print_r($_REQUEST); die;
        #get inputs
        $cname = trim(filter_input(INPUT_POST, 'name'));
        $cparent = trim(filter_input(INPUT_POST, 'parent'));
        if (empty($cparent)) {
            $cparent = 0;
        }
        $cdesc = trim(filter_input(INPUT_POST, 'desc'));
        $ctitle = trim(filter_input(INPUT_POST, 'title'));
        if(empty($ctitle)){
            $ctitle = 'Category '. $cname .' Title';
        }
        #echo "<pre>"; print_r($cdesc); die;
        $cimage = 'https://via.placeholder.com/849x227';
        $cpromo = 'https://via.placeholder.com/1141x200';
        #echo "<pre>"; print_r($cparent); die;

        #generate url
        $url = Utils::generateRandomString('-'.$cname);

        #generate ref no
        $ref = 'CAT';
        $ref = Utils::referenceGenerator($ref);

        #save into the db
        $insert = $this->insertCategory($cname, $ctitle, $url, $ref, $cparent, $cdesc, $cimage, $cpromo);
        #echo "<pre>"; print_r($insert); die;
        
        if($insert){
            $result['msg'] = 'Success';
            $result['url'] = $url;
        }
        else{
            $result['msg'] = 'Error';
        }

        header('Content-type: application/json');
        echo json_encode($result);
    }

    private function allCategories(){
    	#echo'<pre>'; print_r($this->getCategories()); die;
        $this->assign('cats', $this->getCategories());
        $this->display('category/all.tpl');
    }

    private function categoryProfile(){
        #echo "<pre>"; print_r($_REQUEST); die;
        $curl = trim(filter_input(INPUT_GET, 'info'));
        $profile = $this->getCategoryByUrl($curl);
        #get parent by url
        $parent = $this->getCategoryByRef($profile['parent']);

        #get category products by category url
        $prods = $this->getProductsByCatUrl($curl);
        
        $this->assign('prods', $prods);
        $this->assign('profile', $profile);
        $this->assign('parent', $parent);
        $this->display('category/profile.tpl');
    }

    private function categoryProducts(){
        #echo'<pre>'; print_r($_REQUEST); die;
        #get all categories
        $invetorysrv = new InventoryService();
        $cats = $invetorysrv->getCategories();
        $this->assign('cats', $cats);

        $profile = $this->getCategoryByUrl($_REQUEST['info']);
        #echo "<pre>"; print_r($profile); die;
        $curl = $profile['url'];
        #now get products by category url
        $prods = $this->getProductsByCatUrl($curl);
        #echo'<pre>'; print_r($prods); die;
        
        #get parent by url
        $parent = $this->getCategoryByRef($profile['parent']);
        
        $this->assign('cats', $this->getCategories());
        $this->assign('active', $profile['name']);
        $this->assign('prods', $prods);
        $this->assign('prof', $profile);
        $this->assign('parent', $parent);
        $this->display('category/products.tpl');
    }

    private function deleteCategory(){
    	$cid = trim(filter_input(INPUT_GET, 'info'));
        #echo'<pre>'; print_r($cid); die;
    	$remove = $this->removeCategory($cid);
    	#echo'<pre>'; print_r($remove); die;
    	if($remove > 0){
    		header("Location: /category");
    	}
    	else{
    		echo 'Error deleting';
    	}
    }
    
    private function categoryEditing(){
        echo'<pre>'; print_r('This feature will be coded on Saturday night. As of right now, the dev team is busy configuring th Point Of Sale. Thanks for your patience ;-)'); die;
    }

    function execute(){
        $q = trim(filter_input(INPUT_GET, 'query'));
        switch (isset($q) ? $q : NULL){
            case NULL:
            case 'all':
                $this->allCategories();
                break;
            case 'new':
                $this->newCategory();
                break;
            case 'add':
                $this->addCategory();
                break;
            case 'profile':
                $this->categoryProfile();
                break;
            case 'info':
                $this->categoryProducts();
                break;
            case 'edit':
                $this->categoryEditing();
                break;
            case 'delete':
                $this->deleteCategory();
                break;
            default:
                die("Category query error 404: page not found");
                break;
        }
    }
}