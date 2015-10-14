using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Session_failed"] != null) {
            loginFail.Visible = true;
            Session.Remove("Session_failed");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        string email = txtEmail.Text;
        string clave = txtPassword.Text;

        string query = "select count(*) from t_cliente where email='" + email + "' and clave='" + clave + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        con.Close();
        if (temp > 0)
        {
            con.Open();
            query = "select usuario from t_cliente where email='" + email + "' ";
            cmd = new SqlCommand(query, con);
            string userName = cmd.ExecuteScalar().ToString();
            //TODO:Redireccionar y guardar en sesión data
            Session["Session_user"] = userName;
            Response.Redirect("MainCliente.aspx", true);
        }
        else
        {
            //TODO:Show error message
            Session.Add("Session_failed",1);
            Response.Redirect("Login.aspx", true);
        }

    }
}