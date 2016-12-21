<?php
include_once('pageshead.php');
?>
<body>

<?php
include_once ('functions.php');
?>

    <div class="container-fluid top">
        <div class="container-fluid background2">
        </div>
    </div>
    
    <div class="container-fluid" style="width: 100%">
        <div class="col-lg-2 col-md-1 col-sm-1 col-xs-1">
            <div class="container-fluid background2">
            </div>
        </div>
        <div class="col-lg-8 col-md-10 col-sm-10 col-xs-10">
            <?php
            include_once('pagesnavbar.php');
            include_once('footer.php');
            ?>
        <!--START-->
            <div class="container" style="margin-left:20px; margin-top: 20px;  width: auto">
                    <form action='tours.php' class="form-inline" method='post'>

                        <select name='coid' class="form-control sel1">
                            <?php
                                connect();
                                $res=mysql_query('select * from countries');
                                while ($row=mysql_fetch_array($res,MYSQL_ASSOC))
                                {
                                    echo '<option value="'.$row['id'].'">'.$row['country'].'</option>';
                                }
                                mysql_free_result($res);
                            ?>
                        </select>
                        <input type='submit' value="OK" name='getcountry' class="btn btn-primary">
                        <?php
                        if(isset($_POST['getcountry']))
                        {
                            $coid=$_POST['coid'];
                            $res=mysql_query('select * from cities where countryid='.$coid);
                            echo '<select name="ciid" class="form-control sel1">';
                            while($row=mysql_fetch_array($res,MYSQL_NUM))
                            {
                                echo '<option value="'.$row[0].'">'.$row[1].'</option>';
                            }
                            echo '</select>';
                            echo '<input type="submit" style="margin-left: 4px" name="getcity" class="btn btn-primary" value="OK">';
                            mysql_free_result($res);
                        }
                        ?>
                    </form>
                    <div class="container" style="width: 100%">
                        <?php
                            if(isset($_POST['getcity']))
                            {
                                $ciid=$_POST['ciid'];
                                $sel='select*from hotels where cityid='.$ciid;
                                $res2=mysql_query($sel);
                                echo '<table class="table table-striped" style="margin-top: 20px">';
                                echo '<tr>';
                                echo '<th>Hotel</th>';
                                echo '<th>Stars</th>';
                                echo '<th>Cost</th>';
                                echo '<th>Info</th>';
                                echo '</tr>';

                                while ($row2=mysql_fetch_array($res2, MYSQL_ASSOC))
                                {
                                    echo '<tr>';
                                    echo '<td>'.$row2['hotel'].'</td>';
                                    echo '<td>'.$row2['stars'].'</td>';
                                    echo '<td>'.$row2['cost'].'</td>';
                                    echo '<td><a href="hotelinfo.php?hid='.$row2['id'].'" target="_blank">Click for details</a></td>';
                                    echo '</tr>';

                                }
                                echo '</table>';
                            }
                        ?>
                    </div>
            </div>
        </div>
        <!--END-->

        <div class="col-lg-2 col-md-1 col-sm-1 col-xs-1">
            <div class="container-fluid background2">
            </div>
        </div>
    </div>





</body>
</html>


















