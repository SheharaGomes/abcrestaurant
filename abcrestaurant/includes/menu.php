<nav id="nav">
    <div class="container">
        <!-- ABC restaurant Logo -->
        
        <a href="home.php" class="">
            <img class="navbar-brand" src="assets\images\logoo.png" alt="logo">
        </a>
        <!-- top bar -->
        <ul class="navbar" id="navbar">
            <li class="navbar-item">
                <a class="navbar-link" href="home.php">Home</a>
            </li>
            
            <li class="navbar-item">
                <a class="navbar-link" href="about.php">About Us</a>
            </li>
            <li class="navbar-item">
                <a class="navbar-link" href="contact.php">Reservations</a>
            </li>
            <li class="navbar-item">
                <a class="navbar-link" href=""> | </a>
            </li>
            <li class="navbar-item">
                <a class="navbar-link" href="shop.php">All Items</a>
            </li>
            <li class="navbar-item">
                <a class="navbar-link" href="Mains.php">Mains</a>
            </li>
            <li class="navbar-item">
                <a class="navbar-link" href="Desserts.php">Desserts</a>
            </li>
            <li class="navbar-item">
                <a class="navbar-link" href="Drinks.php">Drinks</a>
            </li>
           
        </ul>
        <ul class="sign-btn">
            <?php
            if (isset($_SESSION['authenticated']) && $_SESSION['authenticated'] === true) {
                $username = $_SESSION['username'];
                ?>
    
                
                <div class="login-menu subnav">
                    <span class='navbar-link'>
                        <?php echo $username; ?>
                    </span>
                    <ul class="subnav-content">
                        <li class="logout"><a href="logout.php"> Log Out</a></li>
                    </ul>
                </div>

                <?php
            } else {
                echo "<li class='navbar-item'>
                                    <a class='navbar-link' href='signin.php'><i class='ri-user-line'></i></a>
                                </li>";
            }
            ?>

        </ul>
    </div>
</nav>