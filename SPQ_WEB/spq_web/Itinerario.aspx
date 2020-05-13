<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Itinerario.aspx.vb" Inherits="SPQ_WEB.Itinerario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     
    
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>

  <title>Itinerario de Camiones | SPQ</title>

  <!-- Estilos y Fuentes-->
  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css"/>
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css"/>

  <!-- Theme CSS -->
  <link href="css/freelancer.min.css" rel="stylesheet"/>

      <script type="text/javascript">
    // Solo permite ingresar numeros.
        function soloNumeros(e) {
            var key = window.Event ? e.which : e.keyCode
            return ((key >= 48 && key <= 57) || (key == 8))
        }
</script>
</head>
<body id="page-top">
    <form id="form2" runat="server">

    <!-- Menu de Navegación -->
  <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
        <div class="container">
            <!--Logo -->
            <!--<img src="../css_login/images/logo_blanco.png" alt="logo" />--> 
             <h1 class="masthead-heading text-uppercase mb-0">SPQ</h1>
            
            <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
       
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                     <li class="nav-item mx-0 mx-lg-1 ">
                        <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="Menu_principal.aspx">INICIO</a>
                    </li>
                    <li class="nav-item-active mx-0 mx-lg-1 ">
                        <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="itinerario.aspx">ITINERARIO DE CAMIONES</a>
                    </li>
                    <li class="nav-item mx-0 mx-lg-1 ">
                       
                        <asp:Button ID="BtnLogout" class="nav-link py-2 px-0 px-lg-3 rounded js-scroll-trigger" runat="server" Text="CERRAR SESIÓN" />
                          
                    </li>
                   
                </ul>
            </div>
        </div>
    </nav>

  <!-- Contenedor -->
  <header class="masthead bg-primary text-white text-center">
        <div class="container d-flex align-items-center flex-column">

            <!-- Masthead Heading -->
            <h1 class="masthead-heading text-uppercase mb-0">ITINERARIO DE CAMIONES</h1>

        </div>
    </header>

 <!-- Contact Section -->
  <section class="page-section" id="contact">
        <div class="container">

            <!-- Contact Section Form -->
            <div class="row">
                <div class="col-lg-8 mx-auto">


                   <!-- Inicio de Formulario -->
                    


                        <p class="help-block text-danger"></p>


                                               
                       
                      
                         <h1 class="masthead-heading text-uppercase mb-0"> INFORMACIÓN EN LÍNEA</h1>
                         <hr />
                        <br />
                        <br />
                        <asp:GridView ID="GridView1" runat="server"  CssClass="table table-responsive table-striped" AutoGenerateColumns="False" RowStyle-Wrap="False" DataSourceID="itinerario_web">
                            <Columns>
                                <asp:BoundField DataField="ingreso" HeaderText="Horario ingreso" ReadOnly="True" SortExpression="ingreso" />
                                <asp:BoundField DataField="estado" HeaderText="Estado" SortExpression="estado" />
                                <asp:BoundField DataField="nombre_empresa" HeaderText="Cliente" SortExpression="nombre_empresa" />
                                <asp:BoundField DataField="nombre_carga" HeaderText="Tipo carga" SortExpression="nombre_carga" />
                                <asp:BoundField DataField="inicio_descarga" HeaderText="Inicio descarga" SortExpression="inicio_descarga" />
                                <asp:BoundField DataField="termino_descarga" HeaderText="Termino descarga" SortExpression="termino_descarga" />                              
                                <asp:BoundField DataField="patente_vehiculo" HeaderText="Patente" SortExpression="patente_vehiculo" />
                                
                              
                            </Columns>

<RowStyle Wrap="False"></RowStyle>
                        </asp:GridView>
                        
                        <asp:SqlDataSource ID="itinerario_web" runat="server" ConnectionString="<%$ ConnectionStrings:SPQ_WEB.My.MySettings.conexion %>" SelectCommand="sp_itinerario_web" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />

                    
                </div>
            </div>

        </div>
    </section>


  <!-- Copyright  -->
  <section class="copyright py-4 text-center text-white">
      
      
    <div class="container">
      <small>Copyright &copy; 2019 - Servicios Portuarios Quellón  <br/> Desarrollado por Proactivodigital.cl</small>        
    </div>
      <br />
      <br />
      <br />
      <br />
  </section>

   
     
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Contact Form JavaScript -->
  <script src="js/jqBootstrapValidation.js"></script>
  <script src="js/contact_me.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/freelancer.min.js"></script>
    </form>
</body>

</html>