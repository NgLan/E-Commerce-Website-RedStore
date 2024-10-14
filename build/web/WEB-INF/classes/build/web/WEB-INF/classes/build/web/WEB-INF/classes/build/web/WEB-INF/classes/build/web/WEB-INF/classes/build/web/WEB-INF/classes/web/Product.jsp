<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Products - RedStore</title>
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
    <jsp:include page="Menu.jsp"></jsp:include>
    
    <!-- Begin: Content -->
    <div class="container">
        <!-- Title -->
        <div class="row row-2 mg-10">
            <h2>All Products</h2>
            <select name="sort" id="">
                <option value="">All Product</option>
                <c:forEach items="${listC}" var="o">
                    <option value="${o.id}">${o.name}</option>
                </c:forEach>
            </select>
        </div>
        <!-- Products -->
        <div class="row">
            <c:forEach items="${listP}" var="o">
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
                        <fmt:formatNumber type="number" pattern="###,###" value="${o.price}"></fmt:formatNumber>
                        <sup>đ</sup>
                    </p>
                </div>
            </c:forEach>
        </div>
        
        <div class="page-btn clickable">
            <span>1</span>
            <span>2</span>
            <span>3</span>
            <span>4</span>
            <span>&#10132;</span>
        </div>
    </div>
    <!-- End: Content -->

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