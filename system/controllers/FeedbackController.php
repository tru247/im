<?php
Class FeedbackController extends BaseService implements Controller{
	function __construct(){
		parent::__construct();
	}
	
	public function contactUs(){
	    $app = $this->getApp();
	    $this->assign('app', $app);
	    $this->assign('title', 'Contact Us');
	    $this->assign('active', 'contact');
	    $this->display('feedback/main.tpl');
	}
	
	public function viewInbox(){
	    $messages = $this->getMessages();
	    #echo'<pre>'; print_r(count($messages)); die;
	    
	    $this->assign('totalMsgs', count($messages));
	    $this->assign('messages', $messages);
	    $this->assign('title', 'Inbox');
	    $this->display('messages/inbox.tpl');
	}
	
	public function viewMessage(){
	    $mid = trim(filter_input(INPUT_GET, 'info'));
	    $msg = $this->getMessage($mid);
	    
	    $this->assign('msg', $msg);
	    $this->assign('title', $msg['subject']);
	    $this->display('messages/message.tpl');
	}

	public function sendMessage(){
	    $name = trim(filter_input(INPUT_POST, 'name'));
	    $email = trim(filter_input(INPUT_POST, 'email'));
	    $phone = trim(filter_input(INPUT_POST, 'phone'));
	    $subject = trim(filter_input(INPUT_POST, 'subject'));
	    $message = trim(filter_input(INPUT_POST, 'message'));
	    
	    $sent = $this->insertMessage($name, $email, $phone, $subject, $message, 'new');
	    if($sent > 0){
	        echo 'Your message has been sent successfully. We shall get back to you ASAP, cheers';
	    }
	    else{
	        echo 'Failed.';
	    }

        #return result
        #header('Content-type: application/json');
        #echo json_encode($result);
    }
    
    public function sendInterest(){
	    echo'<pre>'; print_r($_REQUEST); die;
    }

	function execute(){
	    $q = trim(filter_input(INPUT_GET, 'query'));
	    switch(isset($q) ? $q: NULL){
            case NULL:
                $this->contactUs();
                break;
            case 'contact-us':
                $this->sendMessage();
                break;
            case 'inbox':
                $this->viewInbox();
                break;
            case 'view-message':
                $this->viewMessage();
                break;
            case 'interested':
                $this->sendInterest();
                break;
            default:
                die('Feednack query error 404: Page not found');
                break;
        }
    }
}