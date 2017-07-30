using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class _Default : System.Web.UI.Page
{
    string data;

    string rec = System.Configuration.ConfigurationManager.ConnectionStrings["loginconstr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["Recov"] != null)
        {
            data = Application["Recov"].ToString();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection pop = new SqlConnection(rec);
        pop.Open();
        try {
            string sql = "UPDATE [Login_Page].[dbo].[Login_Page] SET Passwd ='" +newpass.Text+ "' WHERE Mnumb = '" +data+ "' ";
            SqlDataAdapter l = new SqlDataAdapter(sql, pop);
            SqlCommand camm = new SqlCommand(sql, pop);

            l.UpdateCommand = pop.CreateCommand();
            l.UpdateCommand.CommandText = sql;
            l.UpdateCommand.ExecuteNonQuery();
            

            mesg.Text = "Password Updated Sucessfully with "+ data;
            }
            
        
        catch(SqlException er)
        {
            Response.Write(er.ToString());
        }
        finally
        {
            pop.Close();
        }
        
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/Login.aspx");
    }
}