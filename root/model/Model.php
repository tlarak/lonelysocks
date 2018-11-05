<?php

include_once ('DBVerbindung.php');
 
  
class Model extends DBVerbindung{  
    public function getItemList() 
    {  
        $sql = "SELECT * FROM tbl_item";
        $result = $this->connect()->query($sql);
        $numRows = $result->num_rows;
        
        if($numRows > 0){
            while($row = $result->fetch_assoc()){
                $item[] = $row;
            }
            return $item;
        }
    
    

        
    }  
      
    /*public function getItem($name)  
    {  
        // we use the previous function to get all the books and then we return the requested one.  
        // in a real life scenario this will be done through a db select command  
        $allBooks = $this->getBookList();  
        return $allBooks[$title];  
    }  */
      
      
}  

?>