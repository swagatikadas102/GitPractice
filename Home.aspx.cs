using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
		protected void btnSubmit_Click(object sender, EventArgs e)
		{
			// Get the values from the form fields
			string userId = txtUserId.Text;
			string name = txtName.Text;
			string jobRole = ddlJobRole.SelectedValue;

			// You can process these values or save them to a database
			// For demonstration, display the submitted data
			Response.Write($"<script>alert('User ID: {userId}\\nName: {name}\\nJob Role: {jobRole}');</script>");
		}
	}
}