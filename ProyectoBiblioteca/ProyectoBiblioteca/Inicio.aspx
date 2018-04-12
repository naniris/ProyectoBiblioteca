<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Inicio.aspx.cs" Inherits="Inicio" %>

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

    <title>TecBook</title>
</head>
<body ">

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
            margin-left:25%;
         }

        
    </style>
    
    <form id="form1" runat="server">
        
         <div class="container-fluid">    
       <h1 class="text-center">Biblioteca Digital</h1>
              <nav class="navbar navbar-toggleable bg-faded">
                <img src="App_Themes/Tema1/img/books.png" />
                          
               <ul class="navbar-nav" style="margin-right:2%">
                  

                   <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarsdrop" data-toggle="dropdown">Clasificacion</a>
                       <div class="dropdown-menu">
                            <a href="Historia.aspx" class="dropdown-item">Historia</a>
                            <a href="Comics.aspx" class="dropdown-item">Comics</a>
                            <a href="Programacion.aspx" class="dropdown-item">Programación</a>
                            <a href="Marketing.aspx" class="dropdown-item">Marketing</a>
                            <a href="#" class="dropdown-item">Musica</a>
                            
                        
                            
                        </div>
                    </li>

                                                         
                     <li class="nav-item">
                    <a href="#" class="nav-link">Ayuda</a>
                    </li>

                 
                </ul>
                
                <div class="form-inline my-2 my-lg-0" style="margin-right:20%">
                  <input class="form-control mr-sm-2" type="text" placeholder="Buscar"/>
                  <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>

                </div >

                

              <ul class="social-header list-inline-item text-sm-right" style="margin-left:-3%">
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

             <ul class="navbar-nav " style="margin-left:5%">
                <li class="nav-item">
                    <a href="login.aspx">Iniciar Sesión</a>
                    /
                    <a href="registro.aspx">Registrar</a>
                </li>
            </ul>
                 
            </nav>

            
            <nav class="navbar navbar-toggleable bg-warning">

            </nav>
             <br />
             <br />
   <div id="demo" class="carousel slide" data-ride="carousel" >
          <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
            <li data-target="#demo" data-slide-to="3"></li>
          </ul>
          <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="App_Themes/Tema1/img/user5.jpg" class="rounded mx-auto d-block"/>
              <div class="carousel-caption">
                <p>Libros de programación</p>
              </div>   
            </div>
            <div class="carousel-item">
                <img src="App_Themes/Tema1/img/user7.jpg" class="rounded mx-auto d-block"/>
              <div class="carousel-caption">
                <p>Marketing digital</p>
              </div>   
            </div>
            <div class="carousel-item">
                <img src="App_Themes/Tema1/img/user6.jpg" class="rounded mx-auto d-block"/>
              <div class="carousel-caption">
                <p>El libro de los master</p>
              </div>   
            </div>
            <div class="carousel-item">
                <img src="App_Themes/Tema1/img/user8.jpg" class="rounded mx-auto d-block"/>
              <div class="carousel-caption">
                <p>La historia de la musica</p>
              </div>   
            </div>
          </div>
          <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
          </a>
          <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
          </a>
        </div>
            <br />
         <div class="col-md-6" id="div">
           
            <h3>Quiénes somos <i class="hidden-xs-down" aria-hidden="true"></i></h3>
               
            <p id="parrafo">TecBook es una plataforma con un estilo sensillo y eficaz para la descarga de libros en PDF online, lo que permite a cualquier usuario poder descargar los libros sin coste alguno. Desde libros de Musica, Programacion, Historia, Marketing, etc.</p>
             <h4>Con TecBook</h4>
            <p id="parrafo">Tu tienes el control de descargar cualquier libro, ya que cuenta con los mejores libros, ADEMAS de descargarlos de manera gratuita</p>
            <p id="parrafo" style="margin-left:17%"><mark><em>Encuentra el libro que siempre buscabas!</em></mark></p>
         </div>
       
          
 </div>


        
    </form>
</body>
</html>
