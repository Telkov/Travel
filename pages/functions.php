﻿<?php
   // function connect($host="10.3.19.1", $user="root", $pass="123456", $dbname = "forfun_travel")
     function connect($host="localhost", $user="admin", $pass="123456", $dbname = "forfun_travel")
        {
            $link = mysql_connect($host,$user,$pass) or die('Connection error');
            mysql_select_db($dbname) or die('db select erorr');
            mysql_query('set names "UTF8"');
        }

function register($name,$pass,$email){
    $name=trim(htmlspecialchars($name));
    $pass=trim(htmlspecialchars($pass));
    $email=trim(htmlspecialchars($email));
    if ($name=="" || $pass=="" || $email=="") {
        echo "<h3/><span style='color:red;'>
Fill All Required Fields!
</span><h3/>";
        return false;       
    }
    if (strlen($name)<3 || strlen($name)>30 || strlen($pass)<3 ||
strlen($pass)>30) {
        echo "<h3/><span style='color:red;'>
Values Length Must Be Between 3 And 30!
</span><h3/>";
        return false;       
    }
    $ins='insert into users (login,pass,email,roleid)
values("'.$name.'","'.md5($pass).'","'.$email.'",2)';
    connect();
    mysql_query($ins);
    $err=mysql_errno();
    if ($err){
        if($err==1062)
            echo "<h3/><span style='color:red;'>
This Login Is Already Taken!
</span><h3/>";
        else
            echo "<h3/><span style='color:red;'>
Error code:".$err."!</span><h3/>";
        return false;
    }
    return true;
}

?>

<?php
function login($logname, $logpass){
    $name=trim(htmlspecialchars($logname));
    $pass=trim(htmlspecialchars($logpass));
    connect();
    $sel='select*from Users where login ="'.$logname.'" and pass="'.md5($logpass).'"';
    $res=mysql_query($sel);
    if($row=mysql_fetch_array($res, MYSQL_NUM)){
        $_SESSION['ruser']=$logname;
        if($row[5]==1){
            $_SESSION['radmin']=$logname;
        }
        return true;
    }
    return false;
}
?>

<?php
    if (isset($_SESSION['ruser'])){
        $user='ruser';
    }
    else{
        $user='radmin';
    }
?>