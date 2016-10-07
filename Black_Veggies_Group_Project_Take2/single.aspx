<%@ Page Language="C#" AutoEventWireup="true" CodeFile="single.aspx.cs" Inherits="single" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Free ASP .NET E-commerce Template by binarytheme</title>

    <!-- Bootstrap  CSS -->
    <link href="css/bootstrap.css" rel="stylesheet" />

    <!--  custom CSS here -->
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
     <!-- Carousel Section -->
    
     <!--End Carousel Section -->
    <!--Products Section -->
    <div class="container">
         
        <div class="row">
            <div class="col-md-8 col-sm-8 mr-top-50">
                <a href="#" >
                <img  src="img/portfolio1.jpg" class="img-responsive mr-botm">
                    </a>
                 <h3>QUICK OVERVIEW OF ITEM</h3>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                </p>
               
            </div>
            <div class="col-md-4 col-sm-4 mr-top-50">
                <h3>Project Details</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                </p>
                <p>                
                    <asp:Label ID="lblQuantity" runat="server" Text="Quantity:"></asp:Label>
                    <asp:TextBox ID="txtQuantity" runat="server" Width="25px"></asp:TextBox> <br />
                    <a href="#" class="btn btn-primary btn-sm role="button" style="margin-top: 10px;">Add to cart</a>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a quantity" ForeColor="Red" ControlToValidate="txtQuantity"></asp:RegularExpressionValidator>
                </p>
            </div>
          
            </div>
       </div>
   <!--End Products Section -->

    <!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>
    </form>
</body>
</html>
