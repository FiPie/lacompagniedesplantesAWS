<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 19.04.19
  Time: 15:35
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
    <title>File Upload</title>
    <!-- add icon link -->
    <link rel="icon" href="../../resources/images/logo/smallTree.svg"
          type="image/x-icon">
</head>

<body>

<header>
    <h1>La Compagnie des Plantes</h1>
</header>
<jsp:include page="../fragments/menu.jsp"/>

<br/>
<div class="container-fluid">
    <h2>Select a File you would like to upload to your DataBase <i class="fas fa-database"
                                                                   style="height: 18px; color: rgba(49,48,49,0.65)"></i>
    </h2>

    <form:form method="POST" action="/uploadFileModelAttributeBind" enctype="multipart/form-data"
               modelAttribute="fileUploadForm">

        <table class="table table-hover">


            <tr>
                <td>Name</td>
                <td><form:input path="name" type="text" name="name"/></td>
            </tr>
            <tr>
                <td>Select a file to upload</td>
                <td><form:input path="file" type="file" name="file"/></td>
            </tr>
            <tr>
                <td><i class="fas fa-upload fa-lg" style="color: rgba(49,48,49,0.65)"></i></td>
                <td><input type="submit" value="Upload"/></td>
            </tr>
        </table>

    </form:form>

</div>
<jsp:include page="../fragments/footer.jsp"/>

</body>

</html>
