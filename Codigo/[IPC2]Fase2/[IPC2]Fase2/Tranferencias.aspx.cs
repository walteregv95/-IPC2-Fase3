using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _IPC2_Fase2
{
    public partial class Tranferencias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServiceReference1.BancoClient sr = new ServiceReference1.BancoClient();
            txtcliente1.Text = sr.BuscarCliente(int.Parse(txtNoCuenta1.Text));
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ServiceReference1.BancoClient sr = new ServiceReference1.BancoClient();
            txtCliente2.Text = sr.BuscarCliente(int.Parse(txtNoCuenta2.Text));
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DateTime hoy = DateTime.Now;
          
            ServiceReference1.BancoClient sr = new ServiceReference1.BancoClient();
            sr.TransferenciaRetiro(int.Parse(txtNoCuenta1.Text), txtMonto.Text, hoy.ToString("yyyy-MM-dd"));
            String Saldo = sr.ConsultarSaldo(int.Parse(txtNoCuenta1.Text));
            sr.Retirar(int.Parse(txtNoCuenta1.Text), txtMonto.Text, Saldo);
            sr.TransferenciaDeposito(int.Parse(txtNoCuenta2.Text), txtMonto.Text, hoy.ToString("yyyy-MM-dd"));
            String Saldo2 = sr.ConsultarSaldo(int.Parse(txtNoCuenta2.Text));
            sr.Depositar(int.Parse(txtNoCuenta2.Text), txtMonto.Text, Saldo2);
            sr.Operaciones("Nueva Transferencia", int.Parse(Session["idoperario"].ToString()), DateTime.Now.ToString("yyyy-MM-dd"));
        }
    }
}