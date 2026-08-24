<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prac_4.WebForm1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Event Registration</title>
    <style>
        body {
            font-family: Arial;
            margin: 30px;
        }

        table {
            border-collapse: collapse;
        }

        td {
            padding: 8px;
            vertical-align: top;
        }

        h2 {
            color: #003366;
        }

        #lblResult {
            color: green;
            font-size: 16px;
        }
    </style>
</head>
<body>

<form id="form1" runat="server">

    <h2>Online Event Registration</h2>

    <table>

        <!-- Name -->
        <tr>
            <td>Full Name</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvName"
                    runat="server"
                    ControlToValidate="txtName"
                    ErrorMessage="Name is required"
                    ForeColor="Red" />
            </td>
        </tr>

        <!-- Email -->
        <tr>
            <td>Email</td>
            <td>

                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvEmail"
                    runat="server"
                    ControlToValidate="txtEmail"
                    ErrorMessage="Email is required"
                    ForeColor="Red" />

                <asp:RegularExpressionValidator
                    ID="revEmail"
                    runat="server"
                    ControlToValidate="txtEmail"
                    ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"
                    ErrorMessage="Invalid Email"
                    ForeColor="Red" />

            </td>
        </tr>

        <!-- Mobile -->
        <tr>
            <td>Mobile</td>
            <td>

                <asp:TextBox ID="txtMobile" runat="server" MaxLength="10"></asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvMobile"
                    runat="server"
                    ControlToValidate="txtMobile"
                    ErrorMessage="Mobile is required"
                    ForeColor="Red" />

                <asp:RegularExpressionValidator
                    ID="revMobile"
                    runat="server"
                    ControlToValidate="txtMobile"
                    ValidationExpression="^[0-9]{10}$"
                    ErrorMessage="Enter 10 digit Mobile Number"
                    ForeColor="Red" />

            </td>
        </tr>

        <!-- College -->
        <tr>
            <td>College</td>
            <td>

                <asp:TextBox ID="txtCollege" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvCollege"
                    runat="server"
                    ControlToValidate="txtCollege"
                    ErrorMessage="College is required"
                    ForeColor="Red" />

            </td>
        </tr>

        <!-- Department -->
        <tr>
            <td>Department</td>
            <td>

                <asp:RadioButtonList ID="rblDepartment" runat="server">

                    <asp:ListItem>Computer</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                    <asp:ListItem>Electronics</asp:ListItem>
                    <asp:ListItem>Mechanical</asp:ListItem>

                </asp:RadioButtonList>

                <asp:RequiredFieldValidator
                    ID="rfvDepartment"
                    runat="server"
                    ControlToValidate="rblDepartment"
                    ErrorMessage="Select Department"
                    ForeColor="Red" />

            </td>
        </tr>

        <!-- Event -->
        <tr>
            <td>Event</td>
            <td>

                <asp:DropDownList ID="ddlEvent" runat="server">

                    <asp:ListItem Text="--Select Event--" Value=""></asp:ListItem>
                    <asp:ListItem>Coding Competition</asp:ListItem>
                    <asp:ListItem>Hackathon</asp:ListItem>
                    <asp:ListItem>Tech Quiz</asp:ListItem>

                </asp:DropDownList>

                <asp:RequiredFieldValidator
                    ID="rfvEvent"
                    runat="server"
                    ControlToValidate="ddlEvent"
                    InitialValue=""
                    ErrorMessage="Select Event"
                    ForeColor="Red" />

            </td>
        </tr>

        <!-- Gender -->
        <tr>
            <td>Gender</td>
            <td>

                <asp:RadioButtonList ID="rblGender" runat="server">

                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>

                </asp:RadioButtonList>

                <asp:RequiredFieldValidator
                    ID="rfvGender"
                    runat="server"
                    ControlToValidate="rblGender"
                    ErrorMessage="Select Gender"
                    ForeColor="Red" />

            </td>
        </tr>

        <!-- Skills -->
        <tr>
            <td>Skills</td>
            <td>

                <asp:CheckBoxList ID="cblSkills" runat="server">

                    <asp:ListItem>C#</asp:ListItem>
                    <asp:ListItem>Java</asp:ListItem>
                    <asp:ListItem>Python</asp:ListItem>
                    <asp:ListItem>Web Development</asp:ListItem>

                </asp:CheckBoxList>

            </td>
        </tr>

        <!-- Address -->
        <tr>
            <td>Address</td>
            <td>

                <asp:TextBox
                    ID="txtAddress"
                    runat="server"
                    TextMode="MultiLine"
                    Rows="4"
                    Columns="30">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvAddress"
                    runat="server"
                    ControlToValidate="txtAddress"
                    ErrorMessage="Address is required"
                    ForeColor="Red" />

            </td>
        </tr>

        <!-- Terms -->
        <tr>
            <td>Terms</td>
            <td>

                <asp:CheckBox
                    ID="chkTerms"
                    runat="server"
                    Text="I Accept Terms & Conditions" />

                <asp:CustomValidator
                    ID="cvTerms"
                    runat="server"
                    ErrorMessage="Accept Terms & Conditions"
                    ForeColor="Red"
                    OnServerValidate="cvTerms_ServerValidate" />

            </td>
        </tr>

        <!-- Buttons -->
        <tr>
            <td></td>
            <td>

                <asp:Button
                    ID="btnRegister"
                    runat="server"
                    Text="Register"
                    OnClick="btnRegister_Click" />

                &nbsp;

                <asp:Button
                    ID="btnReset"
                    runat="server"
                    Text="Reset"
                    CausesValidation="false"
                    OnClick="btnReset_Click" />

            </td>
        </tr>

    </table>

    <hr />

    <asp:Label
        ID="lblResult"
        runat="server">
    </asp:Label>

</form>

</body>
</html>