                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="RCInfotech.ContactUs" %>

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

        function validate()
        {
            var cont = document.getElementById("txtcontact");
            if (cont.value.length != 10)
            {
                alert("Enter 10 digit valid contact number");
                cont.focus();
                return false;
            }
            return true;
        }
       
    </script>
     <script type="text/javascript">
         function openNewWindows() {
             window.open("https://www.google.co.in/maps/place/Bramha+Estate+Co_Op+Society,+Bramha+Avenue+Bypass+Road,+Krishnakevalnagar,+Shivneri+Nagar,+Kondhwa,+Pune,+Maharashtra+411048/@18.477515,73.887539,17z/data=!3m1!4b1!4m5!3m4!1s0x3bc2ea7d70bc66d1:0x9a01bae5176fd705!8m2!3d18.4774948!4d73.8897308");
         }
        function openNewWindows1() {
            window.open("https://twitter.com/RCIPune");
        }
         function openlinkedin() {
             window.open("https://www.linkedin.com/in/r-c-infotech-425428143/");
         }
         function openfacebook() {
             window.open("https://www.facebook.com/RC-Infotech-1470954339646664/");
         }
    </script>

    <style type="text/css">
        .auto-style1 {
            height: 56px;
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
                                <li><a href="#" onclick="openNewWindows1()"><i class="fa fa-twitter"></i></a></li>
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
                        <li class="active"><a href="ContactUs.aspx">Contact Us</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->

    <section id="contact-info">
        <div class="center">                
            <h2>How to Reach Us?</h2>
            <p class="lead">Didn’t find what you were looking for on our site? 

To learn more about R C Infotech, our services, people, capabilities and how we can deliver value, email us or contact the office nearest you.</p>
        </div>
        <div class="gmap-area" >
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 text-center">
                        <div class="gmap" >
                          <a class="navbar-brand" onclick="openNewWindows()" ><img src="images/map1.png" alt="logo"></a>
                        </div>
                    </div>
                 

                    <div class="col-sm-7 map-content">
                        <ul class="row">
                            <li class="col-sm-6">
                                <address>
                                    Registered Office
                                    <p>R C Infotech,C-2, <br>
                                    Office No.10,,2nd Floor,Brahma Estate,</p>
                                    <p>NIBM Road,Next to Jyoto Restaurant<br>
                                    Kondwa Khurd</p>
                                </address>

                                <address>
                                    Pune-411040
                                    <p>Maharashtra (India) <br>
                                    </p>                                
                                    <p>Phone:(020)41227918/65334460-61 <br>
                                    Email Address:info@rcipune.in</p>
                                </address>
                            </li>


                            <li class="col-sm-6">
                                <address>
                                    <p> <br>
                                    </p>
                                    <p> <br>
                                    </p>
                                </address>

                                <address>
                                    
                                    <p> <br>
                                  </p>
                                    <p> <br>
                                   </p>
                                </address>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>  <!--/gmap_area -->

    <section id="contact-page" >
        <div class="container">
            <div class="center">        
                <h2>Drop Your Message</h2>
                <p class="lead">Send your query our executive will contact you soon...</p>
            </div> 
            
            
             <form id="form1" runat="server" class="contact-form" >
              
                              <div class="contact-form"  style="font-family:Arial">
                                 
        <fieldset style="width: 350px">
        <legend title="Contact us">Contact us</legend>
            <table style="width: 770px">
                <tr>
                    <td><h3><b>Name:</b></h3></td>
                    <td> <asp:TextBox ID="txtname" Width="286px" runat="server" class="form-control"></asp:TextBox></td>
                    <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" 
                        ErrorMessage="Name is requied" Text="*" ControlToValidate="txtname"></asp:RequiredFieldValidator></td>
                    <td> <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ForeColor="Red" 
                        ErrorMessage="characters" Text="*" ControlToValidate="txtname" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td class="auto-style1"><h3><b>Phone Number:</b></h3></td>
                    <td class="auto-style1"> <asp:TextBox ID="txtcontact" Width="284px" runat="server" class="form-control" MaxLength="13"  ToolTip="Please enter only numbers"></asp:TextBox></td>
                    <td class="auto-style1"> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" 
                        ErrorMessage="Phone Number is requied" Text="*" ControlToValidate="txtcontact"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td><h3><b>Mobile Number:</b></h3></td>
                    <td> <asp:TextBox ID="txtmobile" Width="285px" runat="server" class="form-control" MaxLength="13"  ToolTip="Please enter only numbers"></asp:TextBox></td>
                    <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" 
                        ErrorMessage="Mobile Number is requied" Text="*" ControlToValidate="txtmobile"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td><h3><b>Email ID:</b></h3></td>
                    <td> <asp:TextBox ID="txtemail" Width="286px" runat="server" class="form-control"></asp:TextBox></td>
                    <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" 
                        ErrorMessage="Email ID is requied" Text="*" Display="Dynamic" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic"
                             ControlToValidate="txtemail"  ForeColor="Red" 
                             ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="*">  </asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td><h3><b>Subject:</b></h3></td>
                    <td> <asp:TextBox ID="txtsubject" Width="286px" runat="server" class="form-control"></asp:TextBox></td>
                    <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red"
                        ErrorMessage="Subject is requied" Text="*" ControlToValidate="txtsubject"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="vertical-align:top"><h3><b>Comment:</b></h3></td>
                     <td style="vertical-align:top"> <asp:TextBox ID="txtcomment" Width="287px" runat="server" Rows="5" TextMode="MultiLine" class="form-control"></asp:TextBox></td>
                    <td style="vertical-align:top"> <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red" 
                        ErrorMessage="Comment is requied" Text="*" ControlToValidate="txtcomment"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please enter valid details" ForeColor="Red"
                             Font-Italic="true" Font-Underline="true"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="Label1" runat="server" Font-Bold="true"></asp:Label>
                        <br />
                    </td>

               </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_click" class="btn btn-primary btn-lg"  OnClientClick="return validate();"/>
                         <asp:Button ID="Button2" runat="server" Text="Cancel" class="btn btn-primary btn-lg" OnClick="Button2_Click1"></asp:button> 
                    </td>
                </tr>
                </table> 
        </fieldset>
        <br />
    </div>
    </form>
    </div>
    </section>

    <br /><br />
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
                                 <a class="navbar-brand" onclick="openNewWindows1()" ><img src="images/map1.png" alt="logo" style="cursor:pointer; height: 183px; width: 226px;"  /></a>
                            </div>
                              </div>

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Address
                        </h3>
                          <p class="auto-style1"><span class="auto-style2"></span>R C Infotech,C-2,Office No.10,<br/>2nd Floor,Brahma Estate,<br/>NIBM Road,Next to Jyoti Restaurant,<br/> Kondwa Khurd,Pune-411040</p><br />
                            <p class="auto-style3"><b><br />Phone:</b> (020)41227918/65334460-61<br/><b>Email:</b><a href="mailto:#">info@rcipune.in</a>, <br/><b>Web:</b> <a href="http://www.rcipune.in" target="_blank">www.rcipune.in</a></p>                           
                        </div>

            </div>
        </div></div>
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

   <!--<script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>-->

</body>
</html>
