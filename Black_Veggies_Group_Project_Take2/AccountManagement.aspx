<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AccountManagement.aspx.cs" Inherits="Black_Veggies_Group_Project_Take2.AccountManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: auto; margin-right: auto; text-align: center; margin-top: 150px;">
        <h1>Register</h1>
    </div>

    <table style="margin: 0 auto;">
        <tr>
            <td>
                Username:
            </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Please enter something" ForeColor="Red" ControlToValidate="txtUsername" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Button ID="btnUsername" runat="server" Text="Update" ValidationGroup="1" OnClick="btnUsername_Click"/>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Email:
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Please enter something" ForeColor="Red" ControlToValidate="txtEmail" ValidationGroup="2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Confirm Email:
            </td>
            <td>
                <asp:TextBox ID="txtConfirmEmail" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Please enter something" ForeColor="Red" ControlToValidate="txtConfirmEmail" ValidationGroup="2"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Button ID="btnEmail" runat="server" Text="Update" ValidationGroup="2" OnClick="btnEmail_Click"/>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Password:
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Please enter something" ForeColor="Red" ControlToValidate="txtPassword" ValidationGroup="3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Confirm Password:
            </td>
            <td>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Please enter something" ForeColor="Red" ControlToValidate="txtConfirmPassword" ValidationGroup="3"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Button ID="btnPassword" runat="server" Text="Update" ValidationGroup="3" OnClick="btnPassword_Click"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label> 
            </td>
        </tr>
    </table>
</asp:Content>
