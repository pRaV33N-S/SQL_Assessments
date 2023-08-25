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
            if (Page.IsValid)
            {
                Label.Text = "Product Name: " + ProductName.Text + "<br />";
                Label.Text += "Category: " + Category.SelectedValue + "<br />";
                Label.Text += "Price: " + Price.Text + "<br />";
                Label.Text += "Description: " + Description.Text + "<br />";
                Label.Text += "Release Date: " + Cal.SelectedDate;
            }
            else
            {
                Label.Text = "Form still contains some errors!!!...";
            }
            
        }
    }
}