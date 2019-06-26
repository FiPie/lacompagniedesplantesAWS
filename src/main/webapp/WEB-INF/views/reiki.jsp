<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 04.05.19
  Time: 13:35
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
    <title>Reiki</title>
    <!-- add icon link -->
    <link rel="icon" href="../../resources/images/logo/smallTree.svg"
          type="image/x-icon">
</head>
<body style="background-color: ghostwhite">

<section id="reiki"></section>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script type="text/javascript">
    $(window).scroll(function () {
        var scroll_position = $(window).scrollTop() * 2.8;
        $('#reiki').css({
            'background-position-x': -scroll_position + 'px',
            'background-position-y': (-scroll_position / 2.8) + 'px',

        })
    })
</script>
<header>
    <h1 class="display-3">C’est quoi le Reiki ?</h1>
</header>
<jsp:include page="../fragments/menu.jsp"/>

<div class="container-fluid" style="padding-top: 2px">
    <div class="jumbotron" style="font-family: Montserrat-Italic">
        <h2 class="display-4">Reiki est le nom japonais qui désigne l’énergie vitale.</h2>
        <p class="lead"> Comment agit le Reiki ?
            <small class="text-muted"> Le Reiki agit au niveau physique, émotionnel, énergétique, mental et spirituel.
                C’est un
                traitement corporel holistique lors duquel de l’énergie est transmise par imposition des
                mains afin d’activer les forces d’auto-guérison.
            </small>
        </p>
    </div>

    <section id="fuji"></section>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script type="text/javascript">
        $(window).scroll(function () {
            var scroll_position = $(window).scrollTop() / 1.3;
            $('#fuji').css({
                'background-position-x': -scroll_position + 'px',
                'background-position-y': (-scroll_position * 2.5) + 'px',

            })
        })
    </script>

    <div class="row" style="padding-top: 30px">
        <div class="col-md-6">
            <img class="img-fluid rounded" src="../../resources/images/reiki/panels(cropped).jpg">
        </div>
        <div class="col-md-6">
            <h2 class="mb-3" style="font-family: Montserrat-Regular">Quels sont les effets du Reiki ?
                <small class="text-muted"></small>
            </h2>
            <ul class="list-unstyled" style="font-family: Montserrat-Italic; font-weight: 400; font-size: 27px">
                <li>Réduit le stress et les douleurs</li>
                <li>Augmente l’énergie corporelle et mentale</li>
                <li>Accélère la guérison corporelle, émotionnelle et spirituelle</li>
                <li>Aide à restaurer l’équilibre entre le corps et l’esprit</li>
                <li>Elève le taux vibratoire</li>
                <li>Favorise le processus d’auto-guérison</li>
                <li>Renforce le système immunitaire</li>
                <li>Dissout les blocages</li>
                <li>Accroit le bien-être, l’énergie, la lucidité, l’intuition et le niveau de conscience</li>
            </ul>
        </div>
    </div>


</div>

<jsp:include page="../fragments/footer.jsp"/>


</body>
</html>

