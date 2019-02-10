<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Lesson15.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1" id="FormTable">
            <tr>
                <td colspan="3" class="auto-style4">
                    <h2>Get in touch with us...</h2>
                    <br />
                </td>
            </tr>

            <tr>
                <td class="auto-style16">Name</td>
                <td class="auto-style17">
                <asp:TextBox ID="Name" runat="server" Width="269px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style18">&nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style16">E-Mail Address</td>
                <td class="auto-style17">
                <asp:TextBox ID="EmailAddress" runat="server" Width="264px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style18">&nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style16">E-Mail Address (Verify)</td>
                <td class="auto-style17">
                <asp:TextBox ID="verifyEmail" runat="server" Width="262px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="verifyEmail" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style18">&nbsp;</td>
            </tr>

            <tr>
                 <td class="auto-style16">Home Phone Number</td>
                <td class="auto-style17">
                <asp:TextBox ID="HomePhone" runat="server" Width="262px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="HomePhone" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">Business Phone Number</td>
                <td class="auto-style9">
                <asp:TextBox ID="BusinessPhone" runat="server" Width="259px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="BusinessPhone" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style11">Comments</td>
                <td class="auto-style12">
                <asp:TextBox ID="Comments" runat="server" Height="61px" TextMode="MultiLine"
                    Width="566px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Comments" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
               <td class="auto-style14"></td>
                <td class="auto-style3">
                <asp:Button ID="SendButton" runat="server" OnClick="SendButton_Click" Text="Send"
                />
                 </td>
                 <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="3">Please correct the following errors before clicking the send button:<asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
