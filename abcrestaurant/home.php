<!DOCTYPE html>
<html lang="en">

<head>
    <?php
    include 'includes/header.php';
    session_start(); 
    ?>
</head>

<body>
   
    <header>
        <?php
            include 'includes/menu.php';
        ?>
    </header>

   
    <section class="hero">
      
    <br>
    <br>
    <br><br>
    <h1> ABC Restaurant <br> </h1>
    <br><br>
    <b><p style="font-size: 30px;">Come dine with us & experience an authentic
meal in an intimate dining space.

      Meals from the best chefs from the area to give you the best experience on your favorite cuisines.<br> We look forward to serve you!</p><b>
      <br>
      <br>
      <br>
    <a href="shop.php" class="btn">Explore the Menu</a>

    </section>



<!-- main cards -->
<section>


<ul class="cards">
  <li class="cards__item">
    <div class="card">
      <div class="card__image card__image--fence"></div>
      <div class="card__content">
        <div class="card__title">Mains</div><br>
        <p class="card__text">Main dishes including your favorite choices of rice options, spagetti, pizza and a variety of food is available.</p>
        <a href="Mains.php" class="btn">Check Now</a>
      </div>
    </div>
  </li>
  <li class="cards__item">
    <div class="card">
      <div class="card__image card__image--river"></div>
      <div class="card__content">
        <div class="card__title">Deserts</div><br>
        <p class="card__text"> Best desserts around the world with richest flavor and with finest ingredients.</p>
        <a href="Desserts.php" class="btn">Check Now</a>
      </div>
    </div>
  </li>
  <li class="cards__item">
    <div class="card">
      <div class="card__image card__image--record"></div>
      <div class="card__content">
        <div class="card__title">Drinks</div><br>
        <p class="card__text">Different variety of cocktails, mocktails and also variety of juice options are available with the finest presentation of our staff.</p>
        <a href="Beverages.php" class="btn">Check Now</a>
      </div>
    </div>
  </li>

</section>
       

        




    <footer><center>
        
                <div class="footer-col">
                  
                <center><img src="assets/images/logoo.png" alt="logo" class="footer-logo-img"></center>
                    <div class="contact">
                        <a href="#"><i class="ri-mail-line"></i> abcrestaurant@mail.com</a>
                        <a href="#"><i class="ri-phone-line"></i> +943338899</a>
                    </div>
                    <div class="social-icon">
                        <a href="https://web.facebook.com/" title="facebook">
                            <i class="ri-facebook-fill"></i>
                        </a>
                        <a href="https://www.instagram.com/" title="instagram">
                            <i class="ri-instagram-fill"></i>
                        </a>
                        <a href="https://twitter.com/" title="twitter">
                            <i class="ri-twitter-fill"></i>
                        </a>
                        <a href="https://www.linkedin.com/" title="linkedin">
                            <i class="ri-linkedin-fill"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
</center>
    </footer>

    
</body>

</html>