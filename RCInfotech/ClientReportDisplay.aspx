<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClientReportDisplay.aspx.cs" Inherits="ClientReportDisplay" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>
    </title>
     <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

       

    
    </head>
    
<body style="font-weight: 700">

    <form id="form1" runat="server">
 
    <asp:DropDownList ID="ddClientNames" runat="server" CssClass="btn btn-primary" OnSelectedIndexChanged="ddClientNames_SelectedIndexChanged" Width="208px" Height="36px">
                    </asp:DropDownList>
                    <asp:Button ID="btnDisplayAll" runat="server" OnClick="btnDisplayAll_Click" Text="DISPLAYALL" CssClass="btn btn-info" Height="32px" />
                    <asp:Button ID="btnShow" runat="server" OnClick="btnShow_Click"  Text="SHOW" CssClass="btn btn-info" Height="32px" Width="129px" />



        <br />
        <br />




 
      
                    
        
                <br />




 
      
                    
        
                <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />




 
      
                    
        
                </form>
       
</body>
</html>
