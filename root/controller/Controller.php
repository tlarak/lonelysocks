<?php

include_once("model/Model.php");  
  
class Controller {  
     public $model;   
  
     public function __construct()    
     {    
          $this->model = new Model();  
     }   
      
     public function invoke()  
     {  
        
          if (!isset($_GET['page']))  
          {  
               // no special book is requested, we'll show a list of all available books  
               $socks = $this->model->getItemList();
                include 'view/Lonelysocks.phtml' ; 
          } 
          else 
          { 
            $page = $_GET['page'];
            switch($page){
              case('home'):
                $socks = $this->model->getItemList();
                include 'view/Lonelysocks.phtml' ;
                break; 
              case('login'):
                include 'view/Login.phtml';
                break;
              case ('warenkorb'):
                include 'view/warenkorb.phtml';
                break;
            }
                
          } 
     }  
}  
/*$book = $this->model->getBook($_GET['book']); 
               include 'view/viewbook.php'; */
?>
