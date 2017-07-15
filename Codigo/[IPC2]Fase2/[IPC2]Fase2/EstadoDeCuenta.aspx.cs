using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _IPC2_Fase2
{
    public partial class EstadoDeCuenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ServiceReference1.BancoClient sr = new ServiceReference1.BancoClient();
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("DEBE"));
            dt.Columns.Add(new DataColumn("___"));
            dt.Columns.Add(new DataColumn("HABER"));
            dt.Columns.Add(new DataColumn("____"));

            DataRow row1 = dt.NewRow();
            row1["DEBE"] = "FECHA";
            row1["___"] = "MONTO";
            row1["HABER"] = "FECHA";
            row1["____"] = "MONTO";
            dt.Rows.Add(row1);
            int numero = int.Parse(sr.ContarTransferencias());
            for (int i = 1; i <=numero; i++)
            {
                try
                {

               
                    if (sr.Transferencias(i,int.Parse(txtBuscar.Text),txtFechaInicio.Text,txtFechaFin.Text).noCuenta.ToString()!=null)
                    {
                        if (sr.Transferencias(i,int.Parse(txtBuscar.Text),txtFechaInicio.Text,txtFechaFin.Text).retiro.ToString()== "0")
                        {
                            DataRow row2 = dt.NewRow();
                            row2["DEBE"] = sr.Transferencias(i, int.Parse(txtBuscar.Text),txtFechaInicio.Text,txtFechaFin.Text).fecha.ToString();
                            row2["___"] = sr.Transferencias(i, int.Parse(txtBuscar.Text),txtFechaInicio.Text,txtFechaFin.Text).deposito.ToString();
                            dt.Rows.Add(row2);

                        }
                        else
                        {
                            DataRow row3 = dt.NewRow();
                            row3["HABER"] = sr.Transferencias(i, int.Parse(txtBuscar.Text),txtFechaInicio.Text,txtFechaFin.Text).fecha.ToString();
                            row3["____"] = sr.Transferencias(i, int.Parse(txtBuscar.Text),txtFechaInicio.Text,txtFechaFin.Text).retiro.ToString();
                            dt.Rows.Add(row3);
                        }
                    }

                }
                catch (Exception)
                {

                    throw;
                } 
            }

            gvEstado.DataSource = dt;
            gvEstado.DataBind();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServiceReference1.BancoClient sr = new ServiceReference1.BancoClient();
            txtNoCuenta.Text = sr.BuscarCuenta(int.Parse(txtBuscar.Text));

        }
    }
}