<?php
  
include_once ('../model/User.php');
  
class Register {  
     public $user;   
  
     public function __construct()    
     {    
          $this->user = new User();  
     }   
      
     
     
     public function register()
     {
        $vname=$_POST['vname'];
        $nname=$_POST['nname'];
        $str_nr=$_POST['str_nr'];
        $plz=$_POST['plz'];
        $ort=$_POST['ort'];
        $mail=$_POST['mail'];
        $pass=$_POST['pass'];
        $count=$this->user->userExist($mail);
        
        if($count > 0){
            echo 'Es gibt bereits einen Account mit dieser Mailadresse.';
        }
      
        else{
            $newuser = array(
            'user_id' =>null,
            'firstname' =>$_POST['vname'],
            'lastname' =>$_POST['nname'],
            'street' =>$_POST['str_nr'],
            'plz' =>$_POST['plz'],
            'ort' =>$_POST['ort'],
            'mail' =>$_POST['mail'],
            'hash' =>$_POST['pass']
            );
            $this->user->insertUser($newuser);
      }
    }
}  
/*$book = $this->model->getBook($_GET['book']); 
               include 'view/viewbook.php'; */
?>
