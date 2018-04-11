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


    public conexion()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
}