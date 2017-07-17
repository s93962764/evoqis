using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net;
using System.IO;
using System.Web.Configuration; 

public partial class Office_Use : System.Web.UI.Page
{
    string cs;
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
       // Label1.Text = DateTime.Now.ToString();

        cs = "Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234";
       

       //con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234");
       //Label1.Text = "hello";
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
       
        var today = DateTime.Today;
        int cl_id = 1;
        
        string qry = "SELECT coalesce(max(cl_id),0) FROM [rc_master] WHERE cl_date='" + @today + "'";

   con = new SqlConnection("Data Source=162.222.225.88;Initial Catalog=rcipune2017;user Id=rcinfotech;password=Rci@1234");
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataReader reader = null;


        con.Open();
        reader = cmd.ExecuteReader();
        if (reader.Read())  
        {
            int i;
            i = Convert.ToInt32(reader[0].ToString());
            i++;
            txtClientId.Text = i.ToString();


            // txtClientId.Text = reader.GetValue(0).ToString();
        }
        else
        {
            int i = 0;
            i++;
            txtClientId.Text = i.ToString();

        }
        reader.Close();

        SqlDataReader dr = cmd.ExecuteReader();
        if (!dr.Read())
        {
           cl_id = cl_id + Convert.ToInt32(dr[0]);
        }
        else
        {
            cl_id = cl_id + Convert.ToInt32(dr[0]);
        }
        con.Close();
        dr.Close();
        //con.Close();
        cmd = new SqlCommand("insert into rc_master(cl_id,cl_date,cl_name,cl_address,cl_contPerson,cl_ContNo) values('" + cl_id + "','" + @today + "','" + txtCl_Name.Text + "','" + txtAddress.Text + "','" + txtCont_Person.Text + "','" + txtmobile.Text + "')", con);
        {
            try
            {
                con.Open();

                int rowAffected = cmd.ExecuteNonQuery();
                if (rowAffected > 0)
                {
                    Label1.ForeColor = System.Drawing.Color.Blue;
                    Label1.Text = "Client Information is saved..!";
                    txtClientId.Enabled = false;
                    txtCl_Name.Enabled = false;
                    txtAddress.Enabled = false;
                    txtCont_Person.Enabled = false;
                    txtmobile.Enabled = false;
                    btnAdd.Enabled = false;
                    con.Close();
                }
            }
            catch (NullReferenceException ex)
            {
                //Label1.Text =ex.ToString();
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Sorry. Data could not be saved.";

            }
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
     
    }
}