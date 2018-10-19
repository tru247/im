<?php
Class GalleryController extends BaseService implements Controller{
    function __construct(){
        parent::__construct();
    }

    public function displayHomepage(){
        $this->display('home/gallery.tpl');
    }

    function execute(){
        $q = trim(filter_input(INPUT_GET, 'query'));
        switch(isset($q) ? $q: NULL){
            case NULL:
                $this->displayHomepage();
                break;
            default:
                die('Gallery query error 404: Page not found');
                break;
        }
    }
}