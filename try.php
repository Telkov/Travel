<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-select.min.js"></script>
    <!-- Bootstrap -->
    <link href="CSS/bootstrap.min.css" rel="stylesheet">
    <link href="CSS/bootstrap-select.min.css" rel="stylesheet">
    <link href="CSS/style.css" rel="stylesheet">
</head>
<body>
<?php include_once('pages/functions.php'); ?>
<!--START-->
<!--echo '<select name="coid" id="coid" value="" multiple class="selectpicker sel1" data-selected-text-format="count" data-max-options="3" onchange="showCities(this.value)">';-->

<div class="bs-docs-example">

    <div class="btn-group show-tick" style="margin-left:20px;">;
        <form name="form">
            <select multiple class="selectpicker sel1" name="showcity" data-max-options="3" onchange="ShowCity(this.value)"  >
                <?php
                connect();
                $res=mysql_query('select * from Countries');
                while($row=mysql_fetch_array($res,MYSQL_NUM)) {
                    echo '<option value="' . $row[0] . '">' . $row[1] . '</option>';
                }
                ?>
            </select>
        </form>
    </div>;
    <div id = "ciid" class="btn-group show-tick" style="margin-left:20px;">;
<!--        <select multiple class="form-control sel1" name="ciid" id="ciid">;-->
<!--        </select>;-->
    </div>;
    <script>
        function ShowCity() {
            var form = document.forms[0];
            var select = form.elements.showcity;
            var coidarray = new Array();
            for (var i = 0; i < select.options.length; i++) {
                var option = select.options[i];
                if (option.selected) {
                    coidarray.push(option.value);
                }
            }

            if(coidarray==''){
                document.getElementById('ciid').innerHTML="";
            }
            else {
                if (window.XMLHttpRequest) {
                    ao = new XMLHttpRequest();
                }
                else {
                    ao = new ActiveXObject('Microsoft.XMLHTTP');
                }
                ao.onreadystatechange = function () {
                    if (ao.readyState == 4 && ao.status == 200) {
                        document.getElementById('ciid').innerHTML = ao.responseText;
//                        alert(ao.responseText);
//                        document.write(ao.responseText);
                    }
                }
                ao.open('GET', 'pages/ajax1.php?coid=' + coidarray);
                ao.send(null);
            }
        }
    </script>
</body>
</html>


