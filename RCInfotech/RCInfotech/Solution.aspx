<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Solution.aspx.cs" Inherits="Solution" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        .col-md-4 {
            height: 637px;
            width: 1341px;
            top: 0px;
            left: 0px;
        }
        .auto-style1 {
            width: 368px;
        }
        .auto-style3 {
            width: 252px;
            text-align: left;
        }
        .auto-style4 {
            font-size: x-large;
            color: #3333CC;
        }
        .auto-style7 {
            width: 368px;
            text-align: left;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server" class="form-inline">
    <div class="container" style="width: 785px; height: 889px; text-align: center;">
       
        <asp:Panel ID="Panel2" runat="server" BackColor="#CCCCCC" class="panel panel-default">
       
      

            <div class="panel-heading"> <span class="auto-style4">Client Problem Solutions</span></div>
         <table class="table table-hover">
             <tr>
                 <td class="text-left">
                     <asp:Label ID="Label11" runat="server" Text="Client ID"></asp:Label>
                 </td>
                 <td class="text-left">
                     <asp:TextBox ID="txtPrCl_Id" runat="server" Height="30px" Width="250px" ReadOnly="True"></asp:TextBox></td>
             </tr>
                <tr>
                    <td class="text-left"><asp:Label ID="Label9" runat="server" Text="Client Name"></asp:Label></td>
                    <td class="auto-style3">  &nbsp;  <asp:DropDownList ID="drop_ClName" runat="server"   Height="30px" Width="114px" AutoPostBack="true" OnSelectedIndexChanged="drop_ClName_SelectedIndexChanged" CssClass="btn btn-primary dropdown-toggle" > <asp:ListItem Text="Select Client" Value="1" /></asp:DropDownList> </td>
                     
                </tr>
                   <tr>
                           <td class="text-left">   <asp:Label ID="Label10" runat="server" Text="Contact Person"></asp:Label></td>
                           <td class="auto-style7"> &nbsp;<asp:DropDownList ID="drop_ClPerson" runat="server" Height="30px" Width="114px" AutoPostBack="true" OnSelectedIndexChanged="drop_ClPerson_SelectedIndexChanged" CssClass="btn btn-primary dropdown-toggle" ></asp:DropDownList></td>  
                   </tr> 
             <tr>
                 <td class="auto-style3">
                     <asp:Label ID="Label8" runat="server" Text="Contact No:"></asp:Label></td>
                    <td class="auto-style7">  &nbsp;<asp:TextBox ID="txtClCont" runat="server" Height="30px" Width="250px" ReadOnly="True"></asp:TextBox> </td>
             </tr>
             <tr>
                 <td class="auto-style3"><asp:TextBox ID="txtPrTime" runat="server"  Height="30px" Width="250px" ToolTip="Problem Time" ReadOnly="True" ></asp:TextBox></td>
                 <td class="auto-style7"> &nbsp;<asp:TextBox ID="txtPrDate" runat="server"  Height="30px" Width="250px" style="margin-top: 0px" ToolTip="Problem Date" ReadOnly="True" ></asp:TextBox></td>
             </tr>
             <tr>
                 <td class="auto-style3">
                     <asp:Label ID="Label4" runat="server" Text=" Problem Type"></asp:Label></td>
                  <td class="auto-style7">  <asp:TextBox ID="txtPr_Type" runat="server" Height="30px" Width="250px" ReadOnly="True"></asp:TextBox></td>
             </tr> 
             <tr>
                 <td class="auto-style3"> <asp:label ID="Label5" runat="server" text="Problem Statement"  Height="30px" Width="97px" ></asp:label></td>
                 <td class="auto-style7"><asp:TextBox ID="txtProblem" runat="server" TextMode="MultiLine"  Height="30px" Width="250px" ReadOnly="True" ></asp:TextBox>
                 </td>
             </tr>     
             <tr>
                 <td class="auto-style3"><asp:Label ID="Label1" runat="server" Text="Received By"  Height="30px" Width="97px" ></asp:Label></td>
                  <td class="auto-style7"> <asp:TextBox ID="TextBox1" runat="server" style="margin-top: 3px"  Height="30px" Width="250px" ReadOnly="True" ></asp:TextBox></td>
             </tr>
             <tr>
                 <td class="auto-style3">
                     <asp:Label ID="Label2" runat="server" Text="Solution"></asp:Label></td>
                  <td class="auto-style7"> <asp:TextBox ID="txtSolution" runat="server" TextMode="MultiLine"  Height="30px" Width="250px" style="text-transform:uppercase;"></asp:TextBox></td>
             </tr>   
             <tr>
                 <td class="auto-style3">
                     <asp:Label ID="Label6" runat="server" Text="Solved By"></asp:Label></td>
                  <td class="auto-style7"> <asp:TextBox ID="txtSolvedBy" runat="server"  Height="30px" Width="250px" style="text-transform:uppercase;"></asp:TextBox></td>
             </tr> 
             <tr>
                 <td class="auto-style3">
                     <asp:Label ID="Label7" runat="server" Text="Status"></asp:Label></td>
                 <td class="auto-style7"> <asp:DropDownList ID="Drop_status" runat="server"  Height="34px" Width="137px" AutoPostBack="true">
                 <asp:ListItem>Close</asp:ListItem>
                 <asp:ListItem>Pending</asp:ListItem>
                 <asp:ListItem>Half Pending</asp:ListItem>
                  </asp:DropDownList></td>
             </tr> 
             <tr>
                 <td class="auto-style3"> <asp:TextBox ID="txtSlTime" runat="server"  Height="30px" Width="250px" ToolTip="Solution Time" ></asp:TextBox></td>
                 <td class="auto-style7">  <asp:TextBox ID="txtSlDate" runat="server"  Height="30px" Width="250px" ToolTip="Solution Date" ></asp:TextBox></td>
             </tr>    
             <tr>
                 <td class="auto-style3"> <asp:Button ID="BtnSlCalender" runat="server" Text="Select Date"  Height="30px" Width="97px" CssClass="btn "  /></td>
                 <td class="auto-style1"> <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar></td>
             </tr>
             <tr>
                 <td class="auto-style3"> <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" CssClass="btn " /></td>
                   <td class="auto-style1"> <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn " /></td>
             </tr> 
             <tr>
                 <td class="auto-style3"><asp:Label ID="Label3" runat="server"></asp:Label></td>
             </tr>
             </table>
                <div class="panel-footer">CopyRight RCInfotech 2017</div>
            
             </asp:Panel>
        </div>
        
    </form>
</body>
</html>
