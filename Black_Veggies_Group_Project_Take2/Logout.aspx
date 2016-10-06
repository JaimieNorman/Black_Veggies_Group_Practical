<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="Black_Veggies_Group_Project_Take2.Logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: auto; margin-right: auto; text-align: center;">
        <asp:Label ID="lblGoodbye" runat="server" Text=""></asp:Label> <br />
        <asp:Button ID="btnLogout" runat="server" Text="Logout" class="btn-warning" OnClick="btnLogout_Click"/>
    </div>
</asp:Content>
