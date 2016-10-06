<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Black_Veggies_Group_Project_Take2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="position:absolute; top:10%; left:40%;">
            <tr>
                <td class="auto-style1" colspan="2" style="text-align: left;">
                    <h1>
                        User Login:
                    </h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblUsername" runat="server" Text="Username: "></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a username" ForeColor="Red" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter a password" ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>                    
                 </td>
            </tr>
            <tr>
                <td style="text-align: center;" colspan="2">
                    <asp:Button class="btn btn-success" ID="btnUserLogin" runat="server" Text="Login" Width="161px" OnClick="btnUserLogin_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <p>Want to sign in as an admin? Click <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminLogin.aspx">Here</asp:HyperLink></p>
                </td>
            </tr>
        </table>
</asp:Content>
