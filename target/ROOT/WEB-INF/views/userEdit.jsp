<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 17.06.19
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Edit Admin</title>
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
            ${admin.firstName}
            ${admin.lastName}
                id: ${admin.id}</h3>
    </div>
    <br/>
    <form:form modelAttribute="editAdmin" method="post" action="/admin/edit">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>Email Address</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>password</th>
                <th>confirm password</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><form:input path="email" type="email" required="true"/><form:errors
                        path="email"/></td>
                <td><form:input path="firstName" required="true"/><form:errors
                        path="firstName"/></td>
                <td><form:input path="lastName" required="true"/><form:errors
                        path="lastName"/></td>
                <td><form:password path="password" placeholder="enter password" required="true"/><form:errors
                        path="password"/></td>
                <td><form:password path="confirmedPassword" placeholder="repeat password" required="true"/><form:errors
                    path="confirmedPassword"/></td>
            </tr>


            </tbody>
        </table>
        <table>
            <tr>
                <form:hidden path="id"/><form:errors path="id"/>
                <form:button type="submit" class="btn btn-secondary btn-block">Save</form:button>
            </tr>
        </table>
    </form:form>
</div>

<jsp:include page="../fragments/footer.jsp"/>


</body>
</html>
