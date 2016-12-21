<nav class="navbar navbar-default">
    <div class="navbar-header">
        <a class="navbar-brand" href="../index.php">BRAND ico</a>
    </div>
    <ul class="nav navbar-nav">
        <li>
            <a class="navbar-brand" href="../index.php">
                <img id="home-icon" src="../images/home-button.png" alt="Home">
            </a>
        </li>
        <li>
            <a class="navbar-brand" href="tours.php">Tours</a>
        </li>
        <?php
        if (isset($_SESSION[$user])){
            echo '<li><a class="navbar-brand" 
                      href="comments.php">Comments</a></li>';
        }
        ?>
        <li><a class="navbar-brand" href="contacts.php">Contacts</a></li>
        <?php
        if (isset($_SESSION['radmin'])){
            echo '<li><a class="navbar-brand" 
                      href="admin.php">Admin</a></li>';
        }
        ?>

        <li><div class="navbar-brand-search">
                <form action="" method="POST" id="search-block-form">
                    <div class="form-item">
                        <input type="text" name="" value="" maxlength="128" placeholder="Search...">
                    </div>
                    <div class="form-actions">
                        <input type="submit" value="Search" class="form-submit">
                    </div>
                </form>
            </div>
        </li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
        <?php

        if (isset($_SESSION[$user])){
            echo '<form method="POST">';
            echo '<li><button type="submit" name="out" class="btn btn-link navbar-brand">
                       <i class="glyphicon glyphicon-log-out"><font face="Tahoma">Logout</font></i></button></li>';
            echo '</form>';
            if (isset($_POST['out'])) {
                unset($_SESSION[$user]);
                echo '<script>window.location.reload()</script>';
            }

        }
        else{
            echo '<li><a class="navbar-brand" href="register.php"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                      <li><a class="navbar-brand" data-toggle="modal" style="cursor: pointer" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>';
        }
        ?>
    </ul>
</nav>

<?php 
  include_once('modal.php');
?>