﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuccessStories.aspx.cs" Inherits="RCInfotech.SuccessStories" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Contact Us | R C Infotech</title>
    
    <!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    <script type="text/javascript">
        function openNewWindows() {
            window.open("https://twitter.com/RCIPune");
        }
        function openlinkedin() {
            window.open("https://www.linkedin.com/in/r-c-infotech-425428143/");
        }
        function openfacebook() {
            window.open("https://www.facebook.com/RC-Infotech-1470954339646664/");
        }
        function openNewWindows1() {
            window.open("https://www.google.co.in/maps/place/Bramha+Estate+Co_Op+Society,+Bramha+Avenue+Bypass+Road,+Krishnakevalnagar,+Shivneri+Nagar,+Kondhwa,+Pune,+Maharashtra+411048/@18.477515,73.887539,17z/data=!3m1!4b1!4m5!3m4!1s0x3bc2ea7d70bc66d1:0x9a01bae5176fd705!8m2!3d18.4774948!4d73.8897308");
        }

    </script>

    <style>
        div.card {
  width: 300px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  text-align: center;
}

div.header {
    background-color: #af4c51;
    color: white;
    padding: 10px;
    font-size: 14px;
}

div.container {
    padding: 10px;
}
#rcorners2 {
       border-radius: 23px;
    border: 2px solid #428bca;
    padding: 9px;
    width: 287px;
    height: 36px;
            font-weight: 700;
            font-size: large;
            background-color: rgba(0,0,0,0.075);
        }
        .auto-style1 {
            font-size: medium;
        }
        .auto-style2 {
            font-size: large;
        }
    </style>

</head><!--/head-->

<body>

    <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        <div class="top-number">
                          <p><i class="fa fa-phone-square"></i>  +91-20-41227918</p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xs-8">
                       <div class="social">
                            <ul class="social-share">
                                <li><a href="#" onclick="openfacebook()"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" onclick="openNewWindows()"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" onclick="openlinkedin()"><i class="fa fa-linkedin"></i></a></li> 
                            </ul>
                            
                       </div>
                    </div>
                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.aspx"><img src="images/logo.png" alt="logo" style="width:200px"></a>
                </div>
                
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="index.aspx">Home</a></li>
                        <li class="dropdown">
                         <a href="AboutUs.aspx"<%-- class="dropdown-toggle" data-toggle="dropdown"--%>>About Us <i class="fa fa-angle-down"></i></a>
                              <ul class="dropdown-menu">
                                <li><a href="Events.aspx">Events</a></li>
                                  </ul>
                       <li class="dropdown">
                         <a href="Services.aspx">Services <i class="fa fa-angle-down"></i></a>
                              <ul class="dropdown-menu">
                                <li><a href="Development.aspx">Development</a></li>
                                <li><a href="Project_Mgmt.aspx">Project Management </a></li>
                                <li><a href="Application_support.aspx">Application Support</a></li>
                                <li><a href="Maintenance_support.aspx">Maintenance & Service</a></li>
								<li><a href="Database_Admn.aspx">Database Administration</a></li>
                                <li><a href="Consultancy.aspx">Consultancy Services</a></li>
                            </ul>
                         <li><a href="SuccessStories.aspx">Success Strory</a></li>
                         <li><a href="Products.aspx">Products</a></li>
                        <li><a href="Careers.aspx">Careers</a></li> 
                        <li><a href="ContactUs.aspx">Contact Us</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->

    <br />
    <br />
   
   <div class="container">
        <div class="col-xs-12 col-sm-4 wow fadeInDown">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <p id="rcorners2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style2">Credit Master</span></strong></p>
    <p>&nbsp;</p>

<div class="card">
  <div class="header">
    More than 70 Financial institutions like Banks, Cooperative Societies, Trading, etc. all over the Maharashtra rely on us to give them a competitive edge. By providing innovative, industry-driven enterprise application software, RCI helps businesses to satisfy their customers, operate more efficiently, and stay at the forefront of their industry. With extensive knowledge and clear technology leadership in our focused industries, our software enables customers to transition from being merely competitive, to becoming market leaders.
  </div>

  <div class="container">
      <p></p>
  </div>
