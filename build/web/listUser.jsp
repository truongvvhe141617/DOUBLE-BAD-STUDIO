<%-- 
    Document   : listUser
    Created on : Mar 11, 2021, 11:15:59 AM
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
                            <form action="deleteAccount" method="post">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="panel">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">List Users</h3>
                                                <div class="right">
                                                    <button type="submit"><span class="label label-danger" style="font-size: 15px; margin-right: 15px;">Delete</span></button>
                                                    <a href="createNewAccount.jsp"><span class="label label-success" style="font-size: 15px;">Create new account</span></a>
                                                </div>
                                            </div>
                                            <div class="panel-body no-padding">
                                                <table class="table table-striped" style="height: 400px">
                                                    <thead>
                                                        <tr>
                                                            <th><input type="checkbox" id="checkAll"/></th>
                                                            <th>User ID</th>
                                                            <th>Username</th>
                                                            <th>FullName</th>
                                                            <th>Phone</th>
                                                            <th>Address</th>
                                                            <th>Gender</th>
                                                            <th>Role</th>
                                                            <th>Edit</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody
                                                        <c:forEach items="${requestScope.listUser}" var="user" varStatus="loop">
                                                            <tr>
                                                                <td><input class="checkbox" type="checkbox" id="${loop.count}" value="${user.userId}" name="userId"/></td>
                                                                <td><a href="#">${user.userId}</a></td>
                                                                <td>${user.username}</td>
                                                                <td>${user.fullName}</td>
                                                                <td>${user.phone}</td>
                                                                <td>${user.address}</td>
                                                                <td>
                                                                    <c:choose>
                                                                    <c:when test="${user.gender == true}">
                                                                            Male
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                            Female
                                                                    </c:otherwise>
                                                                    </c:choose>
                                                                </td>
                                                                <td>${user.role}</td>
                                                                <td>
                                                                    <a href="updateAccount?userId=${user.userId}">
                                                                        <span class="label label-warning" style="font-size: 13px;">Update</span>
                                                                    </a>
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
                                                    <li class="page-item"><a class="page-link" href="listUser?pageIndex=${i}">${i}</a></li>
                                                </c:forEach>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
           
        </div>
<!--             <footer>
                <div class="container-fluid">
                    <p class="copyright">&copy; 2017 <a href="https://www.themeineed.com" target="_blank">Theme I Need</a>. All Rights Reserved.</p>
                </div>
            </footer>-->
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
