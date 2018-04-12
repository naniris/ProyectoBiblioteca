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

    protected void Unnamed5_Click(object sender, EventArgs e)
    {
        
        int registro = conexion.Usuario(usuario.Text,cElectronico.Text,contra.Text,contraConfirm.Text);
        Response.Write("<script language='JavaScript'>alert('Se elimino correctamente el libró...!!!');</script>");

    }
}