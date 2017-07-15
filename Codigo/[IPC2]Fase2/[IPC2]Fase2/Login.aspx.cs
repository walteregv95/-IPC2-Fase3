using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _IPC2_Fase2
{
    public partial class Login : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServiceReference1.BancoClient sr = new ServiceReference1.BancoClient();
            String opcion = DropDownList1.SelectedValue;
            if (opcion == "101"|| opcion =="102")
            {
                if (sr.ValidarCliente(txtUsuario.Text,txtContraseña.Text).nombre!=null)
                {
                    Session["Usuario"] = sr.ValidarCliente(txtUsuario.Text, txtContraseña.Text).usuario.ToString();
                    Session["idcliente"] = sr.ValidarCliente(txtUsuario.Text, txtContraseña.Text).idcliente.ToString();
                   
                    if (opcion =="101")   
                    {
                        Response.Redirect("Inicio_Cliente.aspx");
                        

                    }
                    else
                    {
                        Response.Redirect("Inicio_Nomina.aspx");
                        
                    }
                }
            }
            else
            {
                if (sr.ValidarOperario(txtUsuario.Text, txtContraseña.Text).usuario != null)
                {
                    Session["Usuario"] = sr.ValidarOperario(txtUsuario.Text, txtContraseña.Text).usuario.ToString();
                    Session["idoperario"] = sr.ValidarOperario(txtUsuario.Text, txtContraseña.Text).idoperario.ToString();
                    if (opcion == "301")
                    {
                        Response.Redirect("Inicio_Cajero.aspx");
                        
                    }
                    else if (opcion == "302")
                    {
                        Response.Redirect("Inicio_ServicioAlCliente.aspx");
                        
                    }
                    else if (opcion == "303")
                    {
                        Response.Redirect("Inicio_Gerente.aspx");
                    }
                    else if (opcion == "304")
                    {
                         Response.Redirect("Inicio_GerenteAgencia.aspx");
                    }
                }
            }
        }
    }
}