<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProblemReportDisplay.aspx.cs" Inherits="ProblemReportDisplay" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <div class="container" style="width: 785px; height: 889px; text-align: center;">
       
        <asp:Panel ID="Panel2" runat="server" BackColor="#CCCCCC" class="panel panel-default" Height="105px" Width="843px">
            <br />
            <br />
        <asp:DropDownList ID="DropPr_Type" runat="server">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtFromDate" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:TextBox ID="txtToDate" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnShow" runat="server" Text="Show" OnClick="BtnShow_Click" />
&nbsp;&nbsp;
        <asp:Button ID="BtnAll" runat="server" Text="Display All" OnClick="BtnAll_Click" />
        <br />
        <br />
            <br />
            <br />
        <br />
        <br />
             </asp:Panel>
          <br />
          <br />
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" OnInit="CrystalReportViewer1_Init" ToolPanelView="None" />
    
    </div>
    </form>
</body>
</html>
