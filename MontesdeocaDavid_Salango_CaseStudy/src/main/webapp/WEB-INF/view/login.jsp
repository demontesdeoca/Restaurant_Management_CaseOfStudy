<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>Salango</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="${pageContext.request.contextPath}/resources/styles/styles.css" rel="stylesheet" type="text/css" media="all">
<link href="${pageContext.request.contextPath}/resources/scripts/lightbox/lightbox.min.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
    <div class="wrapper row0">
        <div id="topbar" class="hoc clear">
            <div class="fl_left">
                <!-- ################################################################################################ -->
                <ul class="nospace">
                    <li>
                        <i class="fas fa-phone rgtspace-5"></i>
                        +1 (929) 478 3654
                    </li>
                    <li>
                        <i class="far fa-envelope rgtspace-5"></i>
                        info@salango.com
                    </li>
                </ul>
                <!-- ################################################################################################ -->
            </div>
            <div class="fl_right">
                <!-- ################################################################################################ -->
                <!--
                <ul class="nospace">
                    <li><a href="#" title="Login"><i class="fas fa-sign-in-alt"> Login</i></a></li>
                    <li><a href="#" title="Sign Up"><i class="fas fa-edit"> Sign Up</i></a></li>
                    <li id="searchform">
                        <div>
                            <form action="#" method="post">
                                <fieldset>
                                    <legend>Quick Search:</legend>
                                    <input type="text" placeholder="Enter search term&hellip;">
                                    <button type="submit"><i class="fas fa-search"></i></button>
                                </fieldset>
                            </form>
                        </div>
                    </li>
                </ul>
