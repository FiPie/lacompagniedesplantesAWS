<%--
  Created by IntelliJ IDEA.
  User: filippie
  Date: 15.04.19
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!-- Font Awesome CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
      integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<!--Font Awesome icons-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
      integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

<nav class="navbar navbar-expand-lg navbar navbar-light sticky-top mt-5 main">
    <a href="${pageContext.request.contextPath}/" class="navbar-brand">
        <img src="../../resources/images/logo/smallTree.svg" height="25" alt="LaCompagnieDesPlantes"> LaCompagnieDesPlantes
    </a>
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse9">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarCollapse9">
        <div class="navbar-nav">
            <a class="nav-item nav-link" href="${pageContext.request.contextPath}/">Accueil</a>
            <a class="nav-item nav-link" href="${pageContext.request.contextPath}/aboutMe">Qui Suis-Je</a>
            <li class="nav-item dropdown" style="font-family: sans-serif">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Offre</a>
                <div class="dropdown-menu">
                    <a href="${pageContext.request.contextPath}/reiki" class="nav-item nav-link"><i
                            class="fas fa-feather"></i> REIKI</a>
                    <div class="dropdown-divider"></div>
                    <a href="${pageContext.request.contextPath}/herbes" class="nav-item nav-link"><i
                            class="fas fa-mortar-pestle"></i> HERBES</a>
                </div>
            </li>
            <a class="nav-item nav-link" href="${pageContext.request.contextPath}/agenda">Agenda Ateliers</a>
            <a class="nav-item nav-link" href="${pageContext.request.contextPath}/herbier">Mon Herbier</a>
            <a class="nav-item nav-link" href="${pageContext.request.contextPath}/contact">Contact</a>
            <a class="nav-item nav-link" href="${pageContext.request.contextPath}/gallerie">Event(Gallerie)</a>
            <sec:authorize access="isAuthenticated()">
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Admin</a>
                    <div class="dropdown-menu">
                        <a class="nav-item nav-link" href="${pageContext.request.contextPath}/logout"><i
                                class="fas fa-power-off"></i> Logout</a>
                        <div class="dropdown-divider"></div>
                        <a class="nav-item nav-link" href="${pageContext.request.contextPath}/filesInDataBase"> <i
                                class="fas fa-database"></i> DB content</a>
                        <div class="dropdown-divider"></div>
                        <a class="nav-item nav-link" href="${pageContext.request.contextPath}/fileUpload"><i
                                class="fas fa-upload"></i> Upload file</a>
                        <div class="dropdown-divider"></div>
                        <a class="nav-item nav-link" href="${pageContext.request.contextPath}/admin/adminSettings">
                            <i class="fas fa-tools"></i> Admin panel</a>
                    </div>
                </li>
            </sec:authorize>
        </div>
        <%--SEARCH BAR--%>
        <%--<form class="form-inline ml-auto">
            <input type="text" class="form-control mr-sm-2" placeholder="Search">
            <button type="submit" class="btn btn-outline-primary">Search</button>
        </form>--%>
    </div>
</nav>