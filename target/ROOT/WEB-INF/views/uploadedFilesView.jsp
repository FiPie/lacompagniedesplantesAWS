<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 03.05.19
  Time: 14:53
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
    <title>Files in DB</title>
    <!-- add icon link -->
    <link rel="icon" href="../../resources/images/logo/smallTree.svg"
          type="image/x-icon">
</head>
<body>

<header>
    <h1>La Compagnie des Plantes</h1>
</header>
<jsp:include page="../fragments/menu.jsp"/>

<div class="container-fluid">
    <h2>Submitted Files in your DataBase <i class="fas fa-database" style="color: rgba(49,48,49,0.65)"></i> (List)</h2>
    <br/>
    <div>
        <h3>
            ${deletionMessageSuccess}
            ${deletionMessageFail}</h3>
    </div>
    <br/>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>OriginalFileName</th>
            <th>Type</th>
            <th>Size</th>
            <th>Name</th>
            <th>SeeFile</th>
            <th>DeleteFile</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${files}" var="file">
            <tr>
                <td>${file.originalName}</td>
                <td>${file.type}</td>
                <td>${file.size}</td>
                <td>${file.name}</td>
                <td style="align-content: center"><a href="/admin/${file.id}/imageAutoResponse"><i class="far fa-eye" style="color: rgba(49,48,49,0.65)"></i></a></td>
                <td style="align-content: center"><a href="/admin/${file.id}/confirmDeleteFile"><i
                        class="fas fa-trash-alt" style="color: rgba(49,48,49,0.65)"></i></a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<jsp:include page="../fragments/footer.jsp"/>
</body>
</html>
