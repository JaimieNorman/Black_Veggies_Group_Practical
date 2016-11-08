<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ManageAdmin.aspx.cs" Inherits="Black_Veggies_Group_Project_Take2.ManageAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/styleTable.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: auto; margin-right: auto; text-align: center; margin-top: 150px;">
        <h1>Edit Admin details</h1>
    </div>
    <table style="margin: 0 auto;" class="beta">
            <thead>
                <tr>
                   <th style="margin-right: 5px;">
                        Admin ID
                    </th>
                    <th>
                        Username
                    </th>
                </tr>
            </thead>
            <tbody>
                <asp:Label ID="lblContent" runat="server" Text=""></asp:Label>
            </tbody>
        </table>
    <br />
    <div style="margin-left: auto; margin-right: auto; text-align: center;">
        <asp:DropDownList ID="ddlAdmin" runat="server"></asp:DropDownList>
    </div>
    <br />

    <table style="margin: 0 auto; padding: 4px;">
            <tr>
                <td>
                    <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnUsername" runat="server" Text="Update" class="btn-danger" ValidationGroup="group1" OnClick="btnUsername_Click"/>
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter something" ForeColor="Red" ValidationGroup="group1" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
            <td>
                <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" style="margin-right: 10px;"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter something" ForeColor="Red" ValidationGroup="group2" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtConfirmPassword" runat="server" ValidationGroup="group2" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnPassword" runat="server" Text="Update" class="btn-danger" ValidationGroup="group2" OnClick="btnPassword_Click"/>
            </td>
        </tr>
        <tr>
            <td>

            </td>
            <td>
                <asp:Label ID="lblConfirmPasswordError" runat="server" Text="" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>
