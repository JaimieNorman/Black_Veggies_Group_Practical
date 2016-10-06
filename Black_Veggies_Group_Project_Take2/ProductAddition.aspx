<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProductAddition.aspx.cs" Inherits="Black_Veggies_Group_Project_Take2.ProductAddition" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: auto; margin-right: auto; text-align: center;">
        <h1>Add Product</h1>
    </div>
    <br />
    <table style="margin: 0 auto; padding: 4px;">
         <tr>
             <td>
                 <asp:Label ID="lblProductName" runat="server" Text="Product Name:"></asp:Label>
             </td>
             <td>
                 <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
             </td>
             <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" ForeColor="Red" ControlToValidate="txtProductName"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td>
                 &nbsp; <!-- Blank space -->
             </td>
             <td>    
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Please don't use more than 50 characters!" ForeColor="Red" ControlToValidate="txtProductName" ValidationExpression="^.{1,50}$"></asp:RegularExpressionValidator>  
             </td>
         </tr>
         <tr>
         <td>
             <asp:Label ID="lblPrice" runat="server" Text="Price:"></asp:Label>
         </td>
         <td>
             <asp:TextBox ID="txtPrice" runat="server" style="margin-right: 10px;"></asp:TextBox>
         </td>
         <td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required" ForeColor="Red" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
         </td>
        </tr>
        <tr>
            <td>
                &nbsp; <!-- Blank space -->
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please enter a proper currency value!" ForeColor="Red" ClientIDMode="Static" ControlToValidate="txtPrice" ValidationExpression="^[1-9]\d*(\.\d+)?$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblType" runat="server" Text="Type:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlType" runat="server"></asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required" ForeColor="Red" ControlToValidate="ddlType"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp; <!-- Blank space -->
            </td>
            <td>
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblDescription" runat="server" Text="Description:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required" ForeColor="Red" ControlToValidate="txtDescription"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp; <!-- Blank space -->
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblImage" runat="server" Text="Image Location:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtImage" runat="server" TextMode="Url"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Required" ForeColor="Red" ControlToValidate="txtImage"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp; <!-- Blank space -->
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter a proper URL!" ForeColor="Red" ControlToValidate="txtImage" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblStock" runat="server" Text="Stock:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStock" runat="server" TextMode="SingleLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Required" ForeColor="Red" ControlToValidate="txtStock"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp; <!-- Blank space -->
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Only whole numbers are allowed!" ValidationExpression="^\d+$" ForeColor="Red" ControlToValidate="txtStock"></asp:RegularExpressionValidator>
            </td>          
        </tr>
        <tr>
            <td>

            </td>
            <td colspan="1" style="text-align:center;">
                <asp:Button ID="btnAdd" runat="server" Text="Add Product" OnClick="btnAdd_Click" />
            </td>
        </tr>
        <tr>
            <td>

            </td>
            <td style="text-align: center;">
                <div id="status" runat="server"></div>
            </td>
        </tr>
        </table>
</asp:Content>
