<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Client_Master.aspx.cs" Inherits="Office_Use" %>

<!DOCTYPE html>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>

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

          function validate() {
              var cont = document.getElementById("txtmobile");
              if (cont.value.length != 10) {
                  alert("Enter 10 digit valid contact number");
                  cont.focus();
                  return false;
              }
              return true;
          }

    </script>
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
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            font-size: large;
            color: #990033;
        }
        .auto-style3 {
            font-size: large;
            color: #990033;
            text-align: center;
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
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li> 
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
                        <li ><a href="Careers.aspx">Careers</a></li> 
                        <li><a href="ContactUs.aspx">Contact</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->
    <br />
    <br />
      <div class ="container">
           <asp:Label ID="Label1" runat="server" OnLoad="Page_Load"></asp:Label>
             <form id="form1" runat="server" class="contact-form">
                
                  <fieldset style="width: 350px">
                  <div class="auto-style3">
                      </div>
                      <legend title="Contact us"><strong>Client Master</strong></legend>
                      
                      <br />    
                       <table style="width: 783px">
                <tr>
                    <td><h3><b>ClientId:</b></h3></td>
                     <td> <asp:TextBox ID="txtClientId" Width="286px" runat="server" class="form-control"></asp:TextBox></td>
                    </tr>
                <tr>
                    <td><h3><b>Client Name:</b></h3></td>
                    <td> <asp:TextBox ID="txtCl_Name" Width="286px" runat="server" class="form-control"></asp:TextBox></td>
                    <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" 
                        ErrorMessage="Name is requied" Text="*" ControlToValidate="txtCl_Name"></asp:RequiredFieldValidator></td>
                    <td> <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ForeColor="Red" 
                        ErrorMessage="characters" Text="*" ControlToValidate="txtCl_Name" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td><h3><b>Address:</b></h3></td>
                    <td> <asp:TextBox ID="txtAddress" Width="286px" runat="server" class="form-control"></asp:TextBox></td>
                    <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" 
                        ErrorMessage="Name is requied" Text="*" ControlToValidate="txtAddress"></asp:RequiredFieldValidator></td>
                    <td> <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ForeColor="Red" 
                        Error   Message="characters" Text="*" ControlToValidate="txtAddress" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator></td>
                </tr>
                 <tr>
                    <td><h3><b>Contact Person:</b></h3></td>
                    <td> <asp:TextBox ID="txtCont_Person" Width="286px" runat="server" class="form-control"></asp:TextBox></td>
                    <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" 
                        ErrorMessage="Name is requied" Text="*" ControlToValidate="txtCont_Person"></asp:RequiredFieldValidator></td>
                    <td> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="Red" 
                        ErrorMessage="characters" Text="*" ControlToValidate="txtCont_Person" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td><h3><b>Contact Number:</b></h3></td>
                    <td> <asp:TextBox ID="txtmobile" Width="285px" runat="server" class="form-control" MaxLength="13"  ToolTip="Please enter only numbers"></asp:TextBox></td>
                    <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" 
                        ErrorMessage="Mobile Number is requied" Text="*" ControlToValidate="txtmobile"></asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
                    <td colspan="3">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please enter valid details" ForeColor="Red"
                             Font-Italic="true" Font-Underline="true"/> </td>
                 </tr>
                 <tr>
                    <td colspan="3">
                        <asp:Button ID="btnAdd" runat="server" Text="Add"  class="btn btn-primary btn-lg"  OnClientClick="return validate();" OnClick="btnAdd_Click"/>
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" class="btn btn-primary btn-lg"></asp:button> 
                         <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-primary btn-lg" OnClick="btnCancel_Click"></asp:button> 
                    </td>
                </tr>
                </table>  
                </fieldset>
                 <br />    
             </form>
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
                            <div id="map">--%>                            <%--<iframe width="100%" height="310" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://goo.gl/maps/2Vr2xN4Bf7P2"></iframe>--%>
                                 <a class="navbar-brand" onclick="openNewWindows1()" ><img src="images/map1.png" alt="logo" style="cursor:pointer; height: 193px; width: 241px;"  /></a>
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
        </div> 
    </section><!--/#bottom-->

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2013 <a target="_blank" href="http://rcipune.in/" title="R C Infotech">R C Infotech, Pune</a>. All Rights Reserved.
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