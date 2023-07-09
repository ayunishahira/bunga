<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php @include 'header.php'; ?>

<section class="heading">
    <h3>about us</h3>
    <p> <a href="home.php">home</a> / about </p>
</section>

<section class="about">

    <div class="flex">

        <div class="image">
            <img src="images/about-img-1.png" alt="">
        </div>

        <div class="content">
            <h3>why choose us?</h3>
            <p>Now you can order flowers online from our online flower shop Malaysia and get the delivery of fresh flowers for all occasions at door steps. bunga has made the process easier for you people.</p>
            <a href="shop.php" class="btn">shop now</a>
        </div>

    </div>

    <div class="flex">

        <div class="content">
            <h3>what we provide?</h3>
            <p>If you want to amaze or surprise your family or dear ones, what can be a better option than flower arrangements? Being a trusted online florist in Malaysia, we provide various gift services to our clients with home delivery services that serve the cherry on the cake. Our hassle-free delivery at your doorstep will make your shopping experience worth the while.</p>
            <a href="contact.php" class="btn">contact us</a>
        </div>

        <div class="image">
            <img src="images/about-img-2.jpg" alt="">
        </div>

    </div>

    <div class="flex">

        <div class="image">
            <img src="images/about-img-3.jpg" alt="">
        </div>

        <div class="content">
            <h3>who we are?</h3>
            <p>bunga is your go-to online florist and gift shop for all of life's important occasions. Dedicated to bringing you the freshest, most beautiful blooms and unique gifts, we're here to connect you with your favourite present for any occasion with same-day delivery.</p>
            <a href="#reviews" class="btn">clients reviews</a>
        </div>

    </div>

</section>

<section class="reviews" id="reviews">

    <h1 class="title">client's reviews</h1>

    <div class="box-container">

        <div class="box">
            <img src="images/pic-1.jpg" alt="">
            <p>First time ordering from them and they are very efficient! Thank you so much. Happy with my purchase. Flowers are fresh. Delivery done without any hassle.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Hannah Delisha</h3>
        </div>

        <div class="box">
            <img src="images/pic-2.jpg" alt="">
            <p>All i can say im pleased how the flowers look exactly like the photo shown. Perfect flowers! Thank you for sending it first thing in the morning.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Lee Sung Kyung</h3>
        </div>

        <div class="box">
            <img src="images/pic-3.jpg" alt="">
            <p>Thank you bunga for your exceptional customer service. I was delighted with the very quick response and you went above and beyond in assisting me with delivery timeframes.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Joshua</h3>
        </div>

        <div class="box">
            <img src="images/pic-4.jpg" alt="">
            <p>I'm a regular customer. Always a pleasure to shop as they have many updated choices. Delivery process is always an awesome experience. Thanks bunga!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Nur Asyiqin</h3>
        </div>

        <div class="box">
            <img src="images/pic-5.jpg" alt="">
            <p>Beautiful flowers, and my mom loves it. Support helpdesk was super professional, helpful, and friendly. Would definitely be a returning customer. Keep up the good work bunga.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Farah Lee</h3>
        </div>

        <div class="box">
            <img src="images/pic-6.jpg" alt="">
            <p>Thank you bunga for the prompt delivery and fresh flowers. It was my first online order and I didn’t regret it. The flowers were as it was advertised on the website, fresh and pretty!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Imran Bard</h3>
        </div>

    </div>

</section>











<?php @include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>