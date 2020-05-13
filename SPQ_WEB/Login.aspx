<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="SPQ_WEB.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <title>Login - SPQ</title>

    <!--===============================================================================================-->
    <link rel="icon" type="css_login/image/png" href="images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css_login/vendor/bootstrap/css/bootstrap.min.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css_login/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css_login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css_login/vendor/animate/animate.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css_login/vendor/css-hamburgers/hamburgers.min.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css_login/vendor/animsition/css/animsition.min.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css_login/vendor/select2/select2.min.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css_login/vendor/daterangepicker/daterangepicker.css"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css_login/css/util.css"/>
    <link rel="stylesheet" type="text/css" href="css_login/css/main.css"/>
    <!--===============================================================================================-->
</head>

<body>
        <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
                 <!--Inicio de Formulario -->
				<form class="login100-form validate-form flex-sb flex-w" id="form1" runat="server">
					<span class="login100-form-title p-b-32">
					    <!--Logo -->
                        <img src="css_login/images/logo.png" alt="logo" />
					</span>


					<span class="txt1 p-b-11">
						Usuario
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Username is required">
						<!--Textbox Usuario -->
                        <asp:TextBox ID="TxtUsuario" runat="server" CssClass="input100" Style="text-transform: uppercase" placeholder="Usuario"></asp:TextBox>
    

						<span class="focus-input100"></span>
					</div>
					
					<span class="txt1 p-b-11">
						Contraseña
					</span>
					<div class="wrap-input100 validate-input m-b-12" data-validate = "Password is required">
						<span class="btn-show-pass">
							<i class="fa fa-eye"></i>
						</span>
					    <!--Textbox Usuario -->
                        <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" CssClass="input100" Style="text-transform: uppercase" placeholder="Contraseña"></asp:TextBox>
            
						<span class="focus-input100"></span>
					</div>
					
					<div class="flex-sb-m w-full p-b-48">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me"/>
							
						</div>

						
					</div>

					<div class="container-login100-form-btn">
						
                            <asp:Button ID="BtnAceptar" runat="server" Text="Iniciar sesión" CssClass="login100-form-btn" />
													
					</div>

				</form>
			</div>
		</div>
	</div>

 

        

   

    <div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="css_login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="css_login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="css_login/vendor/bootstrap/js/popper.js"></script>
	<script src="css_login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="css_login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="css_login/vendor/daterangepicker/moment.min.js"></script>
	<script src="css_login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="css_login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="css_login/js/main.js"></script>
</body>
</html>
