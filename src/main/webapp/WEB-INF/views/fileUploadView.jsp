<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 19.04.19
  Time: 15:38
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
    <title>File Review</title>
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
    <h2>Submitted File <i class="fas fa-file" style="color: rgba(49,48,49,0.65)"></i> Info </h2>

    <br/>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>OriginalFileName</th>
            <th>Type</th>
            <th>Size</th>
            <th>Name</th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td style="vertical-align: middle">${fileForm.file.originalFilename}</td>
            <td style="vertical-align: middle">${fileForm.file.contentType}</td>
            <td style="vertical-align: middle">${fileForm.file.size}</td>
            <td style="vertical-align: middle">${fileForm.name}</td>
            <td style="vertical-align: middle"><a href="${pageContext.request.contextPath}/fileUpload"
                                                  class="btn btn--small"><i class="fas fa-upload"
                                                                            style="color: rgba(49,48,49,0.65)"></i>
                Upload another one</a></td>
            <td style="vertical-align: middle"><a href="${pageContext.request.contextPath}/filesInDataBase"
                                                  class="btn btn--small"><i class="fas fa-server"
                                                                            style="color: rgba(49,48,49,0.65)"></i> List
                of files in DB</a></td>
        </tr>

        </tbody>
    </table>
</div>


<jsp:include page="../fragments/footer.jsp"/>
</body>
</html>