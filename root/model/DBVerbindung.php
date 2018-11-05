<?php

class DBVerbindung{

    private $host;
    private $user;
    private $pass;
    private $dbname;

    protected function connect(){

        $this->host="localhost";
        $this->user="root";
        $this->pass="";
        $this->dbname="lonely socks";

        $conn = new mysqli($this->host, $this->user, $this->pass, $this->dbname);
        return $conn;

    }

}


?>