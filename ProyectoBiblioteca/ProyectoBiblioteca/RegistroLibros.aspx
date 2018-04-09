﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistroLibros.aspx.cs" Inherits="RegistroLibros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

     
    <link href="App_Themes/Tema1/css/bootstrap.min.css" rel="stylesheet" />
    <script src="App_Themes/Tema1/js/bootstrap.js"></script>
    <script src="App_Themes/Tema1/js/jquery.min.js"></script>
    <script src="App_Themes/Tema1/js/bootstrap.min.js"></script>
    <script src="App_Themes/Tema1/js/pooper.min.js"></script>

    <script src="https://use.fontawesome.com/025d1f53df.js"></script>

    <title></title>
</head>
<body>

     <style>
            body{
                background-image: url(http://localhost:60360/App_Themes/Tema1/img/B65.jpg);
                background-position: center;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;


            }
            h1 {
                color: yellow;
                font-family: Arial;
                font-weight: bold;
                background-color:sandybrown;
                width:400px;
                margin-left:35%;
            }

            h2{
                color:#D01C1C;
            }

          p{
             color:red;
             font-size:x-large;
          }

         .carousel-inner img {
            width: 50%;
            height: 50%;
         }
     
         #parrafo{
             color:azure;
             text-justify:auto;
         }

         h3{
            color:darkcyan;
            text-align:center;
            font-size:50px;
            
         }

         h4{
             color:darkcyan;
             font-size:30px; 
         }

         #hr{
             color:aqua;
            
         }

         #div{
            margin-right:20%;
         }

         .etiqueta{
             color:#0DD5B1  ;
         }
         
         #Registro{
             margin-left:30%;
         }

    </style>

    <form id="form1" runat="server">
        <div class="container-fluid">

             <h1 class="text-center">Biblioteca Digital</h1>
              <nav class="navbar navbar-toggleable bg-faded">
                <img src="App_Themes/Tema1/img/books.png" />
                          
               <ul class="navbar-nav ">
                  

                   <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarsdrop" data-toggle="dropdown">Clasificacion</a>
                       <div class="dropdown-menu">
                            <a href="#" class="dropdown-item">Historia</a>
                            <a href="#" class="dropdown-item">Ciencias</a>
                            <a href="#" class="dropdown-item">Geografia</a>
                            <a href="#" class="dropdown-item">Programacion</a>
                            <a href="#" class="dropdown-item">Marketing</a>
                            <a href="#" class="dropdown-item">Arte</a>
                            <a href="#" class="dropdown-item">Musica</a>
                            
                        
                            
                        </div>
                    </li>

                   
                    <li class="nav-item">
                    <a href="#" class="nav-link">Contacto</a>
                    </li>

                                                         
                     <li class="nav-item">
                    <a href="#" class="nav-link">Ayuda</a>
                    </li>

                </ul>
                <div class="form-inline my-2 my-lg-0" style="margin-left:35%;">
                  <input class="form-control mr-sm-2" type="text" placeholder="Buscar"/>
                  <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>

                </div >

                

                <ul class="social-header list-inline-item text-sm-right">
               <li class="list-inline-item">
                <a href="#">
                    <span class="fa-stack fa-lg">
                        <i class="fa fa-circle fa-stack-2x"></i>
                        <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                      </span>
                  </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                    <span class="fa-stack fa-lg">
                        <i class="fa fa-circle fa-stack-2x"></i>
                        <i class="fa fa-whatsapp fa-stack-1x fa-inverse"></i>
                      </span>
                  </a>
              </li>

           
            
            </ul>

          
                 
            </nav>

            
            <nav class="navbar navbar-toggleable bg-warning">

            </nav>
             <br />
             <br />


            <div class="container" id="Registro" >
              <h2>Regístre libros!</h2>
                <br />
                <div class="col-sm-6">
                    <asp:Label runat="server" CssClass="etiqueta">Titulo:</asp:Label>
                    <asp:TextBox runat="server" class="form-control" ID="titulo"></asp:TextBox>
                    <asp:Label runat="server" CssClass="etiqueta">Editorial </asp:Label>
                    <asp:TextBox runat="server" class="form-control" ID="editorial"></asp:TextBox>
                    <asp:Label runat="server" CssClass="etiqueta">Nombre del autor </asp:Label>
                    <asp:TextBox runat="server" class="form-control" ID="nombre"></asp:TextBox>
                    <asp:Label runat="server" CssClass="etiqueta">Apellido del autor </asp:Label>
                    <asp:TextBox runat="server" class="form-control" ID="apellido"></asp:TextBox>
                    <asp:Label runat="server" CssClass="etiqueta">Imagen</asp:Label> />
                    <br /> 
                    <asp:Image CssClass="etiqueta"  ID="imagen" runat="server"/>
                    <br />
                    <br />
                    <asp:Label runat="server" CssClass="etiqueta">Archivo</asp:Label>
                    <br />
                    <br />
                    <asp:FileUpload runat="server" id="ImagenSubir" />
                    <br />
                    <br />
                    <asp:Button runat="server" Text="Registrar" clasS="btn btn-primary" ID="btn_registrar" />
                    
            </div>
          </div>

        </div>
    </form>
</body>
</html>