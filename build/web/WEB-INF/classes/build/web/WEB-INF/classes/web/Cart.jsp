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
            <c:forEach items="${listP}" var="p">
                <tr>
                    <td>
                        <div class="cart-info">
                            <img src="assets/images/product/${p.image}" alt="">
                            <div>
                                <p>${p.name}</p>
                                <small>Price: 
                                    <fmt:formatNumber type="number" pattern="###,###" value="${p.price}"></fmt:formatNumber><sup>đ</sup>
                                </small>
                                <a href="">Remove</a>
                            </div>
                        </div>
                    </td>
                    <td><input type="number" value="${p.quantity}" min="1"></td>
                    <td>
                        <select name="size">
                            <option value="${p.sizeID}" selected>${p.size}</option>
                            <c:forEach items="${listS}" var="o">
                                <option value="${o.id}" >${o.name}</option>
                            </c:forEach>
                        </select>
                    </td>
                    <td>
                        <select name="color">
                            <option value="${p.colorID}" selected>${p.color}</option>
                            <c:forEach items="${listC}" var="o">
                                <option value="${o.id}">${o.name}</option>
                            </c:forEach>
                        </select>
                    </td>
                    <td>
                        <c:set var="subTotal" value="${p.price*p.quantity}"></c:set>
                        <fmt:formatNumber type="number" pattern="###,###" value="${subTotal}"></fmt:formatNumber><sup>đ</sup>
                    </td>
                </tr>
            </c:forEach>
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