<?php
Class ContactController extends BaseService implements Controller{
    function __construct(){
        parent::__construct();
    }

    public function displayHomepage(){
        $this->display('home/main.tpl');
    }

    function execute(){
        $q = trim(filter_input(INPUT_GET, 'query'));
        switch(isset($q) ? $q: NULL){
            case NULL:
                $this->displayHomepage();
                break;
            default:
                die('Contact query error 404: Page not found');
                break;
        }
    }
}