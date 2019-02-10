﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Request.aspx.cs" Inherits="XEx07Reservation.Request" Culture="en-US" UICulture="en-US" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chapter 7: Reservations</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <header class="jumbotron">
            <img src="Images/logo.png" alt="Royal Inns and Suites" />
        </header>

        <main>
            <form id="form1" runat="server" class="form-horizontal">
                
                <h1>Reservation Request</h1>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" DisplayMode="List" HeaderText="* Means that the field is required." />
                <h3>Request data</h3>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Arrival Date</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtArrivalDate" runat="server"
                             CssClass="form-control">mm/dd/yyyy</asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <!-- validator(s) -->
                        <asp:CompareValidator ID="cvArrivalDate" runat="server" Text="Must be a valid date." CssClass="text-danger" 
                  Display="Dynamic" ControlToValidate="txtArrivalDate" Type="Date" Operator="DataTypeCheck">                
                </asp:CompareValidator>
                    </div>

                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Departure Date</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtDepartureDate" runat="server" type="date"
                             CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <!-- validator(s) -->
                        <asp:CompareValidator ID="CompareValidator1" runat="server" Text="Must be a after arrival date." CssClass="text-danger" 
                  Display="Dynamic" ControlToValidate="txtDepartureDate" Type="Date" Operator="DataTypeCheck">                
                </asp:CompareValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Number of people</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlNoOfPeople" runat="server" CssClass="form-control">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Bed type</label>
                    <div class="col-sm-9 bedtype">
                        <asp:RadioButton ID="rdoKing" runat="server" Text="King" GroupName="Bed" />
                        <asp:RadioButton ID="rdoDouble" runat="server" Text="Two Queens" GroupName="Bed" />
                        <asp:RadioButton ID="rdoSingle" runat="server" Text="One Queen" GroupName="Bed" />
                    </div>
                </div>

                <h3>Special requests</h3>
                <div class="form-group">
                    <div class="col-sm-7">
                        <asp:TextBox ID="txtSpecialRequests" runat="server" TextMode="Multiline"
                             Rows="4" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <h3>Contact information</h3>
                <div class="form-group">
                    <label class="col-sm-3 control-label">First Name</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <!-- validator(s) -->
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" CssClass="text-danger" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Last Name</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <!-- validator(s) -->
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName"  CssClass="text-danger" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Email address</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtEmail" runat="server" type="email" 
                            CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <!-- validator(s) -->
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txtEmail"  runat="server" CssClass="text-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">Enter a valid email address.</asp:RegularExpressionValidator>

                    </div>

                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Telephone number</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtPhone" runat="server" type="phone" 
                            CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <!-- validator(s) --> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtPhone"  runat="server" CssClass="text-danger" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" Display="Dynamic">Must be in 999-999-9999 format.</asp:RegularExpressionValidator>

                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Preferred method</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlPreferredMethod" runat="server" CssClass="form-control">
                            <asp:ListItem>Email</asp:ListItem>
                            <asp:ListItem>Telephone</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <%-- Submit and Clear buttons --%>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                             CssClass="btn btn-primary" OnClick="btnSubmit_Click"  />
                        <asp:Button ID="btnClear" runat="server" Text="Clear"
                             CssClass="btn btn-primary" OnClick="btnClear_Click"  />
                    </div>
                </div> 
            
                <%-- message label --%>
                <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-11">
                        <asp:Label ID="lblMessage" runat="server" CssClass="text-info"></asp:Label>
                    </div>
                </div>

            </form>
        </main>

        <footer>
            <p>&copy; <asp:Label ID="lblYear" runat="server"></asp:Label> 
                Royal Inns and Suites</p>
        </footer>
    </div>
    
</body>
</html>