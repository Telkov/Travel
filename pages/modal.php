<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-body">
          <form action="index.php" method='POST' class="navbar-form">
            <input type="text" name='logname' size='10' placeholder="Username" class="form-control mod1">
            <br>             
            <input type="password" name='logpass' size='10' placeholder="Password" class="form-control mod1">
            <br>
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="submit" name ='log' class="btn btn-success"  id="sign">Sign in</button>
          </form>
        </div>
      </div>
    </div>
  </div>
<?php
if(isset($_POST['log'])){
    login($_POST['logname'],$_POST['logpass']);
    echo '<script>window.location=document.URL</script>';
}
?>