<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                <a href="home"><img src="assets/images/logo.png" alt="Logo" width="125px"></a>
            </div>
            <nav>
                <ul id="MenuItems">
                    <li><a href="home">Home</a></li>
                    <li><a href="product?sort=0">Products</a></li>
                    <li><a href="home">About</a></li>
                    <li><a href="home">Contact</a></li>
                    <c:if test="${sessionScope.acc == null}">
                        <li><a href="login">Login</a></li>
                    </c:if>
                    <c:if test="${sessionScope.acc != null}">
                        <li><a href="logout">Logout</a></li>
                    </c:if>
                </ul>
            </nav>
            <c:if test="${sessionScope.acc == null}">
                <a href="login"><img src="assets/images/cart.png" alt="Cart" height="30px" width="30px" class="clickable"></a>
            </c:if>
            <c:if test="${sessionScope.acc != null}">
                <a href="cart"><img src="assets/images/cart.png" alt="Cart" height="30px" width="30px" class="clickable"></a>
            </c:if>
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
            <c:forEach items="${listC}" end="2" var="o">
                <div class="col-3"><img src="assets/images/category/${o.image}" alt=""></div>
            </c:forEach>
        </div>        
    </div>

        <!-- Featured products -->
    <div class="container">
        <h2 class="title">Featured Products</h2>
        <div class="row">
            <c:forEach items="${listFP}" var="o">
                <div class="col-4 clickable">
                    <a href="product-details.html">
                        <img src="assets/images/product/${o.image}" alt="">
                    </a>
                    <a href="product-details.html">
                        <h4>${o.name}</h4>
                    </a>
                    <div class="rating main-color">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                    </div>
                        <p>
                            <fmt:formatNumber value="${o.price}" pattern="###,###"></fmt:formatNumber><sup>đ</sup>
                        </p>
                </div>
            </c:forEach>
        </div>

        <h2 class="title">Latest Products</h2>
        <div class="row">
            <c:forEach items="${lastP}" var="o">
                <div class="col-4 clickable">
                    <img src="assets/images/product/${o.image}" alt="">
                    <h4>${o.name}</h4>
                    <div class="rating main-color">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                    </div>
                    <p>
                        <fmt:formatNumber value="${o.price}" pattern="###,###"></fmt:formatNumber><sup>đ</sup>
                    </p>
                </div>
            </c:forEach>
        </div>
    </div>

        <!-- Offer -->
    <div class="offer">
        <div class="container">
            <div class="row">
                <div class="col-2">
                    <img src="assets/images/product/exclusive.png" alt="" class="offer-img">
                </div>
                <div class="col-2">
                    <p>Exclusively Available on RedStore</p>          
                    <h1>${exP.name}</h1>
                    <small>${exP.description}</small>
                    <a href="" class="btn">Buy Now &#10132;</a>
                </div>
            </div>
        </div>
    </div>

        <!-- Testimonial -->
    <div class="testimonial">
        <div class="container">
            <div class="row">
                <c:forEach items="${listFB}" var="o">
                    <div class="col-3 clickable">
                        <i class="main-color quote fa-solid fa-quote-left"></i>
                        <p>${o.review}</p>
                        <div class="rating main-color">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                        <img src="assets/images/user/${o.image}" alt="">
                        <h3>${o.name}</h3>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>

        <!-- Brands -->
    <div class="brands">
        <div class="container">
            <div class="row">
                <div class="col-5 clickable">
                    <img src="assets/images/logo/logo-godrej.png" alt="">
                </div>
                <div class="col-5 clickable">
                    <img src="assets/images/logo/logo-oppo.png" alt="">
                </div>
                <div class="col-5 clickable">
                    <img src="assets/images/logo/logo-coca-cola.png" alt="">
                </div>
                <div class="col-5 clickable">
                    <img src="assets/images/logo/logo-paypal.png" alt="">
                </div>
                <div class="col-5 clickable">
                    <img src="assets/images/logo/logo-philips.png" alt="">
                </div>
            </div>
        </div>
    </div>   
    <!-- End: Content -->
    <!--Footer-->
    <jsp:include page="Footer.jsp"></jsp:include>

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