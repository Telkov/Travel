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





</div>
<!--  <input type="submit" name="delcity" value="DELETE City" class="btn btn-warning del1" style="margin-top: 10px"> -->
</div>
