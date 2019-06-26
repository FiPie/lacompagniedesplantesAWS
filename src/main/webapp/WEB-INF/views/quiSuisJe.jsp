<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 15.04.19
  Time: 11:10
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
    <title>Qui Suis-Je?</title>
    <!-- add icon link -->
    <link rel="icon" href="../../resources/images/logo/smallTree.svg"
          type="image/x-icon">
</head>

<section id="quiSuisJe"></section>
<%--<div class="parallax1"></div>--%>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script type="text/javascript">
    $(window).scroll(function () {
        var scroll_position = $(window).scrollTop() * 1.6;
        $('#quiSuisJe').css({
            'background-position-x': -scroll_position + 'px',
            'background-position-y': (-scroll_position * 2.4) + 'px',

        })
    })
</script>


<body>
<header>
    <h1 class="display-3">Qui Suis-Je?</h1>
</header>
<jsp:include page="../fragments/menu.jsp"/>

<div class="container-fluid" style="padding-top: 2px;">

    <div class="jumbotron textbackground">
        <h2 class="display-4">Who am I? Where did I come from? Where am I heading?</h2>
        <p class="lead">Lorem ipsum dolor sit amet, has porro legere ei, convenire suscipiantur his ex. Mutat explicari
            eu duo,
            graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo cu.
            Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his legere
            mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
    </div>


    <div class="row" style="padding-top: 30px">
        <div class="col-md-1"></div>
        <div class="col-md-3">
            <img class="img-fluid rounded" src="../../resources/images/quiSuisJe/quiSuisJe.jpg">
        </div>
        <div class="col-md-7">
            <div class="box ">
                <h2>Some interesting facts about me.</h2>
                <p class="lead text-justify" style="font-family: CormorantInfant-SemiBoldItalic">Lorem ipsum dolor sit
                    amet, has porro legere ei, convenire suscipiantur his ex.
                    Mutat explicari eu duo, graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo
                    cu. Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his
                    legere mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.Lorem ipsum dolor
                    sit amet, has porro legere ei, convenire suscipiantur his ex. Mutat explicari eu duo,
                    graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo
                    cu. Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his
                    legere mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.Lorem ipsum dolor
                    sit amet, has porro legere ei, convenire suscipiantur his ex. Mutat explicari eu duo,
                    graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo
                </p>
            </div>
        </div>

        <div class="col-md-1"></div>
    </div>


    <div class="row" style="padding-top: 70px; padding-bottom: 20px">
        <div class="col-md-1"></div>
        <div class="col-md-3">
            <div class="box ">
                <h2>Some interesting story I want you to know.</h2>
                <p class="text-justify">Lorem ipsum dolor sit amet, has porro legere ei, convenire suscipiantur his ex.
                    Mutat explicari eu duo,
                    graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo
                    cu.
                    Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his
                    legere
                    mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.Lorem ipsum dolor
                    sit
                    amet, has porro legere ei, convenire suscipiantur his ex. Mutat explicari eu duo,
                    graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo
                    cu.
                    Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his
                    legere
                    mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.Lorem ipsum dolor
                    sit
                    amet, has porro legere ei, convenire suscipiantur his ex. Mutat explicari eu duo,
                    graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo
                    cu.
                    Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his
                    legereamet, has porro legere ei, convenire suscipiantur his ex. Mutat explicari eu duo,
                    graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo
                    cu.
                    Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his
                    legere
                    mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.Lorem ipsum dolor
                    sit
                    amet, has porro legere ei, convenire suscipiantur his ex.
                </p>
            </div>
        </div>
        <div class="col-md-7">
            <img class="img-fluid rounded" src="../../resources/images/quiSuisJe/quiSuisJe4(web).jpg">
        </div>
        <div class="col-md-1"></div>
    </div>
</div>

<jsp:include page="../fragments/footer.jsp"/>
</body>
</html>
