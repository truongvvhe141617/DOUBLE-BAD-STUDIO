<%-- 
    Document   : updateAccount
    Created on : Mar 20, 2021, 5:52:31 PM
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
                            <h3 class="panel-title">Update Account</h3>
                            <span><a href="listUser">Back</a></span>
                        </div>
                        <form action="updateAccount" method="post">
                            <div class="panel-body">
                                <div class="row" style="display: flex; justify-content: space-between;">
                                    <table style="margin: auto; margin-left: 30px; margin-right: 50px;" class="col-md-6">
                                        <tr>
                                            <th>Username: </th>
                                            <td>
                                                <input type="hidden" name="userId" value="${user.userId}"/>
                                                <input readonly="readonly" required="required" type="text" class="form-control" style="height: 30px;" 
                                                       placeholder="Your account..." name="username" value="${user.username}"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>ROLE: </th>
                                            <td>
                                                <select name="role">
                                                    <option
                                                        <c:if test="${user.role == 'HOLD_admin'}">
                                                            selected="selected"
                                                        </c:if>
                                                        value="HOLD_admin">Admin</option>
                                                    <option 
                                                        <c:if test="${user.role == 'ROLE_member'}">
                                                            selected="selected"
                                                        </c:if>
                                                        value="ROLE_member">Member</option>
                                                    <option 
                                                        <c:if test="${user.role == 'USER'}">
                                                            selected="selected"
                                                        </c:if>
                                                        value="USER">User</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Password: </th>
                                            <td><input required="required" type="password" class="form-control"
                                                       style="height: 30px;" placeholder="******" name="password"/></td>
                                        </tr>
                                        <tr>
                                            <th>Re-password: </th>
                                            <td><input required="required" type="password" class="form-control" 
                                                       style="height: 30px;" placeholder="Re-password..." name="repassword"/></td>
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
                                            <th>Full Name: </th>
                                            <td><input type="text" class="form-control" style="height: 30px;" placeholder="Your name..." 
                                                       name="fullName" value="${user.fullName}"/></td>
                                        </tr>
                                        <tr>
                                            <th>Gender: </th>
                                            <td>
                                                <input type="radio" 
                                                       <c:if test="${user.gender == true}">
                                                           checked="checked"
                                                       </c:if>
                                                       name="gender" value="true"/> <span style="margin-right: 100px;">Male</span>
                                                <input type="radio" 
                                                       <c:if test="${user.gender == false}">
                                                           checked="checked"
                                                       </c:if>
                                                       name="gender" value="false"/> Female
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Phone Number: </th>
                                            <td><input required="required" type="text" class="form-control" style="height: 30px;" placeholder="Your phone number..." name="phone" value="${user.phone}"/></td>
                                        </tr>
                                        <tr>
                                            <th>Address: </th>
                                            <td><textarea required="required" class="form-control" placeholder="Your address." rows="4" name="address">${user.address}</textarea></td>
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