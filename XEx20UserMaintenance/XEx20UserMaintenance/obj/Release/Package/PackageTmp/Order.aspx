<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="XEx20UserMaintenance.Order" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Order Page</h1>
    (All users can access this page)

    <p>
        <%-- LoginView control goes here --%>
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                <h1>You are logged in as anonymous.</h1>
            </AnonymousTemplate>
            <LoggedInTemplate>
                <h1>
                    Hello, <%: Context.User.Identity.GetUserName() %>
                </h1>
            </LoggedInTemplate>
        </asp:LoginView>
    </p>
</asp:Content>