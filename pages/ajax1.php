<?php
//FOR TOURS.php
//include_once('functions.php');
//connect();
//$coid=$_GET['coid'];
//$sel='select*from Cities where countryid='.$coid;
//$res=mysql_query($sel);
//while ($row=mysql_fetch_array($res,MYSQL_NUM)) {
//    echo '<option value="'.$row[0].'">'.$row[1].'</option>';
//}
//mysql_free_result($res);
//?>


<?php

    include_once('functions.php');
    connect();
    $coid=$_GET['coid'];
    $coidarr = explode(",", $coid);
    $i=0;
    while($i<count($coidarr)){
        $selcoid='select * from Countries where id='.$coidarr[$i];
        $rescoid=mysql_query($selcoid);
        $rowcoid=mysql_fetch_array($rescoid,MYSQL_NUM);
        var_dump($rowcoid);

        $sel='select*from Cities where countryid='.$coidarr[$i];
        $res=mysql_query($sel);
        while ($row=mysql_fetch_array($res,MYSQL_NUM)) {

            echo '<option value="'.$row[0].'">'.$row[1].'</option>';
        }

    $i++;
    }


//mysql_free_result($rescoid);
?>
