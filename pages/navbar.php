<nav class="navbar navbar-default">
    <div class="navbar-header">
        <a class="navbar-brand" href="index.php?page=0">BRAND ico</a>
    </div>
    <ul class="nav navbar-nav">
        <li><a class="navbar-brand" href="index.php?page=0">
                <img id="home-icon" src="images/home-button.png" alt="Home"></a></li>
        <li><a class="navbar-brand" href="index.php?page=1">Tours</a></li>

        <?php
        if (isset($_SESSION[$user])){
            echo '<li><a class="navbar-brand" href="index.php?page=2">Comments</a></li>';
        }
        ?>
        <li><a class="navbar-brand" href="index.php?page=3">Contacts</a></li>
        <?php
        if (isset($_SESSION['radmin'])){
            echo '<li><a class="navbar-brand" href="index.php?page=4">Admin</a></li>';
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
                echo '<script>window.location=document.URL</script>';
            }

        }
        else{
            echo '<li><a class="navbar-brand" href="index.php?page=5"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
              <li><a class="navbar-brand" data-toggle="modal" style="cursor: pointer" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>';
        }
        ?>

    </ul>
</nav>