<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RedStore | Ecommerce Website Design</title>
    <!-- Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/da12da5f88.js" crossorigin="anonymous"></script>
    <!-- CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
</head>
<body>
    <!-- Begin: Header -->
    <div id="header">
        <div class="navbar">
            <div class="logo">
                <a href="index.html"><img src="assets/images/logo.png" alt="Logo" width="125px"></a>
            </div>
            <nav>
                <ul id="MenuItems">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="products.html">Products</a></li>
                    <li><a href="">About</a></li>
                    <li><a href="">Contact</a></li>
                    <li><a href="account.html">Account</a></li>
                </ul>
            </nav>
            <a href="cart.html"><img src="assets/images/cart.png" alt="Cart" height="30px" width="30px" class="clickable"></a>
            <img src="assets/images/menu.png" alt="Menu" class="clickable menu-icon">
        </div> 
           
        <div class="row">
            <div class="col-2">
                <h1>Give Your Workout<br>A New Style!</h1>
                <p>Success isn't always about greatness. It's about consistency. Consistent hard work gain success. Greatness wil come.</p>
                <a href="" class="btn">Explore Now &#10132;</a>
            </div>
            <div class="col-2">
                <img src="assets/images/image1.png" alt="">
            </div>
        </div>
    </div>
    <!-- End: Header -->

    <!-- Begin: Content -->
        <!-- Featured categories -->
    <div class="container">
        <div class="row">
            <div class="col-3"><img src="assets/images/category-1.jpg" alt=""></div>
            <div class="col-3"><img src="assets/images/category-2.jpg" alt=""></div>
            <div class="col-3"><img src="assets/images/category-3.jpg" alt=""></div>
        </div>        
    </div>

        <!-- Featured products -->
    <div class="container">
        <h2 class="title">Featured Products</h2>
        <div class="row">
            <div class="col-4 clickable">
                <a href="product-details.html">
                    <img src="assets/images/product-1.jpg" alt="">
                </a>
                <a href="product-details.html">
                    <h4>Red Printed T-Shirt</h4>
                </a>
                <div class="rating main-color">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                </div>
                <p>$50.00</p>
            </div>
            <div class="col-4 clickable">
                <img src="assets/images/product-2.jpg" alt="">
                <h4>Red Printed T-Shirt</h4>
                <div class="rating main-color">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star-half-stroke"></i>
                    <i class="fa-regular fa-star"></i>
                </div>
                <p>$50.00</p>
            </div>
            <div class="col-4 clickable">
                <img src="assets/images/product-3.jpg" alt="">
                <h4>Red Printed T-Shirt</h4>
                <div class="rating main-color">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star-half-stroke"></i>
                </div>
                <p>$50.00</p>
            </div>
            <div class="col-4 clickable">
                <img src="assets/images/product-4.jpg" alt="">
                <h4>Red Printed T-Shirt</h4>
                <div class="rating main-color">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                </div>
                <p>$50.00</p>
            </div>
        </div>

        <h2 class="title">Latest Products</h2>
        <div class="row">
            <div class="col-4 clickable">
                <img src="assets/images/product-5.jpg" alt="">
                <h4>Red Printed T-Shirt</h4>
                <div class="rating main-color">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                </div>
                <p>$50.00</p>
            </div>
            <div class="col-4 clickable">
                <img src="assets/images/product-6.jpg" alt="">
                <h4>Red Printed T-Shirt</h4>
                <div class="rating main-color">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star-half-stroke"></i>
                    <i class="fa-regular fa-star"></i>
                </div>
                <p>$50.00</p>
            </div>
            <div class="col-4 clickable">
                <img src="assets/images/product-7.jpg" alt="">
                <h4>Red Printed T-Shirt</h4>
                <div class="rating main-color">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star-half-stroke"></i>
                </div>
                <p>$50.00</p>
            </div>
            <div class="col-4 clickable">
                <img src="assets/images/product-8.jpg" alt="">
                <h4>Red Printed T-Shirt</h4>
                <div class="rating main-color">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                </div>
                <p>$50.00</p>
            </div>
        </div>
        <div class="row">
            <div class="col-4 clickable">
                <img src="assets/images/product-9.jpg" alt="">
                <h4>Red Printed T-Shirt</h4>
                <div class="rating main-color">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                </div>
                <p>$50.00</p>
            </div>
            <div class="col-4 clickable">
                <img src="assets/images/product-10.jpg" alt="">
                <h4>Red Printed T-Shirt</h4>
                <div class="rating main-color">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star-half-stroke"></i>
                    <i class="fa-regular fa-star"></i>
                </div>
                <p>$50.00</p>
            </div>
            <div class="col-4 clickable">
                <img src="assets/images/product-11.jpg" alt="">
                <h4>Red Printed T-Shirt</h4>
                <div class="rating main-color">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star-half-stroke"></i>
                </div>
                <p>$50.00</p>
            </div>
            <div class="col-4 clickable">
                <img src="assets/images/product-12.jpg" alt="">
                <h4>Red Printed T-Shirt</h4>
                <div class="rating main-color">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                </div>
                <p>$50.00</p>
            </div>
        </div>
    </div>

        <!-- Offer -->
    <div class="offer">
        <div class="container">
            <div class="row">
                <div class="col-2">
                    <img src="assets/images/exclusive.png" alt="" class="offer-img">
                </div>
                <div class="col-2">
                    <p>Exclusively Available on RedStore</p>
                    <h1>Smart Band 4</h1>
                    <small>
                        The Mi Smart Band 4 features a 39.9% larger 
                        (than Mi Band 3) AMOLED color full-touch display width
                        adjustable brightness, so everything is clear as can 
                        be.
                    </small>
                    <a href="" class="btn">Buy Now &#10132;</a>
                </div>
            </div>
        </div>
    </div>

        <!-- Testimonial -->
    <div class="testimonial">
        <div class="container">
            <div class="row">
                <div class="col-3 clickable">
                    <i class="main-color quote fa-solid fa-quote-left"></i>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                    Pariatur minima, necessitatibus sequi tempora sunt cupiditate 
                    nisi alias error aperiam harum delectus minus voluptates quia 
                    commodi! Nostrum, sapiente! Aperiam, modi vero.</p>
                    <div class="rating main-color">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                    </div>
                    <img src="assets/images/user-1.png" alt="">
                    <h3>Sean Parker</h3>
                </div>
                <div class="col-3 clickable">
                    <i class="main-color quote fa-solid fa-quote-left"></i>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                    Pariatur minima, necessitatibus sequi tempora sunt cupiditate 
                    nisi alias error aperiam harum delectus minus voluptates quia 
                    commodi! Nostrum, sapiente! Aperiam, modi vero.</p>
                    <div class="rating main-color">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                    </div>
                    <img src="assets/images/user-2.png" alt="">
                    <h3>Mike Smith</h3>
                </div>
                <div class="col-3 clickable">
                    <i class="main-color quote fa-solid fa-quote-left"></i>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                    Pariatur minima, necessitatibus sequi tempora sunt cupiditate 
                    nisi alias error aperiam harum delectus minus voluptates quia 
                    commodi! Nostrum, sapiente! Aperiam, modi vero.</p>
                    <div class="rating main-color">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                    </div>
                    <img src="assets/images/user-3.png" alt="">
                    <h3>Mabel Joe</h3>
                </div>
            </div>
        </div>
    </div>

        <!-- Brands -->
    <div class="brands">
        <div class="container">
            <div class="row">
                <div class="col-5 clickable">
                    <img src="assets/images/logo-godrej.png" alt="">
                </div>
                <div class="col-5 clickable">
                    <img src="assets/images/logo-oppo.png" alt="">
                </div>
                <div class="col-5 clickable">
                    <img src="assets/images/logo-coca-cola.png" alt="">
                </div>
                <div class="col-5 clickable">
                    <img src="assets/images/logo-paypal.png" alt="">
                </div>
                <div class="col-5 clickable">
                    <img src="assets/images/logo-philips.png" alt="">
                </div>
            </div>
        </div>
    </div>   
    <!-- End: Content -->

    <!-- Footer -->
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col-1">
                    <h3>Download Our App</h3>
                    <p>Download App for Android and IOS mobile phone.</p>
                    <div class="app-logo">
                        <img src="assets/images/play-store.png" alt="">
                        <img src="assets/images/app-store.png" alt="">
                    </div>
                </div>
                <div class="footer-col-2">
                    <img src="assets/images/logo-white.png" alt="">
                    <p>Our Purpose Is To Sustainably Make the Pleasure and Benefits of Sports Accessible to the Many.</p>
                </div>
                <div class="footer-col-3">
                    <h3>Useful Links</h3>
                    <ul>
                        <li>Coupons</li>
                        <li>Blog Post</li>
                        <li>Return Policy</li>
                        <li>Join Affiliate</li>
                    </ul>
                </div>
                <div class="footer-col-4">
                    <h3>Follow us</h3>
                    <ul>
                        <li>Facebook</li>
                        <li>Twitter</li>
                        <li>Instagram</li>
                        <li>Youtube</li>
                    </ul>
                </div>
            </div>
            <hr>
            <p class="copyright">Copyright 2020 - Easy Tutorials</p>
        </div>
    </div>

    <!-- JavaScript -->
        <!-- Toggle Menu -->
    <script>
        var MenuItems = document.getElementById("MenuItems");
        var MenuIcon = document.querySelector(".menu-icon");

        // ÄÃ³ng/má» menu
        MenuIcon.onclick = function menutoggle() {
            if (MenuItems.style.display == '') {
                MenuItems.style.display = 'block';
            } else {
                MenuItems.style.display = '';
            }
        }
    </script>
</body>
</html>