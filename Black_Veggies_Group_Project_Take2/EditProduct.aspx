<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="Black_Veggies_Group_Project_Take2.EditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <asp:Label ID="lblProduct" runat="server" Text="">
                
            </asp:Label>
        </div>
        <table>
        <tr>
            <td>
                Name:
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnName" runat="server" Text="Update" ValidationGroup="1" OnClick="btnName_Click"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Please enter something" ForeColor="Red" ControlToValidate="txtName" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Price:
            </td>
            <td>
                <asp:TextBox ID="txtPrice" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnPrice" runat="server" Text="Update" ValidationGroup="2" OnClick="btnPrice_Click"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Please enter something" ForeColor="Red" ControlToValidate="txtPrice" ValidationGroup="2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Description:
            </td>
            <td>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnDescription" runat="server" Text="Update" ValidationGroup="3" OnClick="btnDescription_Click"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Please enter something" ForeColor="Red" ControlToValidate="txtDescription" ValidationGroup="3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Image URL:
            </td>
            <td>
                <asp:TextBox ID="txtURL" runat="server" TextMode="Url"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnURL" runat="server" Text="Update" ValidationGroup="4" OnClick="btnURL_Click"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Please enter something" ForeColor="Red" ControlToValidate="txtURL" ValidationGroup="4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Stock:
            </td>
            <td>
                <asp:TextBox ID="txtStock" runat="server"  TextMode="Number"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnStock" runat="server" Text="Update" ValidationGroup="5" OnClick="btnStock_Click"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Please enter something" ForeColor="Red" ControlToValidate="txtStock" ValidationGroup="5"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    </div>
    
    
</asp:Content>
