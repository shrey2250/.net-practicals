<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="leave page.aspx.cs" Inherits="Practical_5.leave_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Leave Page</title>
    <style>
        body { font-family: Arial; margin: 30px; }
        table { border-collapse: collapse; }
        td { padding: 8px; vertical-align: top; font-size: 18px; }
        .box { max-width: 820px; }
        h2 { font-size: 28px; }
        input[type=text], select, textarea { font-size: 18px; padding: 5px; }
        .output { margin-top: 20px; padding: 12px; border: 1px solid #ccc; background: #f9f9f9; }
        .success { color: green; font-weight: bold; font-size: 18px; }
        .btn { font-size: 18px; padding: 6px 14px; }
        .cal { margin-top: 6px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="box">
            <h2>Academic Calendar &amp; Leave Management</h2>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            <asp:Label ID="lblMessage" runat="server" CssClass="success"></asp:Label>

            <table>
                <tr>
                    <td>Employee Name</td>
                    <td>
                        <asp:TextBox ID="txtEmployeeName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="txtEmployeeName" ErrorMessage="Employee name is required"
                            ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Employee ID</td>
                    <td>
                        <asp:TextBox ID="txtEmployeeId" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="txtEmployeeId" ErrorMessage="Employee ID is required"
                            ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Type of Leave</td>
                    <td>
                        <asp:DropDownList ID="ddlLeaveType" runat="server">
                            <asp:ListItem Value="0">-- Select Leave Type --</asp:ListItem>
                            <asp:ListItem>Casual Leave</asp:ListItem>
                            <asp:ListItem>Sick Leave</asp:ListItem>
                            <asp:ListItem>Earned Leave</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                            ControlToValidate="ddlLeaveType" InitialValue="0" ErrorMessage="Select leave type"
                            ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Date of Leave</td>
                    <td>
                        <asp:TextBox ID="txtLeaveDate" runat="server" ReadOnly="true"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                            ControlToValidate="txtLeaveDate" ErrorMessage="Select leave date"
                            ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:Calendar ID="calLeaveDate" runat="server" CssClass="cal" OnSelectionChanged="calLeaveDate_SelectionChanged"></asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td>How Many Days</td>
                    <td>
                        <asp:TextBox ID="txtDays" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                            ControlToValidate="txtDays" ErrorMessage="Days are required"
                            ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtDays"
                            MinimumValue="1" MaximumValue="30" Type="Integer"
                            ErrorMessage="Days must be between 1 and 30"
                            ForeColor="Red" Display="Dynamic">*</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>Reason for Leave</td>
                    <td>
                        <asp:TextBox ID="txtReason" runat="server" TextMode="MultiLine" Rows="4" Columns="30"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                            ControlToValidate="txtReason" ErrorMessage="Reason is required"
                            ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnApply" runat="server" Text="Apply" CssClass="btn" OnClick="btnApply_Click" />
                    </td>
                </tr>
            </table>

            <asp:Panel ID="pnlOutput" runat="server" Visible="false" CssClass="output">
                <asp:Label ID="lblOutput" runat="server"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
