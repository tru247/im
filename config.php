<?php
# Define Globals!
if (!defined('__ROOT__')) {
    # Path Separator!
    define('PS', PATH_SEPARATOR);

    # Directory separator!
    define('DS', DIRECTORY_SEPARATOR);

    # Root Directory!
    define('__ROOT__', __DIR__);

    # System Directory!
    define('__SYS__', __ROOT__ . sprintf('%1$ssystem%1$s', DS));

    # API Directory!
    define('__APIS__', __SYS__ . sprintf('%1$sapis%1$s', DS));

    # Set Include path!
    set_include_path(
        get_include_path() . PS
        . __SYS__ . sprintf('apis%1$s', DS) . PS
        . __SYS__ . sprintf('objects%1$s', DS) . PS
        . __SYS__ . sprintf('traits%1$s', DS) . PS
        . __SYS__ . sprintf('contracts%1$s', DS) . PS
        . __SYS__ . sprintf('controllers%1$s', DS) . PS
        . __SYS__ . sprintf('services%1$s', DS) . PS
        . __SYS__ . sprintf('utilities%1$s', DS) . PS
    );

    # Auto-load classes!
    spl_autoload_register(function ($class){
        # Exclude smarty classes, already loaded in smarty main class!
        if ((preg_match("/smarty/i", $class)) || $class === 'finfo') {
            return;
        }
        elseif (preg_match('/paypal/i', $class)) {
            $class = str_replace("\\", "/", $class);
        }

        $file = "$class.php";
        return include_once $file;
    });

    # Register error handler!
    error_reporting(E_ALL & ~E_NOTICE & ~E_WARNING);
    #error_reporting(E_ALL); 
    ini_set('display_errors', 1);
    
    # This is crazy but, set phone validation regex!
    define('PHONE_REGEX', '/^\+2547(?:[0-9] ?){7}[0-9]$/');

    #define application brand name
    define('APP_NAME', 'Imranma');

    # Set cdn path
    define('CDN', 'http://shop.imranma.com/cdn/');

    # Set the emboga domain...
    define('WM_AD', 'http://shop.imranma.com/');

    # Set session client user identifier!
    define('WM_SYSADMIN', '_les_sysadmin');

    # Set session admin identifier!
    define('WM_ADMIN', '_les_admin');

    # Set session client user identifier!
    define('WM_STAFF', '_les_staff');

    # Set session client user identifier!
    define('WM_CLIENT', '_les_client');

    # Set Logo
    define('LES_LOGO', CDN . 'logo.png');

    # Set your shop's address
    define('LES_ADDRESS', "");

    # Set uploads url
    define('LES_UPLOADS', 'http://shop.imranma.com/uploads/');

    # Set copyright statement
    define('COPYRIGHT', 'All Rights Reserved &copy;  Imranma Store 2018 | Created by <a style="color:#ff0000;" target="_blank" href="https://www.trulancetechnologies.com">Trulance Technologies</a>');

    #Define admin database stuff
    define('DBHOST', 'localhost');
    define('DBNAME', 'imranma');
    define('DBUSER', 'root');
    define('DBPWD', 'SibuorOgego2018!');

    #MPESA PAYMENT DETAILS
    define('PAYBILL_NUMBER', '');
    define('PASSKEY', '');

    #PAYPAL PAYMENT KEYS
    define('PAYPAL_CLIENT_ID','');
    define('PAYPAL_CLIENT_SECRET','');

    #facebook API Credentials
    define('FB_ID', '');
    define('FB_SECRET', '');
    define('FB_GRAPH_VERSION', 'v2.5');
    define('FB_BASE_URL', WM_AD);

    # Seed the random generator!
    mt_srand((double)microtime() * 1000);

    # Set session name!
    session_start();
    session_name('_les_session');

    #TODO: Advanced session handler; Create a class to handle this

    #set up the maximum uploadable size of file
    define('MAX_SIZE', 2000); //2MB MAX file size

    //Set timeout then, autoclear session timer, thereafter automatically generate new password then send it the admin automatically
    define(MAX_TIMEOUT, '7200');
}
