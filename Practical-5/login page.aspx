<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login page.aspx.cs" Inherits="Practical_5.login_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        body { font-family: Arial; margin: 30px; }
        table { border-collapse: collapse; }
        td { padding: 8px; font-size: 18px; }
        .box { max-width: 420px; }
        h2 { font-size: 28px; }
        input[type=text], input[type=password] { font-size: 18px; padding: 5px; }
        .btn { font-size: 18px; padding: 6px 14px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="box">
            <h2>Login Page</h2>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />

            <table>
                <tr>
                    <td>User Name</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="TextBox1" ErrorMessage="User name is required"
                            ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="TextBox2" ErrorMessage="Password is required"
                            ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn" OnClick="Button1_Click" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
