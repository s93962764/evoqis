using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using CrystalDecisions.CrystalReports.Engine;


public partial class ClientReportDisplay : System.Web.UI.Page
{
    string a = null;
    SqlConnection con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;Persist Security Info=True;User ID=rcinfotech;password=Rci@1234");
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234");
            con.Open();
            String cmd1 = "select cl_name from rc_master";
            SqlDataAdapter adpt = new SqlDataAdapter(cmd1, con);
            DataTable CLientNameDT = new DataTable();
            adpt.Fill(CLientNameDT);
            ddClientNames.DataSource = CLientNameDT;
            ddClientNames.DataBind();
            ddClientNames.DataTextField = "cl_name";
           ddClientNames.DataBind();
            con.Close();

        }
     
    }
    public void CrystallReportBind()
    {
        SqlConnection con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;Persist Security Info=True;User ID=rcinfotech;password=Rci@1234");
        String cl_name = ddClientNames.SelectedValue;
        SqlDataAdapter da = new SqlDataAdapter("select * from rc_master where cl_name='" + cl_name + "'", con);
       DataSet dset = new DataSet();
        da.Fill(dset);
        ReportDocument cryRpt = new ReportDocument();
        cryRpt.Load(Server.MapPath("CLIENTLISTREPORT.rpt"));
        cryRpt.SetDataSource(dset.Tables[0]);

        CrystalReportViewer1.ReportSource = cryRpt;
        CrystalReportViewer1.DataBind();
        CrystalReportViewer1.SeparatePages = false;

    }
    protected void btnDisplayAll_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;Persist Security Info=True;User ID=rcinfotech;password=Rci@1234");
        SqlDataAdapter da = new SqlDataAdapter("select * from rc_master", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        ReportDocument cryRpt = new ReportDocument();
        cryRpt.Load(Server.MapPath("CLIENTLISTREPORT.rpt"));
        cryRpt.SetDataSource(ds.Tables[0]);
        CrystalReportViewer1.ReportSource = cryRpt;
        CrystalReportViewer1.DataBind();
        CrystalReportViewer1.SeparatePages = false;
    }
    protected void btnShow_Click(object sender, EventArgs e)
    {


        CrystallReportBind();

        
    }
    protected void ddClientNames_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmddrop;
        con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234");
        con.Open();

        String cl_name = ddClientNames.SelectedItem.ToString();
        cmddrop = new SqlCommand("select * from rc_master where cl_name= '" + cl_name + "'", con);
        SqlDataReader readerdrop = null;
        readerdrop = cmddrop.ExecuteReader();
        if (readerdrop.Read())
        {
            a = (readerdrop[0].ToString());
            //con.Close();
        }

        con.Close();
        
    }
    
}