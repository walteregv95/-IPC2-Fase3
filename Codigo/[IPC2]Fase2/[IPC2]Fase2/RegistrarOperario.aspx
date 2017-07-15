<%@ Page Title="" Language="C#" MasterPageFile="~/Gerente.Master" AutoEventWireup="true" CodeBehind="RegistrarOperario.aspx.cs" Inherits="_IPC2_Fase2.RegistrarOperario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
     <div class="page-header">
              <h1 class="all-tittles">Gerente<small>_Registrar Operario</small></h1>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container-fluid">
            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
                <li role="presentation"  class="active"><a href="RegistrarOperario.aspx">Nuevo Operario</a></li>
               
            </ul>
        </div>
        <div class="container-fluid"  style="margin: 50px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="assets/img/user02.png" alt="user" class="img-responsive center-box" style="max-width: 110px;">
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                    Bienvenido a la sección para registrar nueva Operario, debes de llenar todos los campos del siguiente formulario para registrar un Operario.
                </div>
            </div>
        </div>
       
        <div class="container-fluid">
            <div class="container-flat-form">
                <div class="title-flat-form title-flat-blue">Registrar una nueva Nomina</div>
                <form autocomplete="off">
                    <div class="row">
                       <div class="col-xs-12 col-sm-8 col-sm-offset-2">
                            <div class="group-material">
                                
                                <asp:TextBox ID="txtIdOperario" runat="server" type="text" class="material-control tooltips-general" placeholder="101"  maxlength="100" data-toggle="tooltip" data-placement="top" title="Escribe el codigo del operario"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Id Operario</label>
                            </div>
                          <div class="group-material">
                                
                                <asp:TextBox ID="txtSueldo" runat="server" type="text" class="material-control tooltips-general" placeholder="8000.00"  maxlength="100" data-toggle="tooltip" data-placement="top" title="Escribe el sueldo del operario"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Sueldo</label>
                            </div>
                           
                              <div class="group-material">
                                
                                <asp:TextBox ID="txtUsuario" runat="server" type="text" class="material-control tooltips-general" placeholder="Usuario"  maxlength="100" data-toggle="tooltip" data-placement="top" title=""></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Nombre de Usuario</label>
                           
                             <div class="group-material">
                                
                                <asp:TextBox ID="txtContraseña" runat="server" type="password" class="material-control tooltips-general" placeholder="10141"  maxlength="100" data-toggle="tooltip" data-placement="top" title=""></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Contraseña</label>
                            </div>
                             <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="367px">
                                 <asp:ListItem Value="301">Cajero</asp:ListItem>
                                 <asp:ListItem Value="302">Servicio Al Cliente</asp:ListItem>
                                 <asp:ListItem Value="303">Gerente General</asp:ListItem>
                                 <asp:ListItem Value="304">Gerente de Agencia</asp:ListItem>
                                  </asp:DropDownList>
                            <p class="text-center">
                                
                                <asp:Button ID="Button2" runat="server" Text="Guardar" type="submit" class="btn btn-primary" OnClick="Button2_Click" />
                               
                       </div>
                   </div>
                </form>
            </div>
        </div>
</asp:Content>
