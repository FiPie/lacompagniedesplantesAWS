<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 17.06.19
  Time: 10:04
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
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
          integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <!--Font Awesome icons-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
          integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

    <!-- add icon link -->
    <link type="image/x-icon" href="<c:url value="/resources/images/logo/smallTree.svg" />" rel="icon" >
    <link type="image/x-icon" href="<c:url value="/resources/images/logo/smallTree.svg" />" rel="shortcut icon" >
    <%--local CSS source --%>
    <link href="<c:url value="/resources/css/stylesheet.css" />" rel="stylesheet" />

    <title>Admin Settings</title>
</head>
<body>
<header>
    <h1 class="display-3">Administrator Dashboard</h1>
</header>
<jsp:include page="../fragments/menu.jsp"/>

<div class="container-fluid">
    <h2>Your account </h2>
    <br/>
    <div>
        <h3>
            ${deletionMessageSuccess}
            ${deletionMessageFail}</h3>
    </div>
    <div>
        <h3>
            ${admin.firstName}
            ${admin.lastName}</h3>
    </div>
    <br/>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Email Address</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Role</th>
            <th>Edit</th>
            <%--<th>Delete</th>--%>
        </tr>
        </thead>
        <tbody>
            <tr>
                <td>${admin.email}</td>
                <td>${admin.firstName}</td>
                <td>${admin.lastName}</td>
                <td>${admin.userRoles.role}</td>
                <td style="align-content: center"><a href="/admin/${admin.id}/edit"><i class="fas fa-user-edit" style="color: rgba(49,48,49,0.65)"></i></a></td>
            </tr>

        </tbody>
    </table>
</div>

<jsp:include page="../fragments/footer.jsp"/>


</body>
</html>
