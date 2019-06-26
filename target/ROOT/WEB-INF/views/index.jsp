<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 14.06.19
  Time: 12:18
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
    <title>Accueil</title>
</head>
<body>

<section id="index"></section>
<%--<div class="parallax1"></div>--%>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script type="text/javascript">
    $(window).scroll(function () {
        var scroll_position = $(window).scrollTop() * 2;
        $('#index').css({
            'background-position-x': -scroll_position + 'px',
            'background-position-y': -scroll_position + 'px',

        })
    })
</script>

<header>
    <h1 class="display-3">La Compagnie des Plantes</h1>
</header>


<jsp:include page="../fragments/menu.jsp"/>


<div class="container-fluid" style="padding-top: 2px">


    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <blockquote class="blockquote">
                <p class="mb-0"><em>The world is a dangerous place to live; not because of the people who are evil, but
                    because of the people who don't do anything about it.</em></p>
                <footer class="blockquote-footer">by <cite>Albert Einstein</cite></footer>
            </blockquote>
        </div>
        <div class="col-md-2"></div>
    </div>

    <div class="parallax1" style="background-position: top;"></div>

    <div class="jumbotron">
        <h2 class="display-4">Nature Lore is the key to Life</h2>
        <p class="lead">Mutat explicari eu duo,
            graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo cu.
            Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his legere
            mucius, eu vis viderer referrentur.</p>
    </div>


    <div id="landingpage">
        <div class="row" style="padding: 30px;">

            <div class="col-md-6 col-lg-4 col-xl-3">
                <h2>This is a section
                    <small class="text-muted"> of this website about herbalism</small>
                </h2>
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
                    mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
            </div>

            <div class="col-md-6 col-lg-4 col-xl-3">
                <h2>This is a section
                    <small class="text-muted"> of this website about herbalism</small>
                </h2>
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
                    mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
            </div>

            <div class="col-md-6 col-lg-4 col-xl-3">
                <h2>This is a section
                    <small class="text-muted"> of this website about herbalism</small>
                </h2>
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
                    mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
            </div>

            <div class="col-md-6 col-lg-4 col-xl-3">
                <h2>This is a section
                    <small class="text-muted"> of this website about herbalism</small>
                </h2>
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
                    mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
            </div>

            <div class="col-md-6 col-lg-4 col-xl-3">
                <h2>This is a section
                    <small class="text-muted"> of this website about herbalism</small>
                </h2>
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
                    mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
            </div>

            <div class="col-md-6 col-lg-4 col-xl-3">
                <h2>This is a section
                    <small class="text-muted"> of this website about herbalism</small>
                </h2>
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
                    mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
            </div>

            <div class="col-md-6 col-lg-4 col-xl-3">
                <h2>This is a section
                    <small class="text-muted"> of this website about herbalism</small>
                </h2>
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
                    mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
            </div>

            <div class="col-md-6 col-lg-4 col-xl-3">
                <h2>This is a section
                    <small class="text-muted"> of this website about herbalism</small>
                </h2>
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
                    mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
            </div>
        </div>
    </div>
    <div class="row" style="padding-bottom: 30px">
    </div>
    <div class="parallax1" style="background-position: center;"></div>

    <div class="jumbotron" style="padding-top: 10px">
        <h2>This is some other section of this website about something else</h2>
        <p>Lorem ipsum dolor sit amet, has porro legere ei, convenire suscipiantur his ex. Mutat explicari eu duo,
            graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo cu.
            Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his legere
            mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6">
                <h3>My Interest in Nature</h3>
                <p>Lorem ipsum dolor sit amet, has porro legere ei, convenire suscipiantur his ex. Mutat explicari eu
                    duo,
                    graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo
                    cu.
                    Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his
                    legere
                    mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
            </div>

            <div class="col-lg-6">
                <h3>My Interest in Nature</h3>
                <p>Lorem ipsum dolor sit amet, has porro legere ei, convenire suscipiantur his ex. Mutat explicari eu
                    duo,
                    graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo
                    cu.
                    Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his
                    legere
                    mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <h3>My Interest in Nature</h3>
                <p>Lorem ipsum dolor sit amet, has porro legere ei, convenire suscipiantur his ex. Mutat explicari eu
                    duo,
                    graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo
                    cu.
                    Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his
                    legere
                    mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
            </div>

            <div class="col-lg-6">
                <h3>My Interest in Nature</h3>
                <p>Lorem ipsum dolor sit amet, has porro legere ei, convenire suscipiantur his ex. Mutat explicari eu
                    duo,
                    graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo
                    cu.
                    Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his
                    legere
                    mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <h3>My Interest in Nature</h3>
                <p>Lorem ipsum dolor sit amet, has porro legere ei, convenire suscipiantur his ex. Mutat explicari eu
                    duo,
                    graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo
                    cu.
                    Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his
                    legere
                    mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
            </div>

            <div class="col-lg-6">
                <h3>My Interest in Nature</h3>
                <p>Lorem ipsum dolor sit amet, has porro legere ei, convenire suscipiantur his ex. Mutat explicari eu
                    duo,
                    graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo
                    cu.
                    Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his
                    legere
                    mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <h3>My hobbies</h3>
                <ul>
                    <li>herbalism</li>
                    <li>reiki</li>
                    <li>animism</li>
                    <li>spiritualism</li>
                </ul>
            </div>
            <div class="col-md-6">
                <h3>Contact me</h3>
                <p>phone no. +323 321 654 0987</p>
            </div>
        </div>
    </div>

    <div class="parallax1" style="background-position: bottom;"></div>

</div>

<script type="text/javascript">
    $(window).scroll(function () {
        var scroll_position = $(window).scrollTop() / 2;
        $('section').css({
            'background-position-x': -scroll_position + 'px',
        })
    })
</script>

<jsp:include page="../fragments/footer.jsp"/>


</body>
</html>
