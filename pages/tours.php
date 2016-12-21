<!--START-->
<div class="bs-docs-example">

    <?php
    connect();
    echo '<div class="btn-group show-tick">';
    echo '<select name="coid[]" id="coid" value="" class="form-control sel1" onchange="showCities(this.value)">';
    $res=mysql_query('select * from Countries');
    while($row=mysql_fetch_array($res,MYSQL_NUM)){
        echo '<option value="'.$row[0].'">'.$row[1].'</option>';
    }
    echo '</select>';
    echo '</div>';
    echo '<div class="btn-group show-tick" style="margin-left:20px;">';
    echo '<select name="ciid" id="ciid" class="form-control sel1" onchange="showHotels(this.value)">';
    echo '</select>';
    echo '</div>';
    echo '<div id=h></div>';
    ?>
    <script>
        function showCities(countryid){
            if(countryid==''){
                document.getElementById('ciid').innerHTML="";
            }
            if(window.XMLHttpRequest){
                ao=new XMLHttpRequest();
            }
            else{
                ao=new ActiveXObject('Microsoft.XMLHTTP');
            }
            ao.onreadystatechange=function(){
                if(ao.readyState==4 && ao.status==200){
                    document.getElementById('ciid').innerHTML=ao.responseText;
                }
            }
            ao.open('GET','pages/ajax1.php?coid='+countryid);
            ao.send(null);
        }
    </script>

</div>
<!--END-->
