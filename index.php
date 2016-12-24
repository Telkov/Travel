<?php session_start();
//error_reporting( E_ERROR ); //скрывает Notice и Warning
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>ForFun Travel</title>
        <?php
        include_once('pages/js_css.php')
        ?>
</head>
  <body>

 <?php
    include_once('pages/functions.php');
 ?>

 <div class="container-fluid top">
     <div class="container-fluid background2">
     </div>
 </div>

 <div class="container-fluid main">
     <div class="col-lg-2 col-md-1 col-sm-1 col-xs-1">
         <div class="container-fluid background2">
         </div>
     </div>
    <div class="col-lg-8 col-md-10 col-sm-10 col-xs-10">
        <div class="container-fluid content">
        </div>
        <!--        NAVBAR START-->
        <?php
        include_once('pages/navbar.php');

        ?>
<!--        NAVBAR END-->
        <?php

        include_once('pages/menu.php');
        include_once('pages/modal.php');
        include_once('pages/content.php')
        ?>

    </div>

     <div class="col-lg-2 col-md-1 col-sm-1 col-xs-1">
         <div class="container-fluid background2">
         </div>
     </div>
 </div>
 <div class="container-fluid bottom">
     <div class="container-fluid background2">
     </div>
     <?php
     include_once('pages/footer.php');
     ?>
 </div>
<!--</div>-->

  </body>
</html>
