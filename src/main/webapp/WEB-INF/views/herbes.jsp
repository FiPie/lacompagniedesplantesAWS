<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 04.05.19
  Time: 13:39
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
    <title>Herbes</title>
    <!-- add icon link -->
    <link rel = "icon" href="../../resources/images/logo/smallTree.svg"
          type = "image/x-icon">
</head>
<body>
<header>
    <h1 class="display-3">Herbes</h1>
</header>
<jsp:include page="../fragments/menu.jsp"/>

<div class="container-fluid" style="padding-top: 2px">
    <div class="jumbotron">
        <h2 class="display-4">Here's our herbal offer</h2>
        <p class="lead">Lorem ipsum dolor sit amet, has porro legere ei, convenire suscipiantur his ex. Mutat explicari eu duo,
            graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo cu.
            Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his legere
            mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
    </div>



</div>

<jsp:include page="../fragments/footer.jsp"/>
</body>
</html>
