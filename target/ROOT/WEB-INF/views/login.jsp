<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 15.04.19
  Time: 13:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Login</title>
    <!-- add icon link -->
    <link rel = "icon" href="../../resources/images/logo/smallTree.svg"
          type = "image/x-icon">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>

<body>

<header>
</header>
<jsp:include page="../fragments/menu.jsp"/>

<%--<section class="login-page">
    <h2>Enter your login and password</h2>
    <form:form modelAttribute="loginFormDto" method="post" action="/login">
        <c:if test="${param['error'] != null}">
            <p>Wrong login/password!</p>
        </c:if>
        <div class="form-group">
            <form:input path="email" type="email" required="true" placeholder="Email"/><form:errors path="email"/>
        </div>

        <div class="form-group">
            <form:password path="password" required="true" placeholder="Hasło"/><form:errors path="password"/>
        </div>

        <div class="form-group form-group--buttons">
            <button class="btn" type="submit">Log in</button>
        </div>
    </form:form>
</section>--%>
<div class="container-fluid" style="padding-top: 40px">
    <form:form modelAttribute="loginFormDto" class="needs-validation" method="post" action="/login" novalidate="true">
        <c:if test="${param['error'] != null}">
            <p>Wrong login/password!</p>
        </c:if>
        <div class="row">
            <div class="col-md-1">
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label for="inputEmail">Email</label>
                    <form:input path="email" type="email" class="form-control" id="inputEmail" placeholder="Email"
                                required="true"/>
                    <div class="invalid-feedback">Please enter a valid email address.</div>
                </div>
            </div>
            <div class="col-md-8">
            </div>
        </div>

        <div class="row">
            <div class="col-md-1">
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label for="inputPassword">Password</label>
                    <form:input path="password" type="password" class="form-control" id="inputPassword"
                                placeholder="Password"
                                required="true"/>
                    <div class="invalid-feedback">Please enter your password to continue.</div>
                </div>
            </div>
            <div class="col-md-8">
            </div>
        </div>

        <div class="row">
            <div class="col-md-1">
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label class="form-check-label"><input type="checkbox"> Remember me</label>
                </div>
                <button type="submit" class="btn btn-primary">Sign in</button>
            </div>
            <div class="col-md-8">
            </div>
        </div>


    </form:form>

    <!-- JavaScript for disabling form submissions if there are invalid fields -->
    <script>
        // Self-executing function
        (function () {
            'use strict';
            window.addEventListener('load', function () {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function (form) {
                    form.addEventListener('submit', function (event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
    </script>
</div>

<jsp:include page="../fragments/footer.jsp"/>
</body>
</html>
