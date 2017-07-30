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
    string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["loginconstr"].ConnectionString;
    string sahi,pass;
  
    protected void Page_Load(object sender, EventArgs e)
    {
       
            SqlConnection pop = new SqlConnection(strcon);
        tab.Visible = false;
        if (Application["mail"] != null && Application["passwd"]!=null)
        {
            pass = Application["passwd"].ToString();
            sahi = Application["mail"].ToString();
        }

       

    }

    protected void updateP(object sender, EventArgs e)
    {
        SqlConnection pop = new SqlConnection(strcon);
        Lab.Text = " ";
        tab.Visible = true;
        try
        {
            SqlCommand mom = new SqlCommand("SELECT Name FROM Login_Page WHERE EMail = '" + sahi + "' ", pop);
            pop.Open();
            SqlDataReader rd = mom.ExecuteReader();
            if (rd.Read())
            {

                himsg.Text = "Hello ! " + rd.GetValue(0).ToString();
                FName.Text = rd.GetValue(0).ToString();

            }
            rd.Close();
            mom.Dispose();

            SqlCommand mo = new SqlCommand("SELECT Mnumb FROM Login_Page WHERE EMail = '" + sahi + "' ", pop);
            SqlDataReader r = mo.ExecuteReader();
            if (r.Read())
            { Mnum.Text = r.GetValue(0).ToString(); }
            r.Close();
            mo.Dispose();


            SqlCommand mom1 = new SqlCommand("SELECT EMail FROM Login_Page WHERE EMail = '" + sahi + "' ", pop);
            SqlDataReader rd1 = mom1.ExecuteReader();
            if (rd1.Read())
            {

                Email.Text = rd1.GetValue(0).ToString();

            }
            rd1.Close();
            mom1.Dispose();

            SqlCommand mom2 = new SqlCommand("SELECT DOB FROM Login_Page WHERE EMail = '" + sahi + "' ", pop);
            SqlDataReader rd2 = mom2.ExecuteReader();
            if (rd2.Read())
            { Date.Text = rd2.GetValue(0).ToString(); }
            rd2.Close();
            mom2.Dispose();

            SqlCommand mom3 = new SqlCommand("SELECT Address FROM Login_Page WHERE EMail = '" + sahi + "' ", pop);
            SqlDataReader rd3 = mom3.ExecuteReader();
            if (rd3.Read())
            { addres.Text = rd3.GetValue(0).ToString(); }
            rd3.Close();
            mom3.Dispose();




        }
        catch (SqlException ex)
        {
            Response.Write(ex.ToString());
        }
        finally
        {
            pop.Close();
        }

    }


    protected void but_Click(object sender, EventArgs e)
    {
        SqlConnection p = new SqlConnection(strcon);
        p.Open();
        try
        {
            string csm = "UPDATE [Login_Page].[dbo].[Login_Page] SET Name = '" + FName.Text+"',Mnumb='"+Mnum.Text+"',EMail = '"+Email.Text+"',DOB='"+Date.Text+"',Address='"+addres.Text+"' WHERE EMail ='"+sahi+"'";
            SqlDataAdapter da = new SqlDataAdapter(csm, p);
            SqlCommand camm = new SqlCommand(csm, p);

            da.UpdateCommand = p.CreateCommand();
            da.UpdateCommand.CommandText = csm;
            da.UpdateCommand.ExecuteNonQuery();

            himsg.Text = "Update Successful";
         }
        catch(SqlException em)
        {
            Response.Write(em.ToString());
        }
        finally
        {
            p.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/Login.aspx");
    }
}