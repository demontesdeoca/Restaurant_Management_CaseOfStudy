<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
                        <i class="fas fa-phone rgtspace-5"></i> +1 (929) 478 3654
                    </li>
                    <li>
                        <i class="far fa-envelope rgtspace-5"></i> info@salango.com
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
                            <a class="drop" href="#"><i class="fas fa-utensils"></i> Menu </a>
                            <ul>
                                <li>
                                    <a href="pages/gallery.html">Appetizers</a>
                                </li>
                                <li>
                                    <a href="pages/sidebar-left.html">Soups</a>
                                </li>
                                <li>
                                    <a href="pages/full-width.html">Salads</a>
                                </li>
                                <li>
                                    <a href="pages/full-width.html">Entrée</a>
                                </li>
                                <li>
                                    <a href="pages/sidebar-right.html">Desserts</a>
                                </li>
                                <li>
                                    <a href="pages/basic-grid.html">Drinks</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"> <i class="fas fa-calendar-check"></i> Reservations
                            </a>
                        </li>
                        <li>
                            <a href="#"> <i class="far fa-map"></i> Hours & Location
                            </a>
                        </li>
                        <li>
                            <a href="#"> <i class="fas fa-address-card"></i> About Us
                            </a>
                        </li>
                        <li>
                            <a href="#"> <i class="fas fa-phone"></i> Contact
                            </a>
                        </li>

                        <li>
                            <a href="#"> <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#"> <i class="fab fa-twitter"></i></a>
                        </li>
                        <li>
                            <a href="#"> <i class="fab fa-instagram"></i></a>
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
            <div class="row">
                <div class="col-md-12">
                    <div class="wrapper">
                        <div class="row no-gutters mb-5">
                            <div class="col-md-7">
                                <div class="contact-wrap w-100 p-md-5 p-4">
                                    <form:form action="doclientsCRUD" modelAttribute="clients" class="contactForm" method="POST" >
                                        <div class="formtitle">
                                            <p class="heading formunderline font-x2">Clients</p>
                                        </div>
                                        <div class="row justify-content-center">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="fname">Name</label>
                                                    <form:input path="firstName" type="text" class="form-input" name="fname" id="fname" placeholder="Name" />
                                                    <label class="labelmsg" id="msgName"></label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="flastname">Last Name</label>
                                                    <form:input path="lastName" type="text" class="form-input" name="flastname" id="flastname" placeholder="Last Name" />
                                                    <label class="labelmsg" id="msgLastName"></label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="fphone">Phone</label>
                                                    <form:input path="phone" type="text" class="form-input" name="fphone" id="fphone" placeholder="Phone" />
                                                    <label class="labelmsg" id="msgPhone"></label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="femail">Email Address</label>
                                                    <form:input path="email" type="text" class="form-input" name="femail" id="femail" placeholder="Email" />
                                                    <label class="labelmsg" id="msgEmail"></label>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="fDOB">Date of Birth</label>
                                                    <form:input path="dob" type="date" class="form-input" name="fDOB" id="fDOB" placeholder="Date of Birth" />
                                                    <label class="labelmsg" id="msgDOB"></label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="fgender">Gender</label>
                                                    <form:input type="text" path="gender" id="fgender" name="fgender" class="form-input"/>
                                                    <label class="labelmsg" id="msgGender"></label>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="faddress1">Address Line 1</label>
                                                    <form:input path="addressLine1" type="text" class="form-input" name="faddress1" id="faddress1" placeholder="Address Line 1" />
                                                    <label class="labelmsg" id="msgAddress1"></label>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="faddress2">Adress Line 2</label>
                                                    <form:input path="addressLine2" type="text" class="form-input" name="faddress2" id="faddress2" placeholder="Address Line 2" />
                                                    <label class="labelmsg" id="msgAddress2"></label>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="fcity">City</label>
                                                    <form:input path="city" type="text" class="form-input" name="fcity" id="fcity" placeholder="City" />
                                                    <label class="labelmsg" id="msgCity"></label>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="fcountry">Country</label>
                                                    <form:input type="text" path="country" id="fcountry" name="fcountry" class="form-input" />
                                                    <label class="labelmsg" id="msgCountry"></label>
                                                </div>
                                            </div>


                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="fstate">State</label>
                                                    <form:select type="text" path="state" id="fstate" name="fstate" class="form-input" />
                                                    <label class="labelmsg" id="msgState"></label>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="label" for="fzip">Zip Code</label>
                                                    <form:input path="zipCode" type="text" class="form-input" name="fzip" id="fzip" placeholder="Zip Code" />
                                                    <label class="labelmsg" id="msgZip"></label>
                                                </div>
                                            </div>
                                            <div class="row-centered">
                                                <div class="form-group">
                                                    <input type="submit" name="action" value="${action}" onclick="${validate}" class="btn">
                                                    <div class="submitting"></div>
                                                    <input type="submit" name="action" value="cancel" class="btn">
                                                    <div class="submitting"></div>
                                                </div>
                                                <br>
                                                <h2>${message}</h2>
                                            </div>
                                            <div class="col-md-4"></div>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
                        <a href="#"><i class="fas fa-phone"></i></a> <span><strong>Give us a call:</strong> +1 (929) 478 3654</span>
                    </div>
                </li>
                <li class="one_quarter">
                    <div class="block clear">
                        <a href="#"><i class="fas fa-envelope"></i></a> <span><strong>Send us a mail:</strong> info@salango.com</span>
                    </div>
                </li>
                <li class="one_quarter">
                    <div class="block clear">
                        <a href="#"><i class="fas fa-clock"></i></a> <span><strong> Monday - Saturday:</strong> 08.00am - 18.00pm</span>
                    </div>
                </li>
                <li class="one_quarter">
                    <div class="block clear">
                        <a href="#"><i class="fas fa-map-marker-alt"></i></a> <span><strong>Come visit us:</strong> Directions to <a href="#">our location</a></span>
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
                Copyright &copy; 2021 - All Rights Reserved - <a href="#">D'montes</a>
            </p>
            <p class="fl_right">
                <a target="_blank" href="" title=""></a>
            </p>
            <!-- ################################################################################################ -->
        </div>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
    <!-- JAVASCRIPTS -->
    <script src="${pageContext.request.contextPath}/resources/scripts/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/scripts/jquery.backtotop.js"></script>
    <!--    <script src="layout/scripts/jquery.mobilemenu.js"></script>-->
    <script src="${pageContext.request.contextPath}/resources/scripts/lightbox/lightbox.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/scripts/jscripts.js"></script>
</body>

</html>
