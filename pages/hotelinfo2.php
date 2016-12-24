<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>ForFun Travel</title>

    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="http://yastatic.net/jquery/2.1.3/jquery.min.js"></script>
    <script src="../slick/slick.min.js"></script>
    <script src="../js/js.js"></script>



    <!-- Bootstrap -->
    <link href="../CSS/bootstrap.min.css" rel="stylesheet">
    <link href="../CSS/style.css" rel="stylesheet">
    <link rel="stylesheet" href="../slick/slick.css">
    <link rel="stylesheet" href="../slick/slick-theme.css">
    <link rel="stylesheet" href="../CSS/carousel.css">
</head>

    <body>

    <?php
    include_once('functions.php');
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
                <?php
                include_once('pagesnavbar.php');
                include_once('footer.php');
                ?>
                <p><h2 align="center">
                        <?php
                        $hid=$_GET['hid'];

                        connect();
                        $sel2='select*from hotels where id='.$hid;
                        $res2=mysql_query($sel2);
                        $row2=mysql_fetch_array($res2, MYSQL_ASSOC);
                        echo $row2['hotel'];
                        ?>
                    </h2>
                </p>


                <div class="container-fluid" style="height: auto; margin-left: 20px; margin-right: 20px">
                    <div class="col-lg-8 col-md-8 col-sm-8">
                        <div class="container car1" align="left">
                        <div class="sl">
                            <?php
                                $hid=$_GET['hid'];
                                connect();
                                $sel1='select*from images where hotelid='.$hid;
                                $res1=mysql_query($sel1);

                                while ($row1=mysql_fetch_array($res1, MYSQL_ASSOC))
                                {
                                    echo '<div class="sl__slide">';
                                    echo '<img src="'.$row1['imagepath'].'" class="sl__img">';
                                    echo '</div>';

                                }
                            ?>
                        </div>

                        <div class="sl2">
                            <?php
                                $hid=$_GET['hid'];
                                connect();
                                $sel1='select*from images where hotelid='.$hid;
                                $res1=mysql_query($sel1);

                                while ($row1=mysql_fetch_array($res1, MYSQL_ASSOC))
                                {
                                    echo '<div class="sl2__slide">';
                                    echo '<img src="'.$row1['imagepath'].'">';
                                    echo '</div>';
                                }
                            ?>
                        </div>

                    </div>
                    </div>

                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="container tab1">
        <!--                <div class="container tab1" style="width: 120px">-->
                            <?php
                                $hid=$_GET['hid'];
                                connect();
                                $sel2='select*from hotels where id='.$hid;
                                $res2=mysql_query($sel2);
                                $row2=mysql_fetch_array($res2, MYSQL_ASSOC);
                                echo '<table class="tabinf">';
                                echo '<tr>';
                                echo '<td><h4>Stars: </h4></td>';
                                echo '<td style="padding-left: 5px"><h4>'.$row2['stars'].'&#9733;</h4></td>';
                                echo '</tr>';
                                echo '<tr>';
                                echo '<td><h4>Cost: </h4></td>';
                                echo '<td><h4>'.$row2['cost'].'</h4></td>';
                                echo '</tr>';
                                echo '</table>';

                                echo '<p><h4 align="left">Info:</h4><font size="1" face="Arial"> '.$row2['info'].'</font><p>';

                            ?>
        <!--                </div>-->
                        </div>

                        <input type="submit" name="book" value="To Book" class="btn btn-info">

                    </div>
                </div>
                <div class="comments">
                    <p><h4 align="center">Comments</h4></p>
                    <?php
                        $hid=$_GET['hid'];
                        $sel3='select*from Comments where id='.$hid;
                        $res3=mysql_query($sel3);
                        $row3=mysql_fetch_array($res3, MYSQL_ASSOC);
                        echo '<div class="comment">';
                        echo '<p>'.$row3['datein'].'&nbsp;'.$row3['login'].'</p>';
                        echo $row3['text'];
                        echo '</div>';


                    ?>
                </div>
            </div>
        </div>
<!--END MIDDLE BLOCK-->

        <div class="col-lg-2 col-md-1 col-sm-1 col-xs-1">
            <div class="container-fluid background2">
            </div>
        </div>
    </div>
<!-- ROW END-->
    </body>
</html>
