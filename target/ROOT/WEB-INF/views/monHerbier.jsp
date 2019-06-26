<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 15.04.19
  Time: 12:04
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
    <title>Mon Herbier</title>
    <!-- add icon link -->
    <link rel="icon" href="../../resources/images/logo/smallTree.svg"
          type="image/x-icon">
    <%--local CSS source --%>
    <link rel="stylesheet" href="../../resources/css/stylesheet.css">
</head>

<body>

<section id="herbier"></section>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script type="text/javascript">
    $(window).scroll(function () {
        var scroll_position = $(window).scrollTop() * 1.6;
        $('#herbier').css({
            'background-position-x': -scroll_position + 'px',
            'background-position-y': (-scroll_position * 2.5) + 'px',

        })
    })
</script>
<header>
    <h1 class="display-3">Mon Herbier</h1>
</header>
<jsp:include page="../fragments/menu.jsp"/>

<div class="container-fluid" style="padding-top: 2px">

    <div class="jumbotron">
        <h2 class="display-4">Here you can learn more about plants</h2>
        <p class="lead">Mutat explicari eu duo,
            graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo cu.
            Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his legere
            mucius, eu vis viderer referrentur.</p>
    </div>

    <div class="row">
        <div class="col-md-6 col-xl-3">

            <div class="parallax4"></div>

            <h2>This is a section
                <small class="text-muted"> of this website about herbalism</small>
            </h2>
            <p class="text-justify">Lorem ipsum dolor sit amet, has porro legere ei, convenire suscipiantur his ex.
                Mutat explicari eu duo,
                graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo cu.
                Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his
                legere
                mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.Lorem ipsum dolor sit
                amet, has porro legere ei, convenire suscipiantur his ex. Mutat explicari eu duo,
                graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo cu.
                Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his
                legere
                mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
        </div>

        <div class="col-md-6 col-xl-3">

            <div class="parallax6"></div>

            <h2>This is a section
                <small class="text-muted"> of this website about herbalism</small>
            </h2>
            <p class="text-justify">Lorem ipsum dolor sit amet, has porro legere ei, convenire suscipiantur his ex.
                Mutat explicari eu duo,
                graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo cu.
                Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his
                legere
                mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.Lorem ipsum dolor sit
                amet, has porro legere ei, convenire suscipiantur his ex. Mutat explicari eu duo,
                graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo cu.
                Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his
                legere
                mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
        </div>

        <div class="col-md-6 col-xl-3">

            <div class="parallax3"></div>

            <h2>This is a section
                <small class="text-muted"> of this website about herbalism</small>
            </h2>
            <p class="text-justify">Lorem ipsum dolor sit amet, has porro legere ei, convenire suscipiantur his ex.
                Mutat explicari eu duo,
                graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo cu.
                Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his
                legere
                mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.Lorem ipsum dolor sit
                amet, has porro legere ei, convenire suscipiantur his ex. Mutat explicari eu duo,
                graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo cu.
                Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his
                legere
                mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
        </div>

        <div class="col-md-6 col-xl-3">

            <div class="parallax5"></div>

            <h2>This is a section
                <small class="text-muted"> of this website about herbalism</small>
            </h2>
            <p class="text-justify">Lorem ipsum dolor sit amet, has porro legere ei, convenire suscipiantur his ex.
                Mutat explicari eu duo,
                graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo cu.
                Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his
                legere
                mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.Lorem ipsum dolor sit
                amet, has porro legere ei, convenire suscipiantur his ex. Mutat explicari eu duo,
                graeco causae usu ne, his albucius adipisci at. Et mentitum officiis qui, phaedrum incorrupte duo cu.
                Viderer postulant signiferumque at vix, no est cibo doctus timeam. Sea enim decore option an, in his
                legere
                mucius, eu vis viderer referrentur. Eum eu vide zril, prima novum doctus qui id.</p>
        </div>
    </div>

    <div class="row">
        <div class="col">
            <h2 class="mb-3">Herbs' Legend</h2>
            <div id="legend">
                <dl class="row">
                    <dt class="col-sm-3"><i class="fas fa-utensils"></i> <p>Edible Plant</p>
                    </dt>
                    <dd class="col-sm-9">This plant is edible</dd>
                    <dt class="col-sm-3"><i class="fas fa-mortar-pestle"></i> <p>Preparation</p>
                    </dt>
                    <dd class="col-sm-9">This is how to do alchemy</dd>
                    <dt class="col-sm-3"><i class="fas fa-skull-crossbones"></i> <p>Plantus Plantae</p>
                    </dt>
                    <dd class="col-sm-9">A plant that is poisonous!</dd>
                    <dt class="col-sm-3 text-truncate"><i class="fas fa-allergies"></i> <p>Allergeneratorus</p>
                    </dt>
                    <dd class="col-sm-9">A plant that may cause severe allergic reaction!</dd>
                    <dt class="col-sm-3"><i class="fas fa-burn"></i> <p>Dermoburneus Pirae</p>
                    </dt>
                    <dd class="col-sm-9">This plant may burn your epiderma</dd>
                    <dt class="col-sm-3"><i class="fas fa-bed"></i> <p>Somnia Sonata</p>
                    </dt>
                    <dd class="col-sm-9">This plant may help you with insomnia</dd>
                    <dt class="col-sm-3"><i class="fas fa-bug"></i> <p>Buggieneus Plantus</p>
                    </dt>
                    <dd class="col-sm-9">This plant may attract/repel bugs</dd>
                    <dt class="col-sm-3"><i class="fas fa-brain"></i> <p>Cervauxia Brillae</p>
                    </dt>
                    <dd class="col-sm-9">This plant may enhance your brain power!</dd>
                    <dt class="col-sm-3"><i class="fas fa-bong"></i> <p>Sativa Alta</p>
                    </dt>
                    <dd class="col-sm-9">This plant may get you high</dd>
                    <dt class="col-sm-3"><i class="fas fa-dna"></i> <p>Mutatia Extrema</p>
                    </dt>
                    <dd class="col-sm-9">This plant may mutate you DNA</dd>
                    <dt class="col-sm-3"><i class="fas fa-coffee"></i> <p>Stimulatia Effecta</p>
                    </dt>
                    <dd class="col-sm-9">This plant may stimulate your body</dd>
                    <dt class="col-sm-3"><i class="fas fa-book-medical"></i> <p>Planta Medici</p>
                    </dt>
                    <dd class="col-sm-9">This plant has some medical application</dd>
                    <dt class="col-sm-3"><i class="fas fa-cat"></i> <p>Felina Bruhia</p>
                    </dt>
                    <dd class="col-sm-9">This plant may attract cats and witches</dd>
                    <dt class="col-sm-3"><i class="fas fa-venus"></i> <p>Femmedomia Enhantis</p>
                    </dt>
                    <dd class="col-sm-9">This plant may help women</dd>
                    <dt class="col-sm-3"><i class="fas fa-mars"></i> <p>Hommedomia Enhantis</p>
                    </dt>
                    <dd class="col-sm-9">This plant may help men</dd>
                    <dt class="col-sm-3"><i class="fas fa-baby"></i> <p>Frutitia Homo</p>
                    </dt>
                    <dd class="col-sm-9">This plant may help with babies</dd>
                    <dt class="col-sm-3"><i class="fas fa-ankh"></i> <p>Ceremonialis Vulgaris</p>
                    </dt>
                    <dd class="col-sm-9">This plant may have some ceremonial application</dd>
                    <dt class="col-sm-3"><i class="fas fa-heartbeat"></i> <p>Cardillia Heroica</p>
                    </dt>
                    <dd class="col-sm-9">This plant may enhance your cardio system</dd>
                    <dt class="col-sm-3"><i class="fas fa-mug-hot"></i> <p>Herbae Cupofaefae</p>
                    </dt>
                    <dd class="col-sm-9">This plant is perfect for a herbal tea</dd>
                    <dt class="col-sm-3"><i class="fas fa-pepper-hot"></i> <p>Jalapenia Pica</p>
                    </dt>
                    <dd class="col-sm-9">This plant has extremely hot/spicy taste</dd>
                    <dt class="col-sm-3"><i class="fas fa-restroom"></i> <p>Pis-en-Lit</p>
                    </dt>
                    <dd class="col-sm-9">This plant may be used as diuretic/bowel movement enhancer</dd>
                    <dt class="col-sm-3"><i class="fas fa-thermometer-full"></i> <p>Exodoria Ratura</p>
                    </dt>
                    <dd class="col-sm-9">This plant will rise your body temperature</dd>
                    <dt class="col-sm-3"><i class="fas fa-thermometer-empty"></i> <p>Endoria Ratura</p>
                    </dt>
                    <dd class="col-sm-9">This plant may lower your body temperature</dd>
                    <dt class="col-sm-3"><i class="fas fa-spider"></i> <p>Arachnae Tractiva</p>
                    </dt>
                    <dd class="col-sm-9">This plant may attract spiders</dd>
                    <dt class="col-sm-3"><i class="fas fa-dove"></i> <p>Tranquilia Enducia</p>
                    </dt>
                    <dd class="col-sm-9">This plant may exhibit calming effects</dd>
                    <dt class="col-sm-3"><i class="fas fa-child"></i> <p>Bienetrea Vivalis</p>
                    </dt>
                    <dd class="col-sm-9">This plant may enduce good mood</dd>
                </dl>
            </div>
        </div>
    </div>

</div>


<jsp:include page="../fragments/footer.jsp"/>
</body>
</html>
