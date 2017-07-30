using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    string strreg = System.Configuration.ConfigurationManager.ConnectionStrings["loginconstr"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

            protected void Register(object sender, EventArgs e)
        {
                SqlConnection con = new SqlConnection(strreg);
                con.Open();

                try
                {
                    string name = FName.Text + " " + Lname.Text;
                    string str = "INSERT INTO [Login_Page].[dbo].[Login_Page]([Name],[EMail],[Passwd],[Mnumb],[DOB],[gender]) VALUES('" + name + "','" + Email.Text + "','" + passwd.Text + "','"+Mnum.Text+"','"+Date.Text+ "','" + gend.Text + "')";
                    SqlCommand cmd = new SqlCommand(str, con);
                    cmd.ExecuteNonQuery();
                    msg.Text = "You Have Been Registered   Go to Login Page. ";
                    con.Close();
                }
                 catch(SqlException ex)
               {
            Response.Write(ex.ToString());
               }
        }
}