<%-- 
    Document   : header
    Created on : Jan 24, 2021, 10:10:55 PM
    Author     : Vuong Van Truong
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Blog | E-Shopper</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    </head><!--/head-->
    <body>
       	<header id="header">
                        <div class="header_top">
                                <div class="container">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                        <div class="contactinfo">
                                                                <ul class="nav nav-pills">
                                                                        <li><a href=""><i class="fa fa-phone"></i> +84 942783802</a></li>
                                                                        <li><a href=""><i class="fa fa-envelope"></i>truongvvhe141617@fpt.edu.vn</a></li>
                                                                </ul>
                                                        </div>
                                                </div>
                                                <div class="col-sm-6">
                                                        <div class="social-icons pull-right">
                                                                <ul class="nav navbar-nav">
                                                                        <li><a href="https://www.facebook.com/pee.truong29/"><i class="fa fa-facebook"></i></a></li>
                                                                        <li><a href=""><i class="fa fa-twitter"></i></a></li>
                                                                        <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                                                                        <li><a href=""><i class="fa fa-dribbble"></i></a></li>
                                                                        <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                                                                </ul>
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                        </div>

        <div class="header-middle"><!--header-middle-->
            <div class="container" >
                
                <div class="row" >
                    <div class="col-sm-4">
                        <div class="logo pull-left " 
                             >
                            <a href="home"><img src="//theme.hstatic.net/1000351433/1000669365/14/logo.png?v=243" alt="" style="max-width: 300%;vertical-align: middle;margin-left: 45px;"  /></a>
                        </div>
                     
                        <!--						
                        --></div>
                    <div class="col-sm-8" style="margin-left: 50px;float: right;">
                        <div class="shop-menu pull-right">
                            <ul class="nav navbar-nav"  >
                                <li><a href="home"><i class="fa fa-home"></i>Home</a></li>
                                <c:if test="${sessionScope.user == null}">
                                     <li><a href="login.jsp"><i class="fa fa-lock"></i> Login</a></li>
                                      <li><a href="login.jsp"><i class="fa fa-shopping-cart"></i> Cart</a></li>
                                </c:if>
                               
                                <c:if test="${sessionScope.user != null}">
                                <li><a href="logout"><i class="fa fa-lock"></i>Logout</a></li>
                                <li><a href="order"><i class="fa fa-user"></i>Hello ${sessionScope.user.username}</a></li>
                                 <li><a href="cart"><i class="fa fa-shopping-cart"></i> Cart</a></li>
                                </c:if>
                             
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--
                header-middle-->

        <div class="header-bottom"><!--header-bottom-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">

                        <div class="mainmenu pull-left">
                            <ul class="nav navbar-nav collapse navbar-collapse">
                                <li><a href="">${requestScope.active}</a></li>
                            </ul>
                        </div>
                    </div>
                   <div class="col-sm-3">
                            <div class="pull-right">
                                <form action="search" method="post">
                                    <div class="search_box">
                                        <input type="text" name="txtSearch" placeholder="Search"/>
                                        <button type="submit" class="btn btn-default search_box" 
                                                style="height: 35px; margin-top: -1px; margin-left: -30px; border: none; background: #F0F0E9;">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                </div>
            </div>
        </div><!--/header-bottom-->
    </header><!--/header-->

    <script src="js/jquery.js"></script>
    <script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script> 
</body>
</html>
 