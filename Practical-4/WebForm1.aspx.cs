using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac_4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, System.EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void cvTerms_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = chkTerms.Checked;
        }

        protected void btnRegister_Click(object sender, System.EventArgs e)
        {
            if (Page.IsValid)
            {
                string skills = string.Empty;

                for (int i = 0; i < cblSkills.Items.Count; i++)
                {
                    if (cblSkills.Items[i].Selected)
                    {
                        if (skills.Length > 0)
                        {
                            skills += ", ";
                        }

                        skills += cblSkills.Items[i].Text;
                    }
                }

                if (string.IsNullOrWhiteSpace(skills))
                {
                    skills = "None";
                }

                lblResult.Text =
                    "Registration Successful!<br/><br/>" +
                    "Name: " + Server.HtmlEncode(txtName.Text) + "<br/>" +
                    "Email: " + Server.HtmlEncode(txtEmail.Text) + "<br/>" +
                    "Mobile: " + Server.HtmlEncode(txtMobile.Text) + "<br/>" +
                    "College: " + Server.HtmlEncode(txtCollege.Text) + "<br/>" +
                    "Department: " + Server.HtmlEncode(rblDepartment.SelectedValue) + "<br/>" +
                    "Event: " + Server.HtmlEncode(ddlEvent.SelectedValue) + "<br/>" +
                    "Gender: " + Server.HtmlEncode(rblGender.SelectedValue) + "<br/>" +
                    "Skills: " + Server.HtmlEncode(skills) + "<br/>" +
                    "Address: " + Server.HtmlEncode(txtAddress.Text).Replace("\r\n", "<br/>").Replace("\n", "<br/>");
            }
        }

        protected void btnReset_Click(object sender, System.EventArgs e)
        {
            txtName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtMobile.Text = string.Empty;
            txtCollege.Text = string.Empty;
            txtAddress.Text = string.Empty;

            rblDepartment.ClearSelection();
            ddlEvent.SelectedIndex = 0;
            rblGender.ClearSelection();

            for (int i = 0; i < cblSkills.Items.Count; i++)
            {
                cblSkills.Items[i].Selected = false;
            }

            chkTerms.Checked = false;
            lblResult.Text = string.Empty;
        }

    }
}
