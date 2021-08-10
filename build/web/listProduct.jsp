<%-- 
    Document   : listProduct
    Created on : Mar 18, 2021, 11:56:16 PM
    Author     : Vuong Van Truong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="deleteProduct" method="post">
            <div id="wrapper" style="max-width: 1200px; margin: auto;">
                <%@include file="headerAdmin.jsp"%>
                <!-- MAIN -->
                <!-- MAIN CONTENT -->
                <div class="main-content" style="margin-top: 80px;">
                    <div class="container-fluid">
                        <!-- OVERVIEW -->
                        <div class="panel panel-headline">
                            <div class="panel-body" style="padding-top: 10px;">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="panel">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">List Product</h3>
                                                <div class="right">
                                                    <button type="submit"><span class="label label-danger" style="font-size: 15px; margin-right: 15px;">Delete</span></button>
                                                    <a href="createNewProduct"><span class="label label-success" style="font-size: 15px;">Create new product</span></a>
                                                </div>
                                            </div>
                                            <div class="panel-body">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th><input type="checkbox" id="checkAll"/></th>
                                                            <th>Product ID</th>
                                                            <th>Product Name</th>
                                                            <th>Price</th>
                                                            <th>Quantity</th>
                                                            <th style="width: 25%;">Description</th>
                                                            <th style="width: 12%; padding-left: 30px;">Image</th>
                                                            <th>Edit</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody
                                                        <c:forEach items="${requestScope.listProduct}" var="p" varStatus="loop">
                                                            <tr>
                                                                <td style="vertical-align: middle;"><input type="checkbox" class="checkbox" id="${loop.count}" value="${p.productId}" name="productId"/></td>
                                                                <td style="vertical-align: middle;"><a href="#">${p.productId}</a></td>
                                                                <td style="vertical-align: middle;">${p.productName}</td>
                                                                <td style="vertical-align: middle;">$${p.price}0</td>
                                                                <td style="vertical-align: middle;">${p.quantity}</td>
                                                                <td style="vertical-align: middle;">${p.productDescription}</td>
                                                                <td style="vertical-align: middle; padding-left: 30px;"><img style="width: 90%; padding-bottom: -100px;" src="${p.images}" alt=""/></td>
                                                                <td style="vertical-align: middle;"><a href="updateProduct?productId=${p.productId}"><span class="label label-warning" style="font-size: 13px;">Update</span></a></td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <nav aria-label="Page navigation example" style="margin-top: -20px;">
                                            <ul class="pagination">
                                                <c:forEach begin="1" end="${requestScope.totalPage}" var="i">
                                                    <li class="page-item"><a class="page-link" href="listProduct?pageIndex=${i}">${i}</a></li>
                                                    </c:forEach>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
<!--                <footer>
                    <div class="container-fluid">
                        <p class="copyright">&copy; 2017 <a href="https://www.themeineed.com" target="_blank">Theme I Need</a>. All Rights Reserved.</p>
                    </div>
                </footer>-->
            </div>
        </form>
        <script>
            let userSelection = document.getElementsByClassName('checkbox');
            let checkAll = document.getElementById('checkAll')


            checkAll.addEventListener('click', () => {
                if (checkAll.checked == true) {
                    for (let i = 1; i <= userSelection.length; i++) {
                        document.getElementById(i).checked = true
                    }
                } else {
                    for (let i = 1; i <= userSelection.length; i++) {
                        document.getElementById(i).checked = false
                    }
                }

            })
        </script>
    </body>
</html>


