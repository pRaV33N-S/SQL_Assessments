using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assessment10
{
    public partial class ProductRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime selectedDate = Cal.SelectedDate;
            if (selectedDate < DateTime.Now)
            {
                args.IsValid = false;
            }
            else
                args.IsValid = true;
        }
        protected void Btn_Click(object source,EventArgs e)
        {
            Label.Text = ProductName.Text;
            Label.Text += Category.SelectedValue;
            Label.Text += Price.Text;
            Label.Text += Cal.SelectedDate;
            
        }
    }
}