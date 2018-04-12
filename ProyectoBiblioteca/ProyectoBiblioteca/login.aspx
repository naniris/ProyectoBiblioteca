<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

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

    <title>Login</title>
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
            background-color: sandybrown;
            width: 400px;
            margin-left: 38%;
            margin-top: 1%;
            
        }

         h4{
            color:#FFC300  ;
            font-family: Arial;
            font-weight: bold;
            width:200px;
            margin-left:40%;
         }


        a.contraOlvi{
             color: #2980B9;
        }

        a.contraOlvi:hover{
            color: #5DADE2;
        }

        nav.espacioTop{
            margin-top: 1%;
        }

        #Registro{
                 margin-left:35%;
         }

         .etiqueta{
                 color:#0DD5B1  ;
          }

    </style>
</head>
<body>
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
                        </div>
                    </li>
                                      
                     <li class="nav-item">
                    <a href="#" class="nav-link">Ayuda</a>
                    </li>

                 
                </ul>
                
                <div class="form-inline my-2 my-lg-0" style="margin-right:20%">

                  <asp:Label runat="server"><input class="form-control mr-sm-2" type="text" placeholder="Buscar"/></asp:Label>
                  <asp:Button runat="server" Text="Buscar" class="btn btn-outline-success my-2 my-sm-0"/>

                </div >

                
            <ul class="social-header list-inline-item text-sm-right" style="margin-left:17%">
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
            <br />
            <div class="row">
            <div class="col-lg-3">

            </div>
            <div class="col-lg-6">
                <h4>Iniciar sesión</h4>
                    	<form id="login" action="#" method="post" role="form" style="display: block;">
									<div class="form-group">
                                        <asp:Label runat="server" CssClass="etiqueta">Usuario</asp:Label>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="usuario"></asp:TextBox>/>
									</div>
									<div class="form-group">
                                       <asp:Label runat="server" CssClass="etiqueta">Contraseña</asp:Label> />
                                       <asp:TextBox runat="server" CssClass="form-control" ID="contrasena"></asp:TextBox>/>
									</div>
									
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<asp:Button Text="Iniciar Sesión" runat="server" href="#" class="btn btn-primary" CssClass="btn btn-success" OnClick="Unnamed3_Click"></asp:Button>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="#" tabindex="5" class="contraOlvi">¿Has olvidado tu contraseña?</a>
												</div>
											</div>
										</div>
									</div>
								</form>
            </div>
            <div class="col-lg-3">

            </div>
                </div>
        </div>
    </form>
</body>
</html>
