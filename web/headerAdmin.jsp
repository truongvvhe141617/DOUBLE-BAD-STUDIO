<%-- 
    Document   : headerAdmin
    Created on : Mar 11, 2021, 11:05:13 AM
    Author     : Vuong Van Truong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <head>
        <title>Dashboard | Klorofil - Free Bootstrap Dashboard Template</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <!-- VENDOR CSS -->
        <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/vendor/linearicons/style.css">
        <link rel="stylesheet" href="assets/vendor/chartist/css/chartist-custom.css">
        <!-- MAIN CSS -->
        <link rel="stylesheet" href="assets/css/main.css">
        <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
        <link rel="stylesheet" href="assets/css/demo.css">
        <!-- GOOGLE FONTS -->
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
        <!-- ICONS -->
        <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
        <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>

    <body>
        <div style="max-width: 1300px; display: block; float: right;padding-left: 10px;height: 456px;margin-top: 70px">
            <!-- NAVBAR -->
            <nav class="navbar navbar-default navbar-fixed-top" style="max-width: 1150px; margin: auto;">
<!--                <div class="brand">
                    <img src="//theme.hstatic.net/1000351433/1000669365/14/logo.png?v=243" alt="" 
                         style="max-width: 85%; margin-top: -20px; margin-bottom: -18px;"/>
                </div>-->
                <div class="container-fluid" style="">
                    <div id="navbar-menu">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="homeAdmin">
                                    <i class="fa fa-home" style="font-size: 18px;"></i><span> Home</span>
                                </a>
                            </li>
                            <li>
                                <a href="listUser">
                                    <i style='font-size:18px; margin-top: 2px;' class='fas'>&#xf0c0;</i></i><span> Users</span>
                                </a>
                            </li>
                            <li>
                                <a href="listProduct">
                                    <i class="fab fa-product-hunt" style="font-size: 19px;"></i><span> Product</span>
                                </a>
                            </li>
                            <li>
                                <a href="listOrder">
                                    <i class="fa fa-cart-plus" style="font-size: 18px;"></i><span> Order</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="assets/img/user.png" class="img-circle" alt="Avatar">
                                    <span>${sessionScope.user.username}</span>
                                </a>
                            </li>
                            <li>
                                <a href="logout">
                                    <i class="material-icons" style="color: red;">&#xe8ac;</i><span>Logout</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
                                
        <!-- END NAVBAR -->
    </body>

</html>

