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

    <!-- Cart items details -->
    <div class="container cart-page">
        <table>
            <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Size</th>
                <th>Color</th>
                <th>Subtotal</th>
            </tr>
            
                <tr>
                    <td>
                        <div class="cart-info">
                            <img src="assets/images/product/product-1.jpg" alt="">
                            <div>
                                <p>${listP[0].name}</p>
                                <small>Price: 
                                    <fmt:formatNumber>${listP[0].price}</fmt:formatNumber><sup>đ</sup>
                                </small>
                                <a href="">Remove</a>
                            </div>
                        </div>
                    <td><input type="number" value="${p.quantity}" min="1"></td>
                    <td>
                        <select name="size">
                            <c:forEach items="${listS}" var="o">
                                <option value="${o.id}" >${listP[0].name}</option>
                            </c:forEach>
                        </select>
                    </td>
                    <td>
                        <select name="color">
                            <c:forEach items="${listC}" var="o">
                                <option value="${o.id}">${o.name}</option>
                            </c:forEach>
                        </select>
                    </td>
                    <td>
                        <c:set var="subTotal" scope="session" value="${p.price * p.quantity}"></c:set>
                        <fmt:formatNumber>${listP[0].price}</fmt:formatNumber>
                        <c:out value="${subTotal}"></c:out><sup>đ</sup>
                        
                    </td>
                </tr>
            
        </table>

        <div class="line"></div>
        
        <div class="total-price">
            <table>
                <tr>
                    <td>Subtotal</td>
                    <td>$200.00</td>
                </tr>
                <tr>
                    <td>Tax</td>
                    <td>$35.00</td>
                </tr>
                <tr>
                    <td>Total</td>
                    <td>$235.00</td>
                </tr>
            </table>
        </div>
    </div>

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
    <!-- End JavaScript -->
</body>
</html>