<%-- 
    Document   : homeAdmin
    Created on : Mar 11, 2021, 11:07:31 AM
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
        <div id="wrapper" style="max-width: 1200px; margin: auto; max-height: 500px">
            <%@include file="headerAdmin.jsp"%>
            <!-- MAIN -->
                <!-- MAIN CONTENT -->
                 
                <div class="main-content" style="margin-top: 80px;">
                    
                    <div class="container-fluid">
                        <!-- OVERVIEW -->
                        <div class="panel panel-headline">
                            <div class="panel-body" style="padding-top: 20px;">
                                <div class="row">
                                    <div class="col-md-3">
                                        <a class="metric-link" href="listOrder" style="color: #676A6D;">
                                            <div class="metric" style="box-shadow: 0 0 3px;">
                                                <span class="icon" style="background-color: #9932CC"><i class="fa fa-shopping-cart"></i></span>
                                                <p>
                                                    <span class="number">${requestScope.countOrder}</span>
                                                    <span class="title">Orders</span>
                                                </p>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-3">
                                        <a class="metric-link" href="listProduct" style="color: #676A6D;">
                                            <div class="metric" style="box-shadow: 0 0 3px;">
                                                <span class="icon" style="background-color: #9932CC"><i class="fab fa-product-hunt" style="font-size: 26px; margin-top: 12px;"></i></span>
                                                <p>
                                                    <span class="number">${requestScope.countProduct}</span>
                                                    <span class="title">Product</span>
                                                </p>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-3">
                                        <a class="metric-link" href="listUser" style="color: #676A6D;">
                                            <div class="metric" style="box-shadow: 0 0 3px;">
                                                <span class="icon" style="background-color: #9932CC"><i style='font-size:24px; margin-top: 2px;' class='fas'>&#xf0c0;</i></span>
                                                <p>
                                                    <span class="number">${requestScope.countUser}</span>
                                                    <span class="title">Users</span>
                                                </p>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="metric" style="box-shadow: 0 0 3px;">
                                            <span class="icon" style="background-color: #9932CC"><i class="fa fa-bar-chart"></i></span>
                                            <p>
                                                <span class="number" style="color: green;">$${requestScope.totalAmountOfSales}0</span>
                                                <span class="title">Total amount of sales</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="panel">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">Recent Purchases</h3>
                                                <div class="right">
                                                    <button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
                                                    <button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
                                                </div>
                                            </div>
<!--                                            <div class="panel-body no-padding">-->
<!--                                                <table class="table table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th>Order No.</th>
                                                            <th>Name</th>
                                                            <th>Amount</th>
                                                            <th>Date &amp; Time</th>
                                                            <th>Status</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tbody>
                                                    <c:forEach items="${requestScope.listOrder}" var="o">
                                                        <tr>
                                                            <td><a href="#">${o.orderId}</a></td>
                                                            <td>${o.user.username}</td>
                                                            <td>$${o.product.price * o.quantity}0</td>
                                                            <td>${o.orderDate}</td>
                                                            <td>
                                                                <c:if test="${o.orderDescription  eq 'success'}">
                                                                    <span class="label label-success">SUCCESS</span>
                                                                </c:if>
                                                                <c:if test="${o.orderDescription  eq 'waiting_line'}">
                                                                    <a href="updateStatusOrder?orderId=${o.orderId}&page=home"><span class="label label-warning">CHỐT ĐƠN </span></a>
                                                                </c:if>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>-->
<!--                                            </div>-->
                                            <div class="panel-footer">
                                                <div class="row">
                                                    <div class="col-md-6"><span class="panel-note"><i class="fa fa-clock-o"></i> Last 24 hours</span></div>
                                                    <div class="col-md-6 text-right"><a href="listOrder" class="btn btn-primary">View All Orders</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
</body>
</html>

