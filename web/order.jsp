<%-- 
    Document   : order
    Created on : Mar 20, 2021, 3:58:40 PM
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
        <title>Cart | E-Shopper</title>
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

        <section id="cart_items">
            <div class="container">
                <div class="table-responsive cart_info">
                    <table class="table table-condensed">
                        <thead>
                            <tr class="cart_menu">
                                <td class="image" style="width: 20%">Item</td>
                                <td class="description" style="width: 25%;">Description</td>
                                <td class="price">Price</td>
                                <td class="quantity">Quantity</td>
                                <td class="total">Total</td>
                                <td class="total">Order date</td>
                                <td>Status</td>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${requestScope.listOrder}" var="o">
                                <tr>
                                    <td class="cart_product">
                                        <a href=""><img src="${o.product.images}" alt="" style="width: 40%;"/></a>
                                    </td>
                                    <td class="cart_description">
                            <h9><a href="">JEAN EMTIRY - Black</a></h9>
                            <p>ProductId: ${o.product.productId}</p>
                            </td>
                            <td class="cart_price">
                                <p>$${o.product.price}0</p>
                            </td>
                            <td class="cart_quantity">
                                <div class="cart_quantity_button">
                                    <input class="cart_quantity_input" type="text" name="quantity" value="${o.quantity}" autocomplete="off" size="2">
                                </div>
                            </td>
                            <td class="cart_total">
                                <p class="cart_total_price">$${o.product.price * o.quantity}</p>
                            </td>
                            <td>
                                <p style="font-size: 18px;">${o.orderDate}</p>
                            </td>
                            <td>
                                <p style="font-size: 18px; color: #0480be; font-weight: bold;">${o.orderDescription}</p>
                            </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div style="text-align: center;"><h3>${requestScope.orderEmpty}</h3></div>
                </div>
            </div>
        </section> <!--/#cart_items-->

        <%@include file="footer.jsp"%>

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>