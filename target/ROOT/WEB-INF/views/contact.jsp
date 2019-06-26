<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 15.04.19
  Time: 12:05
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
    <title>Contact</title>
    <!-- add icon link -->
    <link rel="icon" href="../../resources/images/logo/smallTree.svg"
          type="image/x-icon">
</head>

<body>

<section id="contact"></section>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script type="text/javascript">
    $(window).scroll(function () {
        var scroll_position = $(window).scrollTop() * 3.9;
        $('#contact').css({
            'background-position-x': -scroll_position + 'px',
            'background-position-y': (-scroll_position / 1.85) + 'px',

        })
    })
</script>

<header>
    <h1 class="display-3">Contact</h1>
</header>
<jsp:include page="../fragments/menu.jsp"/>

<div class="container-fluid" style="padding-top: 2px">
    <div class="jumbotron">
        <h2 class="display-4">Here you can easily contact us</h2>
        <p class="lead">Mutat explicari eu duo,
            graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo cu.
            Viderer postulant signiferumque at vix, no est cibo doctus timeam.</p>
    </div>

    <div class="container-fluid" style="padding-top: 30px; padding-bottom: 30px">

        <form:form class="" modelAttribute="message" method="post" action="/contact">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-4">
                <div class="form-group">
                    <h3>Contactez-nous</h3>
                </div>
            </div>
            <div class="col-md-7"></div>
        </div>

        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-2">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text">
                            <span class="fa fa-user"></span>
                        </span>
                    </div>
                    <form:input class="form-control" path="firstName2" type="text" name="name"
                                placeholder="Prenom"/>
                </div>
            </div>

            <div class="col-md-2">
                <div class="input-group">
                    <form:input class="form-control" path="lastName2" type="text" name="surname"
                                placeholder="Nom"/>
                    <div class="input-group-append">
                        <span class="input-group-text"><span class="fa fa-user"></span></span>
                    </div>
                </div>
            </div>
            <div class="col-md-7"></div>
        </div>

        <div class="row" style="padding-top: 5px">
            <div class="col-md-1"></div>
            <div class="col-md-4">
                <div class="input-group">
                    <form:textarea class="form-control" path="content" name="message" required="true"
                                   placeholder="Message*"/>
                </div>
            </div>
            <div class="col-md-7"></div>
        </div>

        <div class="row" style="padding-top: 5px">
            <div class="col-md-1"></div>
            <div class="col-md-4">
                <div class="input-group">
                    <form:input class="form-control" path="email2" type="email" required="true"
                                placeholder="adresse email*"/>
                </div>
            </div>
            <div class="col-md-7"></div>
        </div>


        <div class="row" style="padding-top: 5px">
            <div class="col-md-1"></div>
            <div class="col-md-4">
                <div class="input-group">
                    <button type="submit" class="btn btn-secondary btn-block">Envoyer</button>
                </div>
            </div>
            <div class="col-md-7"></div>
        </div>
    </div>
    </form:form>
</div>


<jsp:include page="../fragments/footer.jsp"/>
</body>
</html>
