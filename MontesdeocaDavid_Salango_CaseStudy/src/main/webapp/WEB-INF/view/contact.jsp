<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Salango Kitchen</title>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles/styles.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles/fonts.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles/animate.css">
    <script src="${pageContext.request.contextPath}/resources/scripts/script.js"></script>
</head>

<body>
    <div class="background">
        <div class="menu_container">
            <div class="menu_item">
                <a class="main_title" href="main.html" target="_self">SALANGO<span class="second_title"> kitchen</span> </a>
            </div>

            <div class="menu_item">
                <nav>
                    <ul>
                        <li class="dropdown"><a class="dropbtn"><i class="fas fa-utensils">
                                </i> MENU <i class="fas fa-caret-down"></i></a>
                            <div class="dropdown-content">
                                <a href="menu.html#secSoups" target="_self">Soups</a>
                                <a href="menu.html#secAppetizers" target="_self">Appetizers</a>
                                <a href="menu.html#secEntree" target="_self">Entr�e</a>
                                <a href="menu.html#secDesserts" target="_self">Desserts</a>
                                <a href="menu.html#secDrinks" target="_self">Drinks</a>
                            </div>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/customer/reservation"><i class="fas fa-calendar-check"></i> RESERVATIONS</a>
                        </li>
                        <li>
                            <a href="about.html" target="_self"><i class="fas fa-address-card"></i> ABOUT US</a>
                        </li>
                        <li>
                             <a href="${pageContext.request.contextPath}/customer/contact" target="_self"><i class="fas fa-phone"></i> CONTACT</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>


        <div>
            <div>
                <p class="txt1 animated fadeInDown">
                    Welcome to
                </p>
            </div>
            <div>
                <p class="tit1 animated fadeInUp">SALANGO<br><span class="undertit1">Kitchen</span></p>
            </div>
            <div>
                <br>
                <p class="tit1 animated fadeInUp">
                    Contact Us
                </p>
            </div>
        </div>
        <div class="backgroundTable1">
            <section class="ftco-section">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-12">
                            <div class="wrapper">
                                <div class="row no-gutters mb-5">
                                    <div class="col-md-7">
                                        <div class="contact-wrap w-100 p-md-5 p-4">
                                            <form method="post" id="contactForm" name="contactForm" class="contactForm" onsubmit="return validateForm()">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="label" for="fname">Full Name</label>
                                                            <input type="text" class="form-control" name="fname" id="fname" placeholder="Name">
                                                            <label class="labelmsg" id="msgName"></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="label" for="femail">Email Address</label>
                                                            <input type="email" class="form-control" name="femail" id="femail" placeholder="Email">
                                                            <label class="labelmsg" id="msgEmail"></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="label" for="fsubject">Subject</label>
                                                            <input type="text" class="form-control" name="fsubject" id="fsubject" placeholder="Subject">
                                                            <label class="labelmsg" id="msgSubject"></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="label" for="fmessage">Message</label>
                                                            <textarea name="fmessage" class="form-control" id="fmessage" cols="30" rows="4" placeholder="Message"></textarea>
                                                            <label class="labelmsg" id="msgMessage"></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <input type="submit" value="Send Message" class="btn btn-primary">
                                                            <div class="submitting"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <!--<div class="col-md-5 d-flex align-items-stretch">
                                        <div id="map">
                                        </div>
                                    </div>-->
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </div>
    </div>

    <footer>
        <section>
            <div class="foot_container">
                <div class="dbox w-100 text-center">
                    <div class="icon d-flex align-items-center justify-content-center">
                        <span class="fas fa-map-marker-alt fa-spin"></span>
                    </div>
                    <div class="text">
                        <p><span>Address:</span> 593 Main St. New York NY 10016</p>
                    </div>
                </div>
                <div class="dbox w-100 text-center">
                    <div class="icon d-flex align-items-center justify-content-center">
                        <span class="fas fa-phone"></span>
                    </div>
                    <div class="text">
                        <p><span>Phone:</span> <a href="tel://1234567920">+ 1593 0593 98</a></p>
                    </div>
                </div>
                <div class="dbox w-100 text-center">
                    <div class="icon d-flex align-items-center justify-content-center">
                        <span class="fas fa-envelope"></span>
                    </div>
                    <div class="text">
                        <p><span>Email:</span> <a href="mailto:info@salango.com">info@salango.com</a></p>
                    </div>
                </div>
                <div class="dbox w-100 text-center">
                    <div class="icon d-flex align-items-center justify-content-center">
                        <span class="fas fa-globe"></span>
                    </div>
                    <div class="text">
                        <p><span>Website:</span> <a href="#">salango.com</a></p>
                    </div>
                </div>
            </div>
        </section>

    </footer>
</body>

</html>
