<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="Black_Veggies_Group_Project_Take2.ManageUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/styleTable.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: auto; margin-right: auto; text-align: center;">
        <h1>Edit User details</h1>
    </div>
    <table style="margin: 0 auto;" class="beta">
            <thead>
                <tr>
                   <th style="margin-right: 5px;">
                        User ID
                    </th>
                    <th>
                        Username
                    </th>
                    <th>
                        Email
                    </th>
                    <th>
                        First Name
                    </th>
                    <th>
                        Surname
                    </th>
                </tr>
            </thead>
            <tbody>
                <asp:Label ID="lblContent" runat="server" Text=""></asp:Label>
            </tbody>
        </table>
    <br />
    <div style="margin-left: auto; margin-right: auto; text-align: center;">
        <asp:DropDownList ID="ddlUser" runat="server"></asp:DropDownList>
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
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" ValidationGroup="group2"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnPassword" runat="server" Text="Update" class="btn-danger" ValidationGroup="group2" OnClick="btnPassword_Click"/>
            </td>
        </tr>
        <tr>
            <td>
                
            </td>
            <td>
                &nbsp;
                <asp:Label ID="lblMatchPasswords" runat="server" Text="" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnEmail" runat="server" Text="Update" class="btn-danger" ValidationGroup="group3" OnClick="btnEmail_Click"/>
            </td>
        </tr>
        <tr>
            <td>

            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter something" ForeColor="Red" ValidationGroup="group3" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblFirstname" runat="server" Text="First Name:" style="margin-right: 4px;"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFirstname" runat="server" TextMode="SingleLine"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnFirstname" runat="server" Text="Update" class="btn-danger" ValidationGroup="group4" OnClick="btnFirstname_Click"/>
            </td>
        </tr>
        <tr>
            <td>

            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter something" ForeColor="Red" ValidationGroup="group4" ControlToValidate="txtFirstname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSurname" runat="server" Text="Surname:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSurname" runat="server" TextMode="SingleLine"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnSurname" runat="server" Text="Update" class="btn-danger" ValidationGroup="group5" OnClick="btnSurname_Click"/>
            </td>
        </tr>
        <tr>
            <td>

            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter something" ForeColor="Red" ValidationGroup="group5" ControlToValidate="txtSurname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        </table>
</asp:Content>
