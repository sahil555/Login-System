using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;




public partial class Default2 : System.Web.UI.Page
{    
    string data,recover = System.Configuration.ConfigurationManager.ConnectionStrings["loginconstr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["mail"] != null)
        {
             data = Application["mail"].ToString();
        }

    }

    protected void reset(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(recover);
        con.Open();
        try
        {
            string strcom = "SELECT * FROM [Login_Page].[dbo].[Login_Page] WHERE  EMail='"+data+"' AND Mnumb='" +recovMnumb.Text + "' ";

            SqlDataAdapter em = new SqlDataAdapter(strcom, con);
            DataSet DS = new DataSet();
            em.Fill(DS);

            if (DS.Tables[0].Rows.Count > 0)
            {
                Application["Recov"] = recovMnumb.Text;
                Response.Redirect("Recovery.aspx");
                
            }
            else
            {
                RecMsg.Text = "Invalid Details.";
            }

        }
        catch(SqlException ew)
        {
            Response.Write(ew.ToString());
        }

        finally
        {
            con.Close();
        }
    }
}