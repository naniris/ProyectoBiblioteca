using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using MySql.Web;
using System.Data;

/// <summary>
/// Descripción breve de conexion
/// </summary>
public class conexion
{
    public static String cadenaConexion = "server=localhost;Database=biblioteca;Uid=root;Pwd=sistemas2018";
    static MySqlConnection conectando = new MySqlConnection(cadenaConexion);

    public static int Usuario(params String[] Registro)
    {
        MySqlConnection conectando = new MySqlConnection(cadenaConexion);

        MySqlCommand nuevo = new MySqlCommand("insertarUsuario",conectando);
        nuevo.CommandType = CommandType.StoredProcedure;
        nuevo.Parameters.AddWithValue("@usuario", Registro[0]);
        nuevo.Parameters.AddWithValue("@correoElec", Registro[1]);
        nuevo.Parameters.AddWithValue("@contra", Registro[2]);
        nuevo.Parameters.AddWithValue("confContra", Registro[3]);

        conectando.Open();

        int R = 0;

        try
        {
            R = nuevo.ExecuteNonQuery();
        }
        catch (Exception e)
        {

        }
        conectando.Close();
        return R;
    }



    public static int InicioSesion(String nombre, string contr)
    {
        int leido = 0;
        conectando.Open();


        MySqlCommand login = new MySqlCommand("select * from usuarios where usuario=@nombre and contra=@contr", conectando);
        login.Parameters.AddWithValue("@nombre", nombre);
        login.Parameters.AddWithValue("@contr", contr);
        MySqlDataReader localizado = login.ExecuteReader();
        if (localizado.Read())
        {
            leido = 2;
        }
        else
        {
            leido = 0;
        }
        conectando.Close();
        return leido;
    }


    public conexion()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
}