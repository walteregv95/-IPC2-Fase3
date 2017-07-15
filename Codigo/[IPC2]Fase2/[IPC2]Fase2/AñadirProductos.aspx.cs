using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _IPC2_Fase2
{
    public partial class AñadirProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ServiceReference1.BancoClient sr = new ServiceReference1.BancoClient();
            sr.AñadirProductos(int.Parse(txtIdProducto.Text), txtDescripcion.Text, int.Parse(txtValor.Text), int.Parse(txtIdPatrocinador.Text));
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServiceReference1.BancoClient sr = new ServiceReference1.BancoClient();
            txtPatrocinador.Text = sr.BuscarPatrocinador(int.Parse(txtIdPatrocinador.Text));
            sr.Operaciones("Añadio Producto", int.Parse(Session["idoperario"].ToString()), DateTime.Now.ToString("yyyy-MM-dd"));
        }
    }
}