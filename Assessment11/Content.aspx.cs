using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Assessment11
{
    public partial class Content : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Server=DESKTOP-FDHH6M8;Database=Assignment;Trusted_Connection=true;");
                SqlCommand cmd = new SqlCommand("Select * From Articles", con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                ArticleTbl.DataSource=ds;
                ArticleTbl.DataBind();
            }
            catch(Exception ex)
            {
                Lbl.Text = ex.Message;
            }
        }
    }
}