-->
                <!-- ################################################################################################ -->
            </div>
        </div>
    </div>
    <!-- ################################################################################################ -->
    <!-- Top Background Image Wrapper -->
    <div class="bgded overlay row4 background_main">
        <!-- ################################################################################################ -->
        <div class="wrapper row1">
            <header id="header" class="hoc clear">
                <div id="logo" class="fl_left">
                    <!-- ################################################################################################ -->
                    <h1 class="mainname">
                        <a href="${pageContext.request.contextPath}/init/main">SALANGO</a>
                    </h1>
                    <!-- ################################################################################################ -->
                </div>
                <nav id="mainav" class="fl_right">
                    <!-- ################################################################################################ -->
                    <ul class="clear">
                        <li class="active">
                            <a href="${pageContext.request.contextPath}/init/main">Home</a>
                        </li>
                        <li>
                            <a class="drop" href="${pageContext.request.contextPath}/itemsCRUD/menu">
                                <i class="fas fa-utensils"></i>
                                Menu
                            </a>
                            <ul>
                                <li>
                                    <a href="${pageContext.request.contextPath}/itemsCRUD/menuopt?menopt=appetizer">Appetizers</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/itemsCRUD/menuopt?menopt=soup">Soups</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/itemsCRUD/menuopt?menopt=salad">Salads</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/itemsCRUD/menuopt?menopt=entree">Entrée</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/itemsCRUD/menuopt?menopt=dessert">Desserts</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/itemsCRUD/menuopt?menopt=drink">Drinks</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fas fa-calendar-check"></i>
                                Reservations
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="far fa-map"></i>
                                Hours & Location
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fas fa-address-card"></i>
                                About Us
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fas fa-phone"></i>
                                Contact
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fab fa-instagram"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- ################################################################################################ -->
                </nav>
            </header>
        </div>
        <!-- ################################################################################################ -->
    </div>
    <!-- End Top Background Image Wrapper -->
    <div class="row3">
        <main class="hoc clear">
            <section class="ftco-section">
                <div class="col-centered justify-content-center">
                    <div class="col-md-16">
                        <div class="wrapper">
                            <div class="col-centered no-gutters mb-5">
                                <div class="col-md-7">
                                    <div class="contact-wrap w-100 p-md-5 p-4">
                                        <%-- <form:form action="dologin" modelAttribute="clients" class="contactForm" method="POST" onsubmit="return validateLogIn();">                                     --%>
                                        <form:form action="dologin" modelAttribute="${modelattribute}" class="contactForm" method="POST" onsubmit="${validatelogin}">
                                            <div class="col-centered formlogin">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="label" for="femail">${labelpathfield}</label>
                                                        <form:input path="${pathfield}" type="text" class="form-input" name="femail" id="femail" placeholder="${labelpathfield}" />
                                                        <label class="labelmsg" id="msgEmail"></label>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="label" for="fPWD">Password</label>
                                                        <div class="PWDToggle">
                                                            <form:input path="password" type="password" class="form-input" name="fPWD" id="fPWD" placeholder="Password" />
                                                            <i class="far fa-eye" id="togglePWD" name="togglePWD" onclick="togglePassword('fPWD', 'togglePWD');"></i>
                                                        </div>
                                                        <label class="labelmsg" id="msgPWD"></label>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <input type="submit" value="Log In" class="btn">
                                                        <div class="submitting"></div>
                                                    </div>
                                                    <div class="form-group">
                                                        <c:if test="${loginadmin == 'N'}">
                                                        Not a Client yet? Sign up<a href="${pageContext.request.contextPath}/clientsCRUD/signup"> here</a>
                                                            <div class="submitting"></div>
                                                        </c:if>
                                                    </div>
                                                    <label class="labelmsg" id="msgExists">${message}</label>
                                                </div>
                                            </div>
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- ################################################################################################ -->
            <!-- / main body -->
            <div class="clear"></div>
        </main>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="wrapper coloured">
        <section id="ctdetails" class="hoc clear">
            <!-- ################################################################################################ -->
            <ul class="nospace clear">
                <li class="one_quarter first">
                    <div class="block clear">
                        <a href="#">
                            <i class="fas fa-phone"></i>
                        </a>
                        <span>
                            <strong>Give us a call:</strong>
                            +1 (929) 478 3654
                        </span>
                    </div>
                </li>
                <li class="one_quarter">
                    <div class="block clear">
                        <a href="#">
                            <i class="fas fa-envelope"></i>
                        </a>
                        <span>
                            <strong>Send us a mail:</strong>
                            info@salango.com
                        </span>
                    </div>
                </li>
                <li class="one_quarter">
                    <div class="block clear">
                        <a href="#">
                            <i class="fas fa-clock"></i>
                        </a>
                        <span>
                            <strong> Monday - Saturday:</strong>
                            08.00am - 18.00pm
                        </span>
                    </div>
                </li>
                <li class="one_quarter">
                    <div class="block clear">
                        <a href="#">
                            <i class="fas fa-map-marker-alt"></i>
                        </a>
                        <span>
                            <strong>Come visit us:</strong>
                            Directions to
                            <a href="#">our location</a>
                        </span>
                    </div>
                </li>
            </ul>
            <!-- ################################################################################################ -->
        </section>
    </div>
    <div class="wrapper row5">
        <div id="copyright" class="hoc clear">
            <!-- ################################################################################################ -->
            <p class="fl_left">
                Copyright &copy; 2021 - All Rights Reserved -
                <a href="#">D'montes</a>
            </p>
            <p class="fl_right">
                <c:if test="${loginadmin == 'N'}">
                    <a href="${pageContext.request.contextPath}/admin/login" title="">Site Admin</a>
                </c:if>
            </p>
            <!-- ################################################################################################ -->
        </div>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <a id="backtotop" href="#top">
        <i class="fas fa-chevron-up"></i>
    </a>
    <!-- JAVASCRIPTS -->
    <script src="${pageContext.request.contextPath}/resources/scripts/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/scripts/jquery.backtotop.js"></script>
    <!--    <script src="layout/scripts/jquery.mobilemenu.js"></script>-->
    <script src="${pageContext.request.contextPath}/resources/scripts/lightbox/lightbox.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/scripts/jscripts.js"></script>
</body>
</html>
