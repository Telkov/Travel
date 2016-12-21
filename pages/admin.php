<!-- START -->
<div class="container" style="width: auto">
    <p><h2 align="center"><b>ADMIN PANEL</b></h2></p>
    <!-- Row #1 Start -->
    <div class="row">

        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
            <div class="container-fluid" style="margin-left: 30px">
                <!-- Add Country Start -->
                <p><h5><b>Enter name of the Country which You want to add</b></h5></p>
                <form action="index.php?page=4" method="POST" class="form-inline">
                    <input type="text" class="form-control inp1" name="NewCountry" placeholder="Country name...">
                    <input type='submit' value="Add Country" name="addcountry" class="btn btn-primary btn-gradient">
                </form>

                <?php
                if (isset($_POST['addcountry']))
                {
                    $newcountry=trim(htmlspecialchars($_POST['NewCountry']));
                    $ins='insert into countries (country)values("'.$newcountry.'")';
                    connect();
                    //echo $ins;
                    mysql_query($ins);
                    if (mysql_errno())
                    {
                        echo mysql_error();
                    }
                    $mypath='images/hotels/'.$newcountry.'';
                    mkdir ($mypath);
                }
                  
                ?>
                <!-- Add Country End -->

                <!-- Add City Start-->
                <form action="index.php?page=4" method="POST" class="form-inline">
                    <p style="margin-top: 40px"><h5><b>Select the Country and Enter City name</b></h5></p>
                    <select name="coid" class="form-control sel1">
                        <?php
                            connect();
                            // универсал. код обработки select
                            $res = mysql_query('SELECT * FROM Countries');
                            while ($row = mysql_fetch_array($res, MYSQL_NUM)) {
                                echo '<option value ="'.$row[0].'">
                                    '.$row[1].'</opton>';
                            }
                            mysql_free_result($res);
                        ?>
                    </select>
                    <br>
                    <input type="text" class="form-control inp1" name="NewCity" placeholder="City name..." style="margin-top: 5px">
                    <input type='submit' value="Add City" name="AddCity" class="btn btn-primary btn-gradient" style="margin-top: 5px">
                </form>

                <?php
                if (isset($_POST['AddCity']))
                {
                    $countryid=$_POST['coid'];
                    $newcity=trim(htmlspecialchars($_POST['NewCity']));
                    $ins='insert into cities (countryid, city)values("'.$countryid.'","'.$newcity.'")';
                    connect();
                    mysql_query($ins);
                    if (mysql_errno())
                    {
                        echo mysql_error();
                    }
                    
                     $countreq =  mysql_query('select country from Countries WHERE id= "'.$_POST['coid'].'"'); // GET RESOURCE
                     $row=mysql_fetch_array($countreq, MYSQL_ASSOC); // GET ASSOC ARRAY
                       
                     $mypath='images/hotels/'.$row['country'].'/'.$newcity.'';
                     mkdir ($mypath);
                    mysql_free_result($countreq);
                }
                ?>
                <!-- Add City End-->
            </div>

            <!-- START DELETE Countries -->
            <div class="container del">
                <p><h5 align="center"><b>Choose Country to DELETE</b></h5></p>
                <form action="index.php?page=4" method="POST">
                    <div class="container delco" style="width:100%;">
                        <?php
                        connect();
                        $res=mysql_query('select * from Countries');
                        echo '<table class="table table-stripped">';
                        while($row=mysql_fetch_array($res,MYSQL_NUM)){
                            echo '<tr>';
//                                echo '<td>'.$row[0].'</td>'; CountryID
                            echo '<td>'.$row[1].'</td>';
                            echo '<td><input type="checkbox" name="cob'.$row[0].'"></td>';
                            echo '</tr>';
                        }
                        echo '</table>';
                        mysql_free_result($res);
                        if(isset($_POST['delcountry'])){
                            foreach ($_POST as $k => $v) {
                                if(substr($k,0,2)=="cob"){
                                    $idc=substr($k, 2);
                                    $del='delete from countries where id='.$idc;
                                    mysql_query($del);
                                }
                            }
                            echo '<script>window.location=document.URL</script>';
                        }
                        ?>
                    </div>
                    <input type="submit" name="delcountry" value="DELETE Coutry" class="btn btn-warning del1" style="margin-top: 10px">
                </form>
            </div>
            <!-- END DELETE Countries -->

            <!-- START DELETE Cities -->
             <div class="container del">
                <p><h5 align="center"><b>Choose to DELETE</b></h5></p>
                <form action="index.php?page=4" method="POST" class="form-inline">
                    <div class="container delci" style="width:100%;">
                        <div class="form-group">
                            <!-- <label class="col-xs-1 control-label" for="delcoid">Country:</label> -->
                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 block-sel">
                                <select required name="delcoid" class="selectpicker sel1" multiple data-selected-text-format="count" onchange="showCities(this.value)">
                                    <?php
                                    connect();
                                    // универсал. код обратботки select
                                    $res=mysql_query('select * from Countries');
                                    while($row=mysql_fetch_array($res,MYSQL_NUM)){
                                        echo '<option value="'.$row[0].'">'.$row[1].'</option>';
                                    }
                                    mysql_free_result($res);
                                    ?>
                                </select>

                                <script>
                                    function showCities(countryid){
                                        if(countryid==''){
                                            document.getElementById('delciid').innerHTML="";
                                        }
                                        if(window.XMLHttpRequest){
                                            ao=new XMLHttpRequest();
                                        }
                                        else{
                                            ao=new ActiveXObject('Microsoft.XMLHTTP');
                                        }
                                        ao.onreadystatechange=function(){
                                            if(ao.readyState==4 && ao.status==200){
                                                document.getElementById('delciid').innerHTML=ao.responseText;
                                            }
                                        }
                                        ao.open('GET','pages/ajax1.php?ciid='+countryid);
                                        ao.send(null);
                                    }
                                </script>

                            <input type='submit' value="DEL" name="delcoy" class="btn btn-warning">
                            </div>
                         </div>
                            
                            <div class="form-group">
                                <!-- <label class="col-xs-1 control-label" for="delciid">City:</label> -->
                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 block-sel">
                                    <select required name="delciid"  class="selectpicker sel1" multiple>
