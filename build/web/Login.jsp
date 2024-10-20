<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    
    <!-- Account Page -->
    <div class="account-page">
        <div class="container">
            <div class="row">
                <div class="col-2">
                    <img src="assets/images/image1.png" width="100%" alt="">
                </div>
                <div class="col-2">
                    <div class="form-container">
                        <div class="form-btn">
                            <span class="clickable" onclick="login()">Login</span>
                            <span class="clickable" onclick="register()">Register</span>
                            <hr id="Indicator">
                        </div>
                        
                        <form action="login" id="LoginForm" method="post">
                            <p class="text-danger">${wrong_login}</p>
                            <input name="user" type="text" placeholder="Username" required="">
                            <input name="password" type="password" placeholder="Password" required="">
                            <button type="submit" class="btn clickable">Login</button>
                            <a href="#" class="a-decoration">Forgot password</a>
                        </form>
                        
                        <form action="register" id="RegForm" method="post">
                            <p class="text-danger">${wrong_signup}</p>
                            <input name="user" type="text" placeholder="Username" required="">
                            <input name="pass" type="password" placeholder="Password" required="">
                            <input name="repass" type="password" placeholder="Re-enter password" required="">
                            <button type="submit" class="btn clickable">Register</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="Footer.jsp"></jsp:include>

    <!-- JavaScript -->
        <!-- Toggle Menu -->
    <script>
        var MenuItems = document.getElementById("MenuItems");
        var MenuIcon = document.querySelector(".menu-icon");

        // Đóng/mở menu
        MenuIcon.onclick = function menutoggle() {
            if (MenuItems.style.display == '') {
                MenuItems.style.display = 'block';
            } else {
                MenuItems.style.display = '';
            }
        }
    </script>

        <!-- Toggle Form -->
    <script>
        var LoginForm = document.getElementById("LoginForm");
        var RegForm = document.getElementById("RegForm");
        var Indicator = document.getElementById("Indicator");

        function register() {
            RegForm.style.transform = "translateX(0px)";
            LoginForm.style.transform = "translateX(0px)";
            Indicator.style.transform = "translateX(105px)";
        }

        function login() {
            RegForm.style.transform = "translateX(300px)";
            LoginForm.style.transform = "translateX(300px)";
            Indicator.style.transform = "translateX(0px)";
        }
    </script>
    <!-- End JavaScript -->
</body>
</html>