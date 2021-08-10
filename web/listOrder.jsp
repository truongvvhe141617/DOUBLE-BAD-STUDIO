<%-- 
    Document   : listOrder
    Created on : Mar 19, 2021, 10:28:25 PM
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
        <div id="wrapper" style="max-width: 1200px; margin: auto;">
            <%@include file="headerAdmin.jsp"%>
            <!-- MAIN -->
            <!-- MAIN CONTENT -->
            <div class="main-content" style="margin-top: 80px;">
                <div class="container-fluid">
                    <!-- OVERVIEW -->
                    <div class="panel panel-headline">
                        <div class="panel-body" style="padding-top: 20px;">
                            <form action="deleteOrder" method="post">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="panel">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">List Orders</h3>
                                                <div class="right">
                                                    <button type="submit"><span class="label label-danger" style="font-size: 13px; margin-right: 15px;">Delete</span></button>
                                                </div>
                                            </div>
                                            <div class="panel-body no-padding">
                                                <table class="table table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th><input type="checkbox" id="checkAll"></th>
                                                            <th>Order No.</th>
                                                            <th>Name</th>
                                                            <th>Product ID</th>
                                                            <th>Quantity</th>
                                                            <th>Amount</th>
                                                            <th>Date &amp; Time</th>
                                                            <th>Status</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${requestScope.listOrder}" var="o" varStatus="loop">
                                                            <tr>
                                                                <td><input class="checkbox" type="checkbox" id="${loop.count}" value="${o.orderId}" name="orderId"/></td>
                                                                <td><a href="#">${o.orderId}</a></td>
                                                                <td>${o.user.username}</td>
                                                                <td>${o.product.productId}</td>
                                                                <td>${o.quantity}</td>
                                                                <td>$${o.product.price * o.quantity}0</td>
                                                                <td>${o.orderDate}</td>
                                                                <td>
                                                                    <c:if test="${o.orderDescription eq 'success'}">
                                                                        <span class="label label-success">SUCCESS</span>
                                                                    </c:if>
                                                                    <c:if test="${o.orderDescription eq 'waiting_line'}">
                                                                        <a href="updateStatusOrder?orderId=${o.orderId}&page=listOrder"><span class="label label-warning">CHỐT ĐƠN</span></a>
                                                                    </c:if>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <nav aria-label="Page navigation example" style="margin-top: -20px;">
                                            <ul class="pagination">
                                                <c:forEach begin="1" end="${requestScope.totalPage}" var="i">
                                                    <li class="page-item"><a class="page-link" href="listOrder?pageIndex=${i}">${i}</a></li>
                                                    </c:forEach>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- END OVERVIEW -->
                </div>
            </div>
            <!-- END MAIN CONTENT -->
            <div class="clearfix"></div>
            <footer>
                <div class="container-fluid">
                    <p class="copyright">&copy; 2017 <a href="https://www.themeineed.com" target="_blank">Theme I Need</a>. All Rights Reserved.</p>
                </div>
            </footer>
        </div>
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

