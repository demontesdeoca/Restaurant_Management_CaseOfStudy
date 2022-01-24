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
                    Reservations
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
                                            <form method="post" id="contactForm" name="contactForm" class="contactForm" onsubmit="return validateFormReservation()">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="label" for="fname">Full Name</label>
                                                            <input type="text" class="form-control" name="fname" id="fname" placeholder="Name">
                                                            <label class="labelmsg" id="msgName"></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="label" for="fphone">Phone</label>
                                                            <input type="text" class="form-control" name="fphone" id="fphone" placeholder="Phone">
                                                            <label class="labelmsg" id="msgPhone"></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="label" for="femail">Email Address</label>
                                                            <input type="text" class="form-control" name="femail" id="femail" placeholder="Email">
                                                            <label class="labelmsg" id="msgEmail"></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="label" for="fpeople">Guests</label>
                                                            <select id="fpeople" name="fpeople" class="form-control">
                                                                <option value="0" selected="selected">Select One</option>
                                                                <option value="person1">1 person</option>
                                                                <option value="person2">2 people</option>
                                                                <option value="person3">3 people</option>
                                                                <option value="person4">4 people</option>
                                                                <option value="person5">5 people</option>
                                                                <option value="person6">6 people</option>
                                                                <option value="person7">7 people</option>
                                                                <option value="person8">8 people</option>
                                                                <option value="person9">9 people</option>
                                                                <option value="person10">10 people</option>
                                                                <option value="person11">11 people</option>
                                                                <option value="person12">12 people</option>
                                                            </select>
                                                            <label class="labelmsg" id="msgPeople"></label>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="label" for="fdate">Date</label>
                                                            <input type="date" class="form-control" name="fdate" id="fdate" placeholder="Date">
                                                            <label class="labelmsg" id="msgDate"></label>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="label" for="ftime">Time</label>
                                                            <select id="ftime" name="ftime" class="form-control">
                                                                <option value="0" selected="selected">Select One</option>
                                                                <option value="1200">12:00</option>
                                                                <option value="1230">12:30</option>
                                                                <option value="1300">13:00</option>
                                                                <option value="1330">13:30</option>
                                                                <option value="1400">14:00</option>
                                                                <option value="1430">14:30</option>
                                                                <option value="1500">15:00</option>
                                                                <option value="1530">15:30</option>
                                                                <option value="1600">16:00</option>
                                                                <option value="1630">16:30</option>
                                                                <option value="1700">17:00</option>
                                                                <option value="1730">17:30</option>
                                                                <option value="1800">18:00</option>
                                                                <option value="1900">19:30</option>
                                                                <option value="2000">20:00</option>
                                                                <option value="2030">20:30</option>
                                                                <option value="2100">21:00</option>
                                                                <option value="2130">21:30</option>
                                                            </select>
                                                            <label class="labelmsg" id="msgTime"></label>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="label" for="fmessage">Aditional Comments</label>
                                                            <textarea name="fmessage" class="form-control" id="fmessage" cols="30" rows="5" placeholder="Message"></textarea>
                                                            <label class="labelmsg" id="msgMessage"></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <input type="submit" value="Make Reservation" class="btn btn-primary">
                                                            <div class="submitting"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
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
