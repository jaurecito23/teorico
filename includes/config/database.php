<?php 



 function conectarDB(){


    $db = new mysqli("localhost","root","root","teorico","3000");

    if($db){

        return $db;

    }else{

        return mysqli_error();

    }

    


 }