using System;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical_5
{
    public partial class leave_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void calLeaveDate_SelectionChanged(object sender, EventArgs e)
        {
            txtLeaveDate.Text = calLeaveDate.SelectedDate.ToString("dd/MM/yyyy");
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }

            pnlOutput.Visible = true;
            lblMessage.Text = "Leave applied successfully.";
            lblOutput.Text = "Employee Name: " + Server.HtmlEncode(txtEmployeeName.Text.Trim()) +
                             "<br />Employee ID: " + Server.HtmlEncode(txtEmployeeId.Text.Trim()) +
                             "<br />Type of Leave: " + Server.HtmlEncode(ddlLeaveType.SelectedItem.Text) +
                             "<br />Date of Leave: " + Server.HtmlEncode(txtLeaveDate.Text.Trim()) +
                             "<br />How Many Days: " + Server.HtmlEncode(txtDays.Text.Trim()) +
                             "<br />Reason: " + Server.HtmlEncode(txtReason.Text.Trim());
        }
    }
}