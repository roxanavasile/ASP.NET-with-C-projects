<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="XEx02Quotation._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Price Quotation</title>
    <style type="text/css">
        .auto-style1 {
            width: 796px;
            height: 205px;
        }
        .auto-style2 {
            width: 400px;
            height: 54px;
        }
        .auto-style6 {
            height: 27px;
            width: 400px;
        }
        .auto-style13 {
            width: 196px;
            height: 54px;
        }
        .auto-style14 {
            width: 300px;
            width: 196px;
        }
        .auto-style15 {
            width: 196px;
            height: 27px;
        }
        .auto-style16 {
            width: 142px;
            height: 54px;
        }
        .auto-style17 {
            width: 300px;
            width: 142px;
        }
        .auto-style18 {
            width: 142px;
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Price Quotation</h1>
    
    </div>
    <table cellpadding="3" cellspacing="1" class="auto-style1">
        <tr>
            <td class="auto-style16">Sales Price:</td>
            <td class="auto-style13">
                <asp:TextBox ID="txtSalesPrice" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSalesPrice" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtSalesPrice" ErrorMessage="Enter a value between 10 and 1000." ForeColor="Red" MaximumValue="1000" MinimumValue="10"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">Discount Price:</td>
            <td class="auto-style15">
                <asp:TextBox ID="txtDiscountPercent" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDiscountPercent" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtDiscountPercent" ErrorMessage="Enter a value between 10 and 50." ForeColor="Red" MaximumValue="50" MinimumValue="10"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">Discount Amount:</td>
            <td class="auto-style14">
                <asp:Label ID="lblDiscountAmount" runat="server" EnableTheming="True"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">Total Price:</td>
            <td class="auto-style14">
                <asp:Label ID="lblTotalPrice" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
            </td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
    </body>
</html>