<!--                                        <optgroup label="Condiments" data-max-options="3">-->
<!--                                        <optgroup label="Breads" data-max-options="3">-->
                                        <?php
                                        connect();
                                        // универсал. код обратботки select
                                        $res = mysql_query('SELECT * FROM Countries');
                                        while ($row = mysql_fetch_array($res, MYSQL_NUM)) {
                                            echo '<option value ="'.$row[0].'">
                                            '.$row[1].'</opton>';
                                        }
                                        mysql_free_result($res);
                                        ?>
                                    </select>
                                <input type='submit' value="DEL" name="delciy" class="btn btn-warning">
                                </div>
                             </div>

                             <div class="form-group">
                                <!-- <label class="col-xs-1 control-label" for="delhos">Hotel:</label> -->
                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 block-sel">
                                    <select required name="delhos"  class="selectpicker sel1" multiple>
<!--                                        <optgroup label="Condiments" data-max-options="3">-->
<!--                                        <optgroup label="Breads" data-max-options="3">-->
                                        <?php
                                        connect();
                                        // универсал. код обратботки select
                                        $res = mysql_query('SELECT * FROM Countries');
                                        while ($row = mysql_fetch_array($res, MYSQL_NUM)) {
                                            echo '<option value ="'.$row[0].'">
                                            '.$row[1].'</opton>';
                                        }
                                        mysql_free_result($res);
                                        ?>
                                    </select>
                                <input type='submit' value="DEL" name="delhos" class="btn btn-warning">
                                </div>
                             </div>
                        </form>



                       <?php
                            connect();
                            // echo '<div class="btn-group bootstrap-select show-tick">';
                            // echo '<select name="coid" id="coid" value="" class="form-control sel1" onchange="showCities(this.value)">';
                            // $res=mysql_query('select * from Countries');
                            // while($row=mysql_fetch_array($res,MYSQL_NUM)){
                            //     echo '<option value="'.$row[0].'">'.$row[1].'</option>';
                            // }
                            // echo '</select>';
                            // echo '</div>';
                            // echo '<br>';
                            // echo '<div class="btn-group bootstrap-select show-tick" style="margin-left:20px;">';
                            // echo '<select name="ciid" id="ciid" class="form-control sel1" onchange="showHotels(this.value)" style="margin-top:15px">';
                            // echo '</select>';
                            // echo '</div>';
                            // echo '<div id=h></div>';
                        ?>
                        
                    </div>
                   <!--  <input type="submit" name="delcity" value="DELETE City" class="btn btn-warning del1" style="margin-top: 10px"> -->
            </div>
            <!-- END DELETE Cities -->

        </div> <!-- Column 1 END -->

        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"> <!-- Column 2 START -->
            <div class="container-fluid" style="margin-left: 10px">
                <!-- Add Hotel Start -->
                <p><h5><b>Select Country, City and Enter other characteristic </b></h5></p>
                <form action="index.php?page=4" method="POST" class="form-horizontal">
                    <div class="form-group">
                        <label class="col-xs-1 control-label" for="coid">Country:</label>
                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                            <select name="coid" class="form-control sel1" >
                                <?php
                                connect();
                                // универсал. код обратботки select
                                $res = mysql_query('SELECT * FROM Countries');
                                while ($row = mysql_fetch_array($res, MYSQL_NUM)) {
                                    echo '<option value ="'.$row[0].'">
                                    '.$row[1].'</opton>';
                                }
                                mysql_free_result($res);
                                ?>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-xs-1 control-label" for="ciid">City:</label>
                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                            <select name="ciid" class="form-control sel1">
                                <?php
                                $res = mysql_query('SELECT * FROM Cities');
                                while ($row = mysql_fetch_array($res, MYSQL_NUM)) {
                                    echo '<option value ="'.$row[0].'">
                                    '.$row[1].'</opton>';
                                }
                                mysql_free_result($res);
                                ?>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-xs-1 control-label" for="hotel">Hotel:</label>
                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                            <input type="text" name="hotel" class="form-control inp1" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-xs-1 control-label" for="cost">Cost:</label>
                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                            <input type="number" name="cost" class="form-control inp1">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-xs-1 control-label" for="stars">Stars:</label>
                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                            <input type="number" name="stars" class="form-control inp1">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-xs-1 control-label" for="info">Info:</label>
                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                            <textarea name="info" class="form-control inp1"></textarea>
                        </div>
                    </div>

                    <div class="buthot">
                        <input type='submit' value="Add Hotel" name="addhotel" class="btn btn-primary btn-gradient">
                    </div>
                </form>
                <?php
                if (isset($_POST['addhotel']))
                {
                    $countryid=$_POST['coid'];
                    $cityid=$_POST['ciid'];
                    $newhotel=trim(htmlspecialchars($_POST['hotel']));
                    $info=trim(htmlspecialchars($_POST['info']));
                    $stars=$_POST['stars'];
                    $cost=$_POST['cost'];

                    $ins='insert into hotels (hotel,countryid,cityid,cost,stars,info)values("'.$newhotel.'",'.$countryid.',
                '.$cityid.','.$cost.','.$stars.',"'.$info.'")';
                    connect();
                    mysql_query($ins);

                    $cocireq =  mysql_query('select co.country, ci.city from countries co, cities ci 
                      where ci.countryid = co.id and ci.id="'.$cityid.'"'); // GET RESOURCE
                    $row=mysql_fetch_array($cocireq, MYSQL_ASSOC); // GET ASSOC ARRAY
                    $mypath='images/hotels/'.$row['country'].'/'.$row['city'].'/'.$newhotel.'';
                    mkdir ($mypath);
                    if (mysql_errno())
                    {
                        echo mysql_error();
                    }
                }
                ?>
                <!-- Add Hotel End -->

                <!-- Add Image Start -->
                <form action="index.php?page=4" method="post" class="form-inline" enctype="multipart/form-data">
                    <select name='hid' class="form-control sel2">
                        <?php
                            connect();
                            $res=mysql_query('select * from hotels');
                            while($row=mysql_fetch_array($res, MYSQL_ASSOC))
                            {
                                echo '<option value = "'.$row['id'].'">'.$row['hotel'].'</option>';
                            }
                            mysql_free_result($res);
                        ?>
                    </select>
                    <br>
                     <input type='file' name ='hotimg[]' class="btn but" multiple accept="image/*">
                    <div class="butimg">
                        <input type="submit" name ='addimg' value='Add image' class="btn btn-primary btn-gradient">
                    </div>
                </form>

                <?php

                if(isset($_POST['addimg']))
                {
                   $hotimgreq = mysql_query('select ho.hotel, co.country, ci.city from countries co, cities ci, hotels ho
                      where ho.countryid = co.id and ho.cityid = ci.id and ho.id="'.$_POST['hid'].'"');
                   $row=mysql_fetch_array($hotimgreq, MYSQL_ASSOC);


                    foreach ($_FILES['hotimg']['name'] as $k=>$v)
                   {
//                                   if($_FILES['hotimg']['name'][$k]!=0)
//                                        continue;
                            $mypath='images/hotels/'.$row['country'].'/'.$row['city'].'/'.$row['hotel'].'/'.$v.'';
//                                        $pathimg= 'images/hotels/'.$row['country'].'/'.$row['city'].'/'.$row['hotel'].'/'.$v.'';
                       if(move_uploaded_file($_FILES['hotimg']['tmp_name'][$k],$mypath ))
                       {
                           $ins='insert into images (hotelid, imagepath)values('.$_POST['hid'].',"../images/hotels/'.$row['country'].'/'.$row['city'].'/'.$row['hotel'].'/'.$v.'")';
                           connect();
                           mysql_query($ins);
                       }
                   }
                }
                ?>
                <!-- Add Image End -->
            </div>
        </div><!-- Column 2 END -->
    </div>
    <!-- Row #1 End -->
</div>
<!-- END -->
