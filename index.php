<?php
	if (substr_count($_SERVER['HTTP_ACCEPT_ENCODING'], 'gzip'))
		ob_start('ob_gzhandler');
	else
		ob_start();

    include_once 'config.php';

    #Get module
    $module = trim(filter_input(INPUT_GET, 'module'));

    #Init controller object!
    $controller = null;

    $globalModules = ['admin, staff, logout'];
    
    # List global modules
    $globalModules = [
        'home',
	    'about',
	    'about-us',
        'access',
        'admin',
        'category',
        'product',
        'cart',
        'order',
        'uploads',
        'printing'
    ];
    #echo '<pre>'; print_r($_REQUEST); die;
    
    # Check if is global module
    if (in_array($module, $globalModules)) {
        if ($module == 'home') {
            $controller = new HomeController();
        }
        elseif ($module == 'about-us' || $module == 'about') {
            $controller = new AboutController();
        }
        elseif ($module == 'access' || $module == 'admin') {
            $controller = new AccessController();
        }
        elseif($module == 'category'){
        	$controller = new CategoryController();
        }
        elseif($module == 'printing'){
            $controller = new PrintingController();
        }
        elseif($module == 'product'){
        	$controller = new ProductController();
        }
        elseif($module == 'cart'){
        	$controller = new CartController();
        }
        elseif($module == 'order'){
        	$controller = new OrderController();
        }
        elseif($module == 'uploads'){
            return WAKAKA_UPLOADS;
        }
    }
    # || !isset($_SESSION[EM_ADMIN]) || !isset($_SESSION[EM_CLIENT]) || !isset($_SESSION[EM_STAFF])
    elseif (isset($_SESSION[WM_SYSADMIN])){
        # Route!
        switch ($module) {
            case NULL :
                $controller = new HomeController();
                break;
            case 'dashboard':
                $controller = new DashboardController();
                break;
            case 'user' :
            case 'staff' :
                $controller = new StaffController(); // Once logged in check user session before assigning respective dashboard
                break;
            case 'client':
                $controller = new ClientController();
                break;
            case 'order':
                $controller = new OrderController();
                break;
            case 'category':
                $controller = new CategoryController();
                break;
            case 'product':
                $controller = new ProductController();
                break;
            case 'cart':
                $controller = new CartController();
                break;
            case 'settings':
                $controller = new ConfigsController();
                break;
            case 'uploads':
                return WAKAKA_UPLOADS;
                break;
            case 'logout':
                Utils::logout();
                break;
            default :
                die("Index Sysadmin module Error 404: Page Not Found");
                break;
        }
    }
    elseif(isset($_SESSION[WM_ADMIN])){
        switch ($module){
            case '' :
            case 'dashboard':
                $controller = new DashboardController();
                break;
            case 'user' :
            case 'staff' :
                $controller = new StaffController(); // Once logged in check user session before assigning respective dashboard
                break;
            case 'client':
                $controller = new ClientController();
                break;
            case 'order':
                $controller = new OrderController();
                break;
            case 'category':
                $controller = new CategoryController();
                break;
            case 'product':
                $controller = new ProductController();
                break;
            case 'uploads':
                return WAKAKA_UPLOADS;
                break;
            case 'logout':
                Utils::logout();
                break;
            default :
                die("Index General manager(Admin) module Error 404: Page Not Found");
                break;
        }
    }
    elseif (isset($_SESSION[WM_STAFF])) {
        # code...
    }
    elseif (isset($_SESSION[WM_CLIENT])) {
        # code...
    }
    else {
        //$controller = new AccessController();
        //echo "<pre>"; print_r($_REQUEST); die;
        $controller = new HomeController();
    }

    $controller -> execute();
