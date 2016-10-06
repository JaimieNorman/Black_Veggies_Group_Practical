<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Black_Veggies_Group_Project_Take2.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--End Nav Section -->
     <!-- Carousel Section -->
    <div id="main-Carousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#main-Carousel" data-slide-to="0" class="active"></li>
            <li data-target="#main-Carousel" data-slide-to="1" class=""></li>
            <li data-target="#main-Carousel" data-slide-to="2" class=""></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" ></div>
                <div class="carousel-caption">
                    <div class=" col-md-6 col-sm-6">
    <div class="thumbnail">
      <div class="caption">
        <h3>Weekly Specials</h3>
        <p>Save and check our weekly specials!</p>
        <p><a href="./Specials.aspx" class="btn btn-primary" role="button">SAVE NOW</a></p>
      </div>
    </div>
  </div>
                     <div class=" col-md-6 col-sm-6">
                        <h1>
                            Want to party even harder? Check out our weekly special deals!
                        </h1>
                      </div>
                </div>
            </div>
            <div class="item">
                <div class="fill"></div>
                <div class="carousel-caption">
                    <h1>Can't find what you're looking for?
                        <br />
                        Make a special request now!
                        <br />
                         <a href="./SpecialRequest.aspx">
                            Special request form
                         </a>
                    </h1>
                </div>
            </div>
            <div class="item">
                <div class="fill"></div>
                <div class="carousel-caption">
                    <h1>Best online Alcohol site ever! 
                        <br />

                      Party hard
                        <br />
                        Drink Responsibly
                        <br />
                         <a href="#">
                            Start shopping now!
                         </a>
                    </h1>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#main-Carousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#main-Carousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </div>
     <!--End Carousel Section -->

    <!--Products Section -->
    <div class="container">

              <div class="row">
            <div class="row">
                <asp:Label ID="lblProducts" runat="server" Text=""></asp:Label>
                
                
                
            
              
                
            
</div>
        </div>

    </div>
   <!--End Products Section -->
</asp:Content>
