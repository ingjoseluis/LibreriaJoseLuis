using libro.AccesoLibro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebLibro
{
    public partial class LibreriaMavc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLibro_Click(object sender, EventArgs e)
        {
            LibroRepository libroRepository = new LibroRepository();            
            GridViewLibro.DataSource = libroRepository.ObtenerPorNombre(TextBoxLibro.Text);
            GridViewLibro.DataBind();
        }
    }
}