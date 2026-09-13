using CapaControlador_Paquete;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaVista_Paquete
{
    public partial class frmPaquete : Form
    {
        string nombreTabla = "paquete";
        Controlador controlador = new Controlador ();
        public frmPaquete()
        {
            
            InitializeComponent();
        }

        public void actualizarDataGridView()
        {
            DataTable dtVista = controlador.llenarDgv(nombreTabla);
            dgvConsultaTabla.DataSource = dtVista;
        }

        private void btnConsultar_Click(object sender, EventArgs e)
        {
            actualizarDataGridView();
        }
    }
}
