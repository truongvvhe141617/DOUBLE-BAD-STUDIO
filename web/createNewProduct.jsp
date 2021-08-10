<%-- 
    Document   : createNewProduct
    Created on : Mar 20, 2021, 5:51:33 PM
    Author     : Vuong Van Truong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <head>
        <title>Dashboard | Klorofil - Free Bootstrap Dashboard Template</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <!-- VENDOR CSS -->
        <link rel="stylesheet"
              href="assets/vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet"
              href="assets/vendor/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/vendor/linearicons/style.css">
        <link rel="stylesheet"
              href="assets/vendor/chartist/css/chartist-custom.css">
        <!-- MAIN CSS -->
        <link rel="stylesheet" href="assets/css/main.css">
        <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
        <link rel="stylesheet" href="assets/css/demo.css">
        <!-- GOOGLE FONTS -->
        <link
            href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700"
            rel="stylesheet">
        <!-- ICONS -->
        <link rel="apple-touch-icon" sizes="76x76"
              href="assets/img/apple-icon.png">
        <link rel="icon" type="image/png" sizes="96x96"
              href="assets/img/favicon.png">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
              rel="stylesheet">

        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>

    <body>

        <div id="wrapper"  style="max-width: 1200px; margin: auto;">

            <div>
                <%@include file="headerAdmin.jsp"%>
            </div>

            <div class="main-content"  style="margin-top: 80px;">
                <div class="container-fluid">
                    <div class="panel">
                        <div class="panel-heading"
                             style="display: flex; justify-content: space-between;">
                            <h3 class="panel-title">Create new product</h3>
                            <span><a href="listProduct">Back</a></span>
                        </div>
                        <form action="createNewProduct" method="post">
                            <div class="panel-body">
                                <div class="row" style="display: flex; justify-content: space-between;">
                                    <table style="margin: auto; margin-left: 30px; margin-right: 50px;" class="col-md-6">
                                          <tr>
                                            <th>Product ID: </th>
                                            <td><input required="required" type="text" class="form-control" style="height: 30px;" placeholder="Product name..." name="productId"/></td>
                                        </tr>
                                        <tr>
                                            <th>Product name: </th>
                                            <td><input required="required" type="text" class="form-control" style="height: 30px;" placeholder="Product name..." name="productName"/></td>
                                        </tr>
                                        <tr>
                                            <th>Category: </th>
                                            <td>
                                                <select name="categoriesId">
                                                    <c:forEach items="${requestScope.listCategories}" var="c">
                                                        <option value="${c.categoriesId}">${c.categoriesName}</option>
                                                    </c:forEach>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Image: </th>
                                            <td><input required="required" type="text" class="form-control" style="height: 30px;" placeholder="Image..." name="images"/></td>
                                        </tr>
                                        <tr>
                                            <th></th>
                                            <td>
                                                <button type="submit">Submit</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th></th>
                                            <td></td>
                                        </tr>
                                    </table>
                                    <table style="margin: auto; margin-right: 30px;" class="col-md-6">
                                        <tr>
                                            <th>Price: </th>
                                            <td><input required="required" type="text" class="form-control" style="height: 30px;" placeholder="Price..." name="price"/></td>
                                        </tr>
                               
                                        <tr>
                                            <th>Quantity: </th>
                                            <td><input required="required" type="text" class="form-control" style="height: 30px;" placeholder="Quantity..." name="quantity"/></td>
                                        </tr>
                                        <tr>
                                            <th>Description: </th>
                                            <td><textarea required="required" class="form-control" placeholder="Product Description..." rows="4" name="productDescription"></textarea></td>
                                        </tr>
                                        <tr>
                                            <th></th>
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>

