﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using MySql.Data.MySqlClient;
using MySql.Web;
using System.Data;

public partial class ModificarLibro : System.Web.UI.Page
{
    public static String cadenaConexion = "server=localhost;Database=biblioteca;Uid=root;Pwd=sistemas2018";
    static MySqlConnection conectando = new MySqlConnection(cadenaConexion);



    protected void Page_Load(object sender, EventArgs e)
    {
        UserActivo.Text = Session["activo"].ToString();
        consultarImagenes();
    }

    protected void btn_subir_Click(object sender, EventArgs e)
    {
        int tamamio = ImagenSubir.PostedFile.ContentLength;
        byte[] imagenoriginal = new byte[tamamio];

        ImagenSubir.PostedFile.InputStream.Read(imagenoriginal, 0, tamamio);

        Bitmap imagenOriginalBinaria = new Bitmap(ImagenSubir.PostedFile.InputStream);


        //Crear imagen Thumbnail
        System.Drawing.Image imtThumbnail;
        int TamanioThumbnail = 200;
        imtThumbnail = RedimencionarImagen(imagenOriginalBinaria, TamanioThumbnail);
        byte[] bImage = new byte[TamanioThumbnail];
        ImageConverter convertidor = new ImageConverter();
        bImage = (byte[])convertidor.ConvertTo(imtThumbnail, typeof(byte[]));

        MySqlConnection conectando = new MySqlConnection(cadenaConexion);

        MySqlCommand cmd = new MySqlCommand("update libros set titulo = @titulo, editorial = @editorial, nombreAutor = @nombreAutor, ApAutor = @ApAutor, imagen = @imagen where isbn = @isbn", conectando);
        cmd.Parameters.Add("@titulo", MySqlDbType.Text).Value = titulo.Text;
        cmd.Parameters.Add("@editorial", MySqlDbType.Text).Value = editorial.Text;
        cmd.Parameters.Add("@nombreAutor", MySqlDbType.Text).Value = nombre.Text;
        cmd.Parameters.Add("@ApAutor", MySqlDbType.Text).Value = apellido.Text;
        cmd.Parameters.Add("@imagen", MySqlDbType.LongBlob).Value = imagenoriginal;


        cmd.CommandType = CommandType.Text;
        cmd.Connection = conectando;
        conectando.Open();

        cmd.ExecuteNonQuery();
        consultarImagenes();
    }

    public System.Drawing.Image RedimencionarImagen(System.Drawing.Image Imagenoriginal, int Alto)
    {
        var radio = (double)Alto / Imagenoriginal.Height;
        var NuevoAncho = (int)(Imagenoriginal.Width * radio);
        var NuevoAlto = (int)(Imagenoriginal.Height * radio);
        var NuevaImagenRedireccionada = new Bitmap(NuevoAncho, NuevoAlto);
        var g = Graphics.FromImage(NuevaImagenRedireccionada);
        g.DrawImage(Imagenoriginal, 0, 0, NuevoAncho, NuevoAlto);
        return NuevaImagenRedireccionada;
    }

    protected void consultarImagenes()
    {

        MySqlConnection conectando = new MySqlConnection(cadenaConexion);


        MySqlCommand cmd = new MySqlCommand("Select isbn, imagen, titulo from libros ORDER BY isbn ASC", conectando);
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
    protected void Llenado (){

        conectando.Open();

        MySqlDataAdapter Llenadores = new MySqlDataAdapter("Select isbn, titulo from libros", conectando);
        DataSet Nombres = new DataSet();
        Llenadores.Fill(Nombres);
        titulo.DataSource = Nombres.Tables[0];
        titulo.DataValueField = "isbn";
        titulo.DataTextField = "titulo";
        titulo.DataBind();
        conectando.Close();
        
    }
}