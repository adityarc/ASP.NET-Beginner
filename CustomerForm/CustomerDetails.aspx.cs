using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace WebApplication2
{
    public partial class CustomerDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdSubmit_Click(object sender, EventArgs e)
        {
            DateTime d = DateTime.Parse(txtRegDate.Text);
            string CID = Models.Constraints.GeneratePatientID();
            int res = Models.Insert.AddData(d, CID, txtCustomerName.Text, txtLocation.Text, txtPhone.Text, txtAddress.Text, txtEmail.Text, txtPincode.Text, txtUsername.Text, txtPassword.Text);
            if (res == 0)
                txtMsg.Text = "RECORD NOT ADDED";
            else
                txtMsg.Text = "RECORD ADDED SUCCESSFULLY";
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtAddress.Text = "";
            txtConfirmPassword.Text = "";
            //txtCustomerID.Text = "";
            txtCustomerName.Text = "";
            txtEmail.Text = "";
            DrpCity.SelectedValue = "0";
            txtPassword.Text = "";
            txtPhone.Text = "";
            txtPincode.Text = "";
            txtRegDate.Text = "";
            txtUsername.Text = "";
            txtCustomerName.Focus();
            
        }
    }
}