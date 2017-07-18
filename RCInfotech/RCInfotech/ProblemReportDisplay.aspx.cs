using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProblemReportDisplay : System.Web.UI.Page
{
    string a = null;
    SqlConnection con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;Persist Security Info=True;User ID=rcinfotech;password=Rci@1234");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234");
            con.Open();
            String cmd1 = "select prcl_name from rc_problem";
            SqlDataAdapter adpt = new SqlDataAdapter(cmd1, con);
            DataTable CLientNameDT = new DataTable();
            adpt.Fill(CLientNameDT);
            DropPr_Type.DataSource = CLientNameDT;
            DropPr_Type.DataBind();
            DropPr_Type.DataTextField = "prcl_name";
            DropPr_Type.DataBind();
            con.Close();

        }
    }
    public void CrystallReportBind()
    {
        SqlConnection con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;Persist Security Info=True;User ID=rcinfotech;password=Rci@1234");
        String cl_name = DropPr_Type.SelectedValue;
        SqlDataAdapter da = new SqlDataAdapter("select * from rc_master where cl_name='" + cl_name + "'", con);
        DataSet dset = new DataSet();
        da.Fill(dset);
        ReportDocument cryRpt = new ReportDocument();
        cryRpt.Load(Server.MapPath("ProblemReport.rpt"));
        cryRpt.SetDataSource(dset.Tables[0]);

        CrystalReportViewer1.ReportSource = cryRpt;
        CrystalReportViewer1.DataBind();
        CrystalReportViewer1.SeparatePages = false;

    }
    protected void CrystalReportViewer1_Init(object sender, EventArgs e)
    {

    }
    protected void BtnAll_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;Persist Security Info=True;User ID=rcinfotech;password=Rci@1234");
        SqlDataAdapter da = new SqlDataAdapter("select * from rc_problem", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        ReportDocument cryRpt = new ReportDocument();
        cryRpt.Load(Server.MapPath("ProblemReport.rpt"));
        cryRpt.SetDataSource(ds.Tables[0]);
        CrystalReportViewer1.ReportSource = cryRpt;
        CrystalReportViewer1.DataBind();
        CrystalReportViewer1.SeparatePages = false;
    }
    public void SelectDate()
    {
        SqlConnection con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;Persist Security Info=True;User ID=rcinfotech;password=Rci@1234");
        SqlDataAdapter da = new SqlDataAdapter("select * from rc_problem where pr_date between('" + txtFromDate.Text + "','" + txtToDate.Text + "')", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        ReportDocument cryRpt = new ReportDocument();
        cryRpt.Load(Server.MapPath("ProblemReport.rpt"));
        cryRpt.SetDataSource(ds.Tables[0]);
        CrystalReportViewer1.ReportSource = cryRpt;
        CrystalReportViewer1.DataBind();
        CrystalReportViewer1.SeparatePages = false;
    }
    protected void BtnShow_Click(object sender, EventArgs e)
    {
        CrystallReportBind();
    }
}