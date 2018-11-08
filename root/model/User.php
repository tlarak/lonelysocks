<?php

include_once ('DBVerbindung.php');
 
  
class User extends DBVerbindung{  
    public function getUserList() 
    {  
        $sql = "SELECT * FROM tbl_user";
        $result = $this->connect()->query($sql);
        $numRows = $result->num_rows;
        
        if($numRows > 0){
            while($row = $result->fetch_assoc()){
                $users[] = $row;
            }
            return $users;
        }
    
    

        
    } 
    
    public function userExist($mail)
    {
        $sql_check = "SELECT * FROM tbl_user WHERE mail ='".$mail."'";
        $result_check = $this->connect()->query($sql_check);
        $count = count(result_check);
       /* $result= $this->db->select("SELECT * FROM tbl_user WHERE mail = '".$mail."'");
        $count = count($result);*/
        return $count;
    }
    
    public function insertUser($newuser)
    {
        $this->db->insert('tbl_user', $newuser);
    }
      
}  

?>