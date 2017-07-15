<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_IPC2_Fase2.Login" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <title>Inicio de sesión</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="Shortcut Icon" type="image/x-icon" href="assets/icons/book.ico" />
    <script src="js/sweet-alert.min.js"></script>
    <link rel="stylesheet" href="css/sweet-alert.css">
    <link rel="stylesheet" href="css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/login.css"/>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
    <script src="js/modernizr.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/main.js"></script>
</head>
<body class="full-cover-background" style="background-image:url(assets/img/font-login.jpg);">
    <div class="form-container">
        <p class="text-center" style="margin-top: 17px;">
           <i class="zmdi zmdi-account-circle zmdi-hc-5x"></i>
       </p>
       <h4 class="text-center all-tittles" style="margin-bottom: 30px;">inicia sesión con tu cuenta</h4>
       <form runat ="server">
            <div class="group-material-login">
                
              <asp:TextBox ID="txtUsuario" runat="server" type="text" class="material-login-control" required="" maxlength="70"></asp:TextBox>
              
              <span class="highlight-login"></span>
              <span class="bar-login"></span>
             
              <label><i class="zmdi zmdi-account"></i> &nbsp; Usuario</label>
            </div><br>
            <div class="group-material-login">
             
            <asp:TextBox ID="txtContraseña" runat="server" type="password" class="material-login-control" required="" maxlength="70"></asp:TextBox>
              <span class="highlight-login"></span>
              <span class="bar-login"></span>
              <label><i class="zmdi zmdi-lock"></i> &nbsp; Contraseña</label>
            </div>
            <div class="group-material">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="236px"  class="material-control-login">
                    <asp:ListItem Value="101">Cliente</asp:ListItem>
                    <asp:ListItem Value="102">Empresa</asp:ListItem>
                    <asp:ListItem Value="301">Cajero</asp:ListItem>
                    <asp:ListItem Value="302">Servicio al Cliente</asp:ListItem>
                    <asp:ListItem Value="303">Gerente General</asp:ListItem>
                    <asp:ListItem Value="304">Gerente  de Agencia</asp:ListItem>
                </asp:DropDownList>
                
            </div>
             <asp:Button ID="Button1" runat="server" Text="Ingresar al Sistema" class="btn-login" type="submit" OnClick="Button1_Click" />
            
        </form>
    </div>  
</body>
</html>