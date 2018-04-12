using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySql.Web;
using System.Data;

public partial class Historia : System.Web.UI.Page
{

    public static String cadenaConexion = "server=localhost;Database=biblioteca;Uid=root;Pwd=sistemas2018";
    static MySqlConnection conectando = new MySqlConnection(cadenaConexion);

    protected void Page_Load(object sender, EventArgs e)
    {
        consultarImagenes();        
    }

    protected void consultarImagenes()
    {

        MySqlConnection conectando = new MySqlConnection(cadenaConexion);

        MySqlCommand cmd = new MySqlCommand("Select isbn, imagen, titulo from libros where clasificacion = 'historia' ORDER BY isbn ASC", conectando);
        cmd.CommandType = CommandType.Text;
        cmd.Connection = conectando;
        conectando.Open();

        cmd.ExecuteNonQuery();

        DataTable ImagenesBD = new DataTable();
        ImagenesBD.Load(cmd.ExecuteReader());

        repetidor.DataSource = ImagenesBD;
        repetidor.DataBind();
        conectando.Close();
        

    }

    protected void Salir_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("inicio.aspx");
    }
}