</div>
            </div>

    <br /><br />

      <br />
         <div class="col-xs-12 col-sm-4 wow fadeInDown">

    <br /><p id="rcorners2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style2">&nbsp; Employee Sociaty</span></strong></p>

    <p>&nbsp;</p>

<div class="card">
  <div class="header">
  More than 20 clients in Ratnagiri using this software.This is for Employee Credit Co-operative Societies, its help your society to maintain day to day work and mainly its generate future recovery demand letter, it will help you to present demand to the concerned institute. Its very easy to transfer the recovery amount to the individual members with single instrument. With the help of this software you can do the day to day work i.e. account opening, bank transactions, cash transactions, transfer transaction, interest calculations for loans and deposits as general ledger.  
  </div>

  <div class="container">
      <p></p>
  </div>
</div>
            </div>

    <br /><br />

     <br />
    <br />
        <div class="col-xs-12 col-sm-4 wow fadeInDown">
    <p id="rcorners2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Consultancy Service</p>
    <p>&nbsp;</p>

<div class="card">
  <div class="header">
   R C Consultancy is consultant firm, here we give IT solutions to the financial institute such as Banks, Cooprative Insitues, Trading firms and Educatinal institutes, Schools, etc.RC INFO gives our customers a bold competitive edge, “The RC INFO Edge.” More so than ever, staying competitive is crucial to success. Today’s business environment demands focus and industry-specific strength. That means zeroing in on target markets with a unique approach to meeting and exceeding the needs of customers. That is what we do at RC INFO
  </div>

  <div class="container">
      <p></p>
  </div>
</div>
            </div>

    <br /><br />
       </div>
       


<section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Company</h3>
                        <ul>
                            <li><a href="AboutUs.aspx">About us</a></li>
                            <li><a href="Careers.aspx">Careers</a></li>
                            <li><a href="ContactUs.aspx">Contact us</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Services
                        </h3>
                        <ul>
                            <li><a href="Development.aspx">Development</a></li>
                            <li><a href="Project_Mgmt.aspx">Project Management</a></li>
                            <li><a href="Application_support.aspx">Application Support</a></li>
                            <li><a href="Maintenance_support.aspx">Mainenance & Services</a></li>
                            <li><a href="Database_Admn.aspx">Database Administration</a></li>
                            <li><a href="Consultancy.aspx">Consultancy Services</a></li>
                            </ul>
                    </div>    
                </div><!--/.col-md-3-->


                 <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Contact Info
                        </h3>
               <%-- <div class="span4">
                        	<h2 class="title"><span>Contact Info</span></h2>
                            <div id="map">--%>
                            <%--<iframe width="100%" height="310" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://goo.gl/maps/2Vr2xN4Bf7P2"></iframe>--%>
                                 <a class="navbar-brand" onclick="openNewWindows1()" ><img src="images/map1.png" alt="logo" style="cursor:pointer; height: 189px; width: 228px;"  /></a>
                            </div>
                              </div>

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Address
                        </h3>
                          <p class="auto-style1"><span class="auto-style2"></span>R C Infotech,C-2,Office No.10,<br/>2nd Floor,Brahma Estate,<br/>NIBM Road,Next to Jyoti Restaurant,<br/> Kondwa Khurd,Pune-411040</p>
                            <p class="auto-style3"><b>Phone:</b> (020)41227918/65334460-61<br/><b>Email:</b><a href="mailto:#">info@rcipune.in</a>, <br/><b>Web:</b> <a href="http://www.rcipune.in" target="_blank">www.rcipune.in</a></p>                           
                        </div>

            </div>
        </div>
    </section><!--/#bottom-->

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2013 <a target="_blank" href="http://rcipune.in/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">R C Infotech</a>. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="index.aspx">Home</a></li>
                        <li><a href="AboutUs.aspx">About Us</a></li>
                        <li><a href="ContactUs.aspx">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer><!--/#footer-->

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>
</body>
</html>
