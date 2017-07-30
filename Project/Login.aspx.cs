using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Common;

public partial class index : System.Web.UI.Page
{   

    string log = System.Configuration.ConfigurationManager.ConnectionStrings["loginconstr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void LogIn_(object sender, EventArgs e)
    { 
        

        SqlConnection conn = new SqlConnection(log);

        conn.Open();
        try
        {   string strin = "SELECT * FROM [Login_Page].[dbo].[Login_Page] WHERE EMail='" + checkmail.Text + "' ";
            SqlDataAdapter cmd = new SqlDataAdapter(strin,conn);
            DataSet cd = new DataSet();
            cmd.Fill(cd);

            if (cd.Tables[0].Rows.Count > 0) {
                mail.Text = "";
                string pass = "SELECT * FROM [Login_Page].[dbo].[Login_Page] WHERE passwd='" + checkpasswd.Text + "' ";
                SqlDataAdapter da = new SqlDataAdapter(pass, conn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Application["mail"] = checkmail.Text;
                    Application["passwd"] = checkpasswd.Text;
                    Response.Redirect("~/app.aspx");
                }
                else
                {
                    Pass.Text = "Wrong Password";
                }
            }
            else
            {
                mail.Text = "Invalid E-mail ";
            }
        }
        catch(SqlException ex)
        {
            Response.Write(ex.ToString());
        }
        finally
        {
            conn.Close();
        }
    }
   




    protected void forgotpasswd(object sender, EventArgs e)
    {
        if (checkmail.Text != "")
        {
            Application["mail"] = checkmail.Text;
            Response.Redirect("~/forgotpasswd.aspx");
        }
        else
            Lab1.Text = "Enter the Email";
    }
}