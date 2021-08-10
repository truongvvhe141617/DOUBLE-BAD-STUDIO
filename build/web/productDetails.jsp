<%-- 
    Document   : productDetails
    Created on : Mar 3, 2021, 6:50:59 PM
    Author     : Vuong Van Truong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Product Details | E-Shopper</title>
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

        <%@include file="header.jsp"%>

        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-9 padding-right">
                        <div class="product-details"><!--product-details-->
                            <div class="col-sm-5">
                                <div class="view-product">
                                    <img src="${requestScope.product.images}" alt="" style="width: 85%" />
                                    <h3>${requestScope.product.productName}</h3>
                                </div>
                            </div>
                            <div class="col-sm-7">
                                <div class="product-information">
                                    <h2>${requestScope.product.productDescription}</h2>
                                    <p>Product ID: ${requestScope.product.productId}</p>
                                    <img src="" alt="" />
                                    <span>
                                        <span style="color: #910000;">Price: $${requestScope.product.price}0</span>
                                        <c:if test="${sessionScope.user == null}">
                                            <a href="login.jsp" type="button" class="btn btn-fefault add-to-cart">
                                                <i class="fa fa-shopping-cart"></i>
                                                Add to cart
                                            </a>
                                        </c:if>
                                        <c:if test="${sessionScope.user != null}">
                                            <a href="addtocart?productId=${requestScope.product.productId}" type="button" class="btn btn-fefault add-to-cart">
                                                <i class="fa fa-shopping-cart"></i>
                                                Add to cart
                                            </a>
                                        </c:if>
                                    </span>
                                    <c:if test="${requestScope.product.quantity > 0}">
                                        <p><b>Availability:</b> <span style="color: green;">In Stock</span></p>
                                    </c:if>
                                    <c:if test="${requestScope.product.quantity == 0}">
                                        <p><b>Availability:</b> <span style="color: red;">Out Of Stock</span></p>
                                    </c:if>
                                    <p><b>Condition:</b> New</p>
                                    <p><b>Brand:</b>BOO</p>
                                    <a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
                                </div><!--/product-information-->
                            </div>
                        </div><!--/product-details-->
                    </div>
                </div>
            </div>
        </section>

        <%@include file="footer.jsp"%>

        <script src="js/jquery.js"></script>
        <script src="js/price-range.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
