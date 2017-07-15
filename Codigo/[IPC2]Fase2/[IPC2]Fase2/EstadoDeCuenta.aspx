<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente.Master" AutoEventWireup="true" CodeBehind="EstadoDeCuenta.aspx.cs" Inherits="_IPC2_Fase2.EstadoDeCuenta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
     <div class="page-header">
              <h1 class="all-tittles">Cliente<small>_Estados de Cuenta</small></h1>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="group-material">
                                
                                <asp:TextBox ID="txtBuscar" runat="server" type="text" class="material-control tooltips-general" placeholder="101"  maxlength="100" data-toggle="tooltip" data-placement="top" title="Escribe el numero de cuenta"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>NO. Cuenta</label>
                            </div>
                    <div class="group-material">
                                 <p class="center-block">
                             <asp:Button ID="Button1" runat="server" Text="Buscar" type="submit" class="btn btn-primary" OnClick="Button1_Click"/>
                           </p>
                             
                            </div>
                              <div class="group-material">
                                
                                <asp:TextBox ID="txtNoCuenta" runat="server" type="text" class="material-control tooltips-general" placeholder="101"  maxlength="100" data-toggle="tooltip" data-placement="top" title=""></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>NO. Cuenta</label>
                            </div> 
                             <div class="group-material">
                                
                                <asp:TextBox ID="txtFechaInicio" runat="server" type="text" class="material-control tooltips-general" placeholder="2017-07-13"  maxlength="100" data-toggle="tooltip" data-placement="top" title="yyyy-mm-dd"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Fecha Inicio</label>
                            </div>
                                  <div class="group-material">
                                
                               <asp:TextBox ID="txtFechaFin" runat="server" type="text" class="material-control tooltips-general" placeholder="2017-07-13"  maxlength="100" data-toggle="tooltip" data-placement="top" title="yyyy-mm-dd"></asp:TextBox>
                                <span class="highlight"></span>
                                <span class="bar"></span>
                                <label>Fecha Fin</label>
                            </div>
                           
     <p class="text-center">
                                
                                <asp:Button ID="Button2" runat="server" Text="Aceptar" type="submit" class="btn btn-primary" OnClick="Button2_Click"/>

         <p class="text-center">
          
                               
             <asp:GridView ID="gvEstado" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="767px" >
                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                 <EditRowStyle BackColor="#999999" />
                 <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                 <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                 <SortedAscendingCellStyle BackColor="#E9E7E2" />
                 <SortedAscendingHeaderStyle BackColor="#506C8C" />
                 <SortedDescendingCellStyle BackColor="#FFFDF8" />
                 <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
             </asp:GridView>

          </p>
                               
</asp:Content>
