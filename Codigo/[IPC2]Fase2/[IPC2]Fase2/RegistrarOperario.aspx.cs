using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _IPC2_Fase2
{
    public partial class RegistrarOperario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ServiceReference1.BancoClient sr = new ServiceReference1.BancoClient();
            sr.CrearOperario(int.Parse(txtIdOperario.Text), txtSueldo.Text, txtUsuario.Text, txtContraseña.Text, int.Parse(DropDownList1.SelectedValue.ToString()));
            sr.Operaciones("Se registro Operario", int.Parse(Session["idoperario"].ToString()), DateTime.Now.ToString("yyyy-MM-dd"));
        }
    }
}