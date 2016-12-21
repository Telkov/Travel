<div class="container" style="margin-left:10px;">
    <form action="index.php?page=2" class="form" method="post" style="margin-top: 20px">
        <select name="hid" class="form-control" style="width:auto">
            <?php
            connect();
            $res=mysql_query("select h.id, h.hotel, co.country, ci.city
                from hotels h, countries co, cities ci where h.countryid = co.id and h.cityid = ci.id order by h.hotel");
            while ($row=mysql_fetch_array($res,MYSQL_NUM)) {
                echo '<option value = "'.$row[0].'">'.
                    $row[1]."    ".$row[2]."    ".$row[3].'</option>';
            }
            mysql_free_result($res);
            ?>
        </select>

        <textarea name ="comm" class="form-control" style="width: 300px;height:70px; margin-top:7px">

        </textarea>

        <input type="submit" name="addcomm" value="Add Comment" class="btn btn-primary btn-gradient" style="margin-top:7px">
    </form>
    <?php
    if(isset($_POST['addcomm'])){
        if(!isset($_SESSION['reguser'])) return;
        $hotelid=$_POST['hid'];
        $d=@date("Y/m/d H:i:s");
        $text=trim(htmlspecialchars($_POST['comm']));
        $userid=$_SESSION['reguser'];
        connect();
        $ins='insert into Comments(userid, hotelid, text, datein) values('.$userid.','.$hotelid.', "'.$text.'", "'.$d.'")';
        mysql_query($ins);
    }
    ?>
</div>
