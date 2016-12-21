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
		<div class="bs-docs-example">
		    <?php
		    connect();
		    echo '<div class="btn-group show-tick">';
		    echo '<select name="coid[]" id="coid" value="" multiple class="selectpicker sel1" data-selected-text-format="count" data-max-options="3" onchange="showCities(this.value)">';
		    $res=mysql_query('select * from Countries');
		    while($row=mysql_fetch_array($res,MYSQL_NUM)) {
                echo '<option value="' . $row[0] . '">' . $row[1] . '</option>';
            }
		    echo '</select>';
		    echo '</div>';

            echo '<div class="btn-group show-tick" style="margin-left:20px;">';
            echo '<select name="ciid[]" id="ciid" class="form-control sel1">';
            echo '</select>';
            echo '</div>';
            echo '<div id="h"></div>';

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
            <?php
		    ?>
		</div>

        <div class="container">
            <form name="form">
                <select class="selectpicker" onchange="test(this.value)" name="genre" multiple>
                    <option value="1">Мягкий блюз</option>
                    <option value="2">Жёсткий рок</option>
                    <option value="3">Классика</option>
                </select>
            </form>

            <script>
                function test() {
                    var form = document.forms[0];
                    var select = form.elements.genre;
                    var x0 = new Array();
                    for (var i = 0; i < select.options.length; i++) {
                        var option = select.options[i];
                        if (option.selected) {
                            x0.push(option.value);
                        }
                    }

                    if(x0==''){
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
                            }
                        }
                        ao.open('GET', 'pages/ajax1.php?coid=' + x0);
                        ao.send(null);
                    }
                }
            </script>
        </div>
</body>
</html>


