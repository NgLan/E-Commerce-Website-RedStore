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

    <!-- Single product details -->
    <div class="container single-product">
        <div class="row">
            <div class="col-2">
                <img src="assets/images/product/subImage/${listSImage[0]}" id="ProductImg" width="100%" alt="">
                <div class="small-img-row">
                    <c:forEach items="${listSImage}" var="o">
                        <div class="small-img-col clickable">
                            <img src="assets/images/product/subImage/${o}" class="small-img" width="100%" alt="">
                        </div>
                    </c:forEach>
                </div>
            </div>
            <div class="col-2">
                <p><a href="home">Home</a> / T-Shirt</p>
                <h1>${product.name}</h1>
                <h4>
                    <fmt:formatNumber type="number" pattern="###,###" value="${product.price}"></fmt:formatNumber><sup>đ</sup>
                </h4>
                <form action="add_to_cart" method="post" id="add2cart">
                    <input type="hidden" name="pid" value="${product.id}">
                    <select name="size" id="" class="width-fit-content buy-option" required>
                        <option selected>Select Size</option>
                        <c:forEach items="${listS}" var="o">
                            <option value="${o.id}">${o.name}</option>
                        </c:forEach>
                    </select>
                    <select name="color" id="" class="width-fit-content buy-option" required>
                        <option selected>Select Color</option>
                        <c:forEach items="${listColor}" var="o">
                            <option value="${o.id}">${o.name}</option>
                        </c:forEach>
                    </select>
                    <input name="quantity" type="number" class="width-fit-content buy-option" min="1" required>
                </form>
                <button type="submit" form="add2cart" class="btn a-decoration-none">Add To Cart</button>
                <h3>Product Details <i class="fa-solid fa-indent indent"></i></h3>
                <p>${product.description}</p>
            </div>
        </div>
    </div>

    <!-- Begin: Content -->
    <div class="container">
        <!-- Title -->
        <div class="row row-2 mg-10">
            <h2>Related Products</h2>
            <p>View more</p>
        </div>
        <!-- Products -->
        <div class="row">
            <c:forEach items="${listP}" var="o">
                <div class="col-4">
                    <a href="product_detail?pid=${o.id}" class="clickable">
                        <img src="assets/images/product/${o.image}" alt="">
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
                        <fmt:formatNumber type="number" pattern="###,###" value="${o.price}"></fmt:formatNumber><sup>đ</sup>
                    </p>
                </div>
            </c:forEach>
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

        <!-- Gallery -->
    <script>
        var ProductImg = document.getElementById("ProductImg");
        var SmallImg = document.getElementsByClassName("small-img");

        SmallImg[0].onclick = function() {
            ProductImg.src = SmallImg[0].src;
        }
        SmallImg[1].onclick = function() {
            ProductImg.src = SmallImg[1].src;
        }
        SmallImg[2].onclick = function() {
            ProductImg.src = SmallImg[2].src;
        }
        SmallImg[3].onclick = function() {
            ProductImg.src = SmallImg[3].src;
        }
    </script>
    <!-- End JavaScript -->
</body>
</html>