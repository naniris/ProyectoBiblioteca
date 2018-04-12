using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }

    protected void Unnamed3_Click(object sender, EventArgs e)
    {
        int encontrado = conexion.InicioSesion(usuario.Text, contrasena.Text);

        if (encontrado > 0)
        {

            Session["activo"] = usuario.Text;
            Response.Redirect("RegistroLibros.aspx");
            
        }
        else
        { 

            Response.Write("<script>window.alert('Usuario o contraseña invalidos!');</script>");
            usuario.Text = "";
            contrasena.Text = "";
        }
    }
}