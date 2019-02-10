<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="XEx16ProductList.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ch16: Product List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <header class="jumbotron"><%-- image set in site.css --%></header>
    <main>
        <form id="form1" runat="server">


    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">


        <ItemTemplate>
            <div class="col-sm-4">
                <div class="thumbnail">
                    
                    <asp:Image ID="Image1" runat="server" ImageURL='<%#"~/Images/Products/" + Eval("ImageFile") %>'/>
                    <div class="caption text-center">
                        <asp:Label ID="NameLabel" runat="server"   Text='<%# Eval("Name") %>' />
                    </div>
                </div>
            </div>

        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="" class="row">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="" class="text-center">
                <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                    <Fields>
                        <asp:NumericPagerField />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>

    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Name], [ImageFile] FROM [Products] ORDER BY [Name]"></asp:SqlDataSource>
        </form>
    </main>
</div>
</body>
</html>