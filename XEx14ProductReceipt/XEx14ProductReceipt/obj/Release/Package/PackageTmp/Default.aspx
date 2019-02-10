﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="XEx14ProductReceipt.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ch14: Product Receipt</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <style>
        .no-padding{
            padding-left:0;
            padding-right:0;
        }

    </style>
</head>
<body>
<div class="container">
    <header class="jumbotron"><%-- image set in site.css --%></header>
    <main>
        <form id="form1" runat="server" class="form-horizontal">

            <div class="row">
                <div class="col-xs-12">
                    <asp:GridView ID="grdProducts" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" 
                        CssClass="table table-bordered table-condensed" OnRowUpdated="grdProducts_RowUpdated">
                        <Columns>
                            <asp:BoundField DataField="ProductID" HeaderText="ID" SortExpression="ProductID"
                                ReadOnly="True">
                                <HeaderStyle CssClass="col-sm-2" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name">
                                <HeaderStyle CssClass="col-sm-6" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="On Hand" SortExpression="OnHand">
                                <EditItemTemplate>
                                    <div class=" col-xs-11 no-padding" >
                                        <asp:TextBox ID="OnHandTemplate" runat="server" Text='<%# Bind("OnHand") %>' CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator ID="OnHandValidator1" runat="server" ErrorMessage="*RequiredField" ControlToValidate="OnHandTemplate" CssClass="text-danger" ValidationGroup="Edit"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                        ControlToValidate="OnHandTemplate"
                                        Operator="DataTypeCheck"
                                        Type="Integer"
                                        ErrorMessage="Must be integer."  CssClass="text-danger">*</asp:CompareValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("OnHand") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle CssClass="col-sm-2 text-right" />
                                <ItemStyle CssClass="text-right" />
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="True" />
                        </Columns>
                        <EmptyDataTemplate>
                            <br />
                        </EmptyDataTemplate>
                        <HeaderStyle CssClass="bg-halloween" />
                        <AlternatingRowStyle CssClass="altRow" />
                        <EditRowStyle CssClass="warning" />
                        <PagerStyle CssClass="bg-halloween" HorizontalAlign="Center" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:HalloweenConnection %>" 
                        SelectCommand="SELECT ProductID, Name, OnHand FROM Products" 
                        UpdateCommand="UPDATE Products SET OnHand = @OnHand WHERE (ProductID = @ProductID)">
                        <UpdateParameters>
                            <asp:Parameter Name="OnHand" />
                            <asp:Parameter Name="ProductID" />
                        </UpdateParameters>
                    </asp:SqlDataSource>    
                </div>  
            </div>

            <div class="row">
                <div class="col-xs-12">
                    <p><asp:Label ID="lblError" runat="server"  
                        CssClass="text-danger" EnableViewState="false"></asp:Label></p>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        HeaderText="Please correct the following errors:" CssClass="text-danger" />
                </div>
            </div>
        </form>
    </main>
</div>
</body>
</html>