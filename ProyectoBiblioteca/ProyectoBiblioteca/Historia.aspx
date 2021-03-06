﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Historia.aspx.cs" Inherits="Historia" %>

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

    <title>Historia</title>
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

                 font-size:large;
                 color:#0DD5B1;
             }
         
             #Registro{
                 margin-left:2%;
             }

             #mover{
                 margin-left:5%;
             }
          </style>

       <form id="form1" runat="server">
        <div>
          <div class="container-fluid">

             <h1 class="text-center">Biblioteca Digital</h1>
              <nav class="navbar navbar-toggleable bg-faded">
                <img src="App_Themes/Tema1/img/books.png" />
                          
               <ul class="navbar-nav" style="margin-right:2%">
                  

                   <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarsdrop" data-toggle="dropdown">Clasificacion</a>
                       <div class="dropdown-menu">
                            <a href="Comics.aspx" class="dropdown-item">Comics</a>
                            <a href="Programacion.aspx" class="dropdown-item">Programación</a>
                            <a href="Marketing.aspx" class="dropdown-item">Marketing</a>
                            <a href="#" class="dropdown-item">Arte</a>
                            <a href="#" class="dropdown-item">Musica</a>
                            
                        
                            
                        </div>
                    </li>

                   
                    <li class="nav-item">
                    <a href="RegistroLibros.aspx" class="nav-link">Registrar</a>
                    </li>

                                                         
                     <li class="nav-item">
                    <a href="ModificarLibro.aspx" class="nav-link">Modificar</a>
                    </li>

                 
                </ul>
                
                <div class="form-inline my-2 my-lg-0" style="margin-right:20%">
                  <input class="form-control mr-sm-2" type="text" placeholder="Buscar"/>
                  <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>

                </div >

                

             <ul class="social-header list-inline-item text-sm-right" style="margin-left:10%">
                   <li class="list-inline-item">
                       <br />
               
                        <span class="fa-stack fa-lg">
                            <i class="fa fa-circle fa-stack-2x"></i>
                            <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                          </span>
                         <asp:Label Text="TecBook" runat="server" />
               
                  </li>
                  <li class="list-inline-item">
              
                        <span class="fa-stack fa-lg">
                            <i class="fa fa-circle fa-stack-2x"></i>
                            <i class="fa fa-whatsapp fa-stack-1x fa-inverse"></i>
                          </span>
                        <asp:Label Text="7531555811" runat="server" />
              
                  </li>
            </ul>

                 
            </nav>
            
            <nav class="navbar navbar-toggleable bg-warning">

            </nav> 
             <br />

           <asp:LinkButton Text="Salir" runat="server" ID="Salir" OnClick="Salir_Click"></asp:LinkButton>
          
          <div class="row" id="mover">
              <asp:Repeater ID="repetidor" runat="server">
                  <ItemTemplate>

                      <div class="col-md-3">
                          <img  class="img-responsive" src="data:image/jpg;base64, <%# Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem, "imagen")) %>"/> 
                          <br />
                          <asp:Label  runat="server" Text="Titulo: " CssClass="etiqueta"><%# DataBinder.Eval(Container.DataItem, "titulo") %></asp:Label> 
                          <br />
                          <asp:Label  runat="server" Text="ISBN: " CssClass="etiqueta"><%# DataBinder.Eval(Container.DataItem, "isbn") %></asp:Label>
                          <br />
                          <br />
                      </div>

                  </ItemTemplate> 
              </asp:Repeater>
          </div>
            <br />
            <br />

        </div>
       </div>
    </form>
</body>

</html>
