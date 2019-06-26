<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 14.05.19
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Delete file?</title>
    <!-- add icon link -->
    <link rel = "icon" href="../../resources/images/logo/smallTree.svg"
          type = "image/x-icon">
</head>
<body>

<header>
    <h1>La Compagnie des Plantes</h1>
</header>
<jsp:include page="../fragments/menu.jsp"/>


<div class="container-fluid">
    <h2>Do you really want to delete this file From your DataBase <i class="fas fa-database"
                                            style="height: 18px; color: rgba(49,48,49,0.65)"></i> ?</h2>
    <table class="table table-hover">
        <thead>
        <tr>
            <td>ID</td>
            <td>name</td>
            <td>fileOriginalName</td>
            <td>type</td>
            <td>size</td>
            <td></td>
            <td></td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td style="vertical-align: middle">${fileToRemove.id}</td>
            <td style="vertical-align: middle">${fileToRemove.name}</td>
            <td style="vertical-align: middle">${fileToRemove.originalName}</td>
            <td style="vertical-align: middle">${fileToRemove.type}</td>
            <td style="vertical-align: middle">${fileToRemove.size}</td>
            <td style="vertical-align: middle"><a href="/admin/${fileToRemove.id}/deleteFile" class="btn btn--medium"><i class="fas fa-trash-alt" style="color: rgba(49,48,49,0.65)"></i> confirm delete</a></td>
            <td style="vertical-align: middle"><a href="${pageContext.request.contextPath}/filesInDataBase" class="btn btn--medium"><i class="fas fa-long-arrow-alt-left" style="color: rgba(49,48,49,0.65)"></i> back</a></td>

        </tr>
        </tbody>
    </table>
</div>


<jsp:include page="../fragments/footer.jsp"/>
</body>
</html>
