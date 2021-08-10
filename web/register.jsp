<%-- 
    Document   : register
    Created on : Jan 27, 2021, 12:49:29 AM
    Author     : Vuong Van Truong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
     
    </head>
    <body>
        <!-- Authen form -->
        <form action="register" method="post">
        <div class="auth-form">
            <div class="auth-form-container">
                <div class="auth-form-header">
                    <h3 class="auth-form-title">Register</h3>
                    <a style="color: #FF4518;font-size: 20px;font-family: cursive" href="login.jsp" class="auth-form-subtitle">Login</a>
                </div>

                <div class="auth-form-form">
                    <div class="auth-form-group">
                        <input class="auth-form-input" type="text" name="username"
                               placeholder="Username" required="required" value="${param.username}"/>
                    </div>
                     <div class="auth-form-group">
                        <input class="auth-form-input" type="text" name="fullname"
                               placeholder="Fullname" required="required" value="${param.fullname}"/>
                    </div>
<!--                     <div class="auth-form-group">
                        <input class="auth-form-input" type="text" name="gender"
                               placeholder="Gender" required="required" value="${param.gender}"/>
                    </div>-->
                    <div class="auth-form-group">
                        <input class="auth-form-input"
                             
                               type="radio" name="gender" 
                               placeholder="Gender" required="required" ${param.gender == true?"checked":""}  value="${param.gender}" style="width: 13px">Male
                       
                        <input class="auth-form-input"
                                type="radio" name="gender" 
                               placeholder="Gender" required="required" ${(param.gender == false)?"checked":""}  value="${param.gender}" style="width: 13px"/>Female
                        
                    </div>
                    <div class="auth-form-group">
                        <input class="auth-form-input" type="text" name="phone"
                               placeholder="Phone" required="required" value="${param.phone}"/>
                    </div>

                    <div class="auth-form-group">
                        <input class="auth-form-input" type="text" name="address"
                               placeholder="Address" required="required" value="${param.address}"/>
                    </div>

                    <div class="auth-form-group">
                        <input class="auth-form-input" type="password" name="password"
                               placeholder="Password" required="required" />
                    </div>
                    <div class="auth-form-group">
                        <input class="auth-form-input" type="password" name="repassword"
                               placeholder="Re-Password" required="required" />
                    </div>
                </div>
                <p style="margin-top: -10px; color: green; margin-left: 2px;">${requestScope.messSucess}</p>
                <p style="margin-top: -10px; color: red; margin-left: 2px;">${requestScope.mess}</p>
                    <div class="auth-form-controls" style="padding-bottom: 15px">
                    <a href="home" class="btn">Home</a>
                    <button type="submit" class="btn">Register</button>
                </div>
            </div>
           
        </div>
        </form>
    </body>
</html>

