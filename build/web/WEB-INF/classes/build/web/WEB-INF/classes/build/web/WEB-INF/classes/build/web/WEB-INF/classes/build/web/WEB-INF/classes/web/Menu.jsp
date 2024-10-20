<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Begin: Header -->
<div class="navbar">
    <div class="logo">
        <a href="home"><img src="assets/images/logo.png" alt="Logo" width="125px"></a>
    </div>
    <nav>
        <ul id="MenuItems">
            <li><a href="home">Home</a></li>
            <li><a href="product">Products</a></li>
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
<!-- End: Header -->