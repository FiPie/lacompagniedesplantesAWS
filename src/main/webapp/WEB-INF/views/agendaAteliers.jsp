<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 15.04.19
  Time: 12:03
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
    <title>Agenda Ateliers</title>
    <!-- add icon link -->
    <link rel="icon" href="../../resources/images/logo/smallTree.svg"
          type="image/x-icon">
</head>

<body>

<section id="ateliers"></section>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script type="text/javascript">
    $(window).scroll(function () {
        var scroll_position = $(window).scrollTop() * 1.9;
        $('#ateliers').css({
            'background-position-x': -scroll_position + 'px',
            'background-position-y': (-scroll_position * 2.2) + 'px',

        })
    })
</script>


<header>
    <h1 class="display-3">Agenda Ateliers</h1>
</header>
<jsp:include page="../fragments/menu.jsp"/>


<div class="container-fluid" style="padding-top: 2px">

    <div class="jumbotron">
        <h2 class="display-4">Agenda Ateliers</h2>
        <p class="lead">Liste des thèmes ateliers.</p>
    </div>

    <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-7">
            <h2>1) Trousse de base en HE:
                <small class="text-muted"></small>
            </h2>
            <p class="text-justify">
                Les huiles essentielles sont à la mode depuis quelques
                années déjà, on les retrouve partout : dans la cuisine, dans les cosmétiques, dans les produits
                d’entretien, mais on oublie souvent que ce sont d'abord des remèdes puissants qu’il faut utiliser avec
                parcimonie. Durant cet atelier, nous allons aborder les principaux dangers présentés par les huiles
                essentielles, les précautions d’utilisation et surtout les propriétés bénéfiques.
                Nous constituerons également une trousse de base pour faire face à la majorité des petits maux du
                quotidien. Disposer de 4 ou 5 huiles essentielles de base permet de ne pas courir à la pharmacie au
                moindre refroidissement, indigestion ou douleur. 
            </p>
        </div>
        <div class="col-md-1">
        </div>
    </div>
    <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-7">
            <h2>2) Spécial ados
                <small class="text-muted"> (avant les examens):</small>
            </h2>
            <p class="text-justify">
                Vous découvrirez les remèdes naturels qui sont efficaces contre le
                stress, l'acné, les règles douloureuses et ceux qui améliorent la mémoire. 
            </p>
        </div>
        <div class="col-md-1">
        </div>
    </div>

    <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-7">
            <h2>3) Les plantes médicinales contre les bobos de l'hiver
                <small class="text-muted"> (automne/hiver):</small>
            </h2>
            <p class="text-justify"> Ainsi, vous allez savoir quel
                remède naturel prendre en toute sécurité en cas de toux, rhume, fièvre ou grippe. Je vais partager avec
                vous des recettes efficaces que j'applique lorsque le besoin s'en fait sentir. </p>
        </div>
        <div class="col-md-1">
        </div>
    </div>

    <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-7">
            <h2>4)  'Détox'
                <small class="text-muted"> (printemps):</small>
            </h2>
            <p class="text-justify"> consacré aux plantes médicinales qui permettent de nettoyer notre corps en
                profondeur après l'hiver. Le printemps est le moment idéal pour se débarrasser des toxines et de
                retrouver l'énergie et l'harmonie dont nous avons besoin. Présentation de 6 plantes dépuratives communes
                dans nos régions. Seront, entre autres, abordées : leurs propriétés, les contre-indications, sous
                quelles formes les utiliser... Un tour complet pour prendre soin de notre corps. L’Atelier sera aussi
                l’occasion de déguster 2-3 tisanes présentées.</p>
        </div>
        <div class="col-md-1">
        </div>

    </div>

    <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-7">
            <h2>5) Anti-déprime
                <small class="text-muted"> (automne/hiver):</small>
            </h2>
            <p class="text-justify"> plantes qui favorisent le sommeil, qui luttent contre la dépression,
                contre le stress, la fatigue et qui augmentent l'immunité.</p>
        </div>
        <div class="col-md-1">
        </div>

    </div>

    <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-7">
            <h2>6) Ménopause:
                <small class="text-muted"></small>
            </h2>
            <p class="text-justify"> 6) Ménopause: plantes médicinales à visée hormonale qui vont aider les
                femmes à vivre cette période de
                vie plus détendues et surtout atténuer ou faire disparaitre les symptômes, souvent désagréables.
            </p>
        </div>
        <div class="col-md-1">
        </div>

    </div>

    <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-7">
            <h2>7) Spécial vacances
                <small class="text-muted"> (été):</small>
            </h2>
            <p class="text-justify">  Pour voyager serein, élaborez votre trousse de voyage avec des remèdes
                naturels grâce à des conseils en herboristerie: piqûres, brûlures, mal du voyage... ne
                vous gâcheront plus vos vacances !</p></div>
        <div class="col-md-1">
        </div>

    </div>

    <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-7">
            <h2>8) Thé dans tous ses états
                <small class="text-muted">(automne/hiver):</small>
            </h2>
            <p class="text-justify"> dégustation de différentes sortes de thé + les vertus du thé
                vert. Actuellement, le thé est la première boisson chaude la plus consommée au monde :
                du ‘Five O'clock’
                anglais, en passant par le ‘Cha No Yu’ japonais, le samovar russe ou encore le thé à la
                menthe
                d'Afrique.  Mais avant de devenir un breuvage cosmopolite d’utilisation quotidienne, il
                a surtout été
                connu en tant que plante médicinale.</p>
        </div>
        <div class="col-md-1">
        </div>

    </div>

    <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-7">
            <h2>9) Fleurs de Bach:
                <small class="text-muted"> philosophie de Dr Bach;</small>
            </h2>
            <p class="text-justify"> mode d’emploi et caractéristiques des 38 essences florales
                divisées en 7 groupes + Rescue.</p>
        </div>
        <div class="col-md-1">
        </div>

    </div>

    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-7">
            <h2>10) Spécial femmes enceintes et allaitantes
                <small class="text-muted"> + bébés de 0-3 ans :</small>
            </h2>
            <p class="text-justify"> la grossesse, l’allaitement et la toute
                jeune enfance sont des périodes de vie pendant lesquels il est parfois difficile
                de se soigner à cause
                de nombreuses contre-indications. Heureusement, il existe quelques plantes
                médicinales et formes
                galéniques qui sont sans danger pour les futures mamans et les tout-petits.</p>
        </div>
        <div class="col-md-1"></div>
    </div>


    <div class="jumbotron" style="margin-top: 20px;margin-bottom: 10px; padding-top: 15px; padding-bottom: 1px">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <h2 class="display-4">Infos pratiques:
                    <small class="text-muted"> Durée : +/- 2 hrs.</small>
                </h2>
                <p class="lead text-justify">Support écrit remis à chaque participant.
                    Nombre de personnes maximum : 15 et minimum : 5.
                    Prix : 20 EUR (Arlon) ou 25 EUR (en dehors d’Arlon) par personne et par
                    atelier.</p>
            </div>
            <div class="col-md-1"></div>
        </div>
    </div>
</div>
<jsp:include page="../fragments/footer.jsp"/>
</body>
</html>
