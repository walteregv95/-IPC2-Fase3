using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _IPC2_Fase2
{
    public partial class CambiarCheque : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ServiceReference1.BancoClient sr = new ServiceReference1.BancoClient();
            txtCliente.Text = sr.BuscarCuenta(int.Parse(txtNoCuenta.Text));
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ServiceReference1.BancoClient sr = new ServiceReference1.BancoClient();
            sr.CambiarCheque(txtNombre.Text, txtMonto.Text, int.Parse(txtNoCuenta.Text));
            String saldo = sr.ConsultarSaldo(int.Parse(txtNoCuenta.Text));
            sr.Retirar(int.Parse(txtNoCuenta.Text), txtMonto.Text, saldo);
            sr.Operaciones("Se Cambio Cheque", int.Parse(Session["idoperario"].ToString()), DateTime.Now.ToString("yyyy-MM-dd"));
            
        }
    }
}