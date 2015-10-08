using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registro : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

        string userName = tb_usu.Text;
        string password = tb_con.Text;
        string nombres = tb_nom.Text;
        string apellidoPaterno = tb_apePat.Text;
        string apellidMaterno = tb_apeMat.Text;
        string dni = tb_dni.Text;
        string correo = tb_cor.Text;
        SqlCommand cmd = new SqlCommand("insert into t_cliente (usuario,clave,email) values('" + userName + "','" + password + "','" + correo + "')", con);
        int filas = cmd.ExecuteNonQuery();
        if (filas > 1)
        {
            //TODO: Valida acá
        }
        con.Close();
    }
}