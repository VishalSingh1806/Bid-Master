<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="project.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Carousel Start -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="img/carousel-1.jpg" alt="First slide">
                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                    <div class="p-3" style="max-width: 900px;">
                        <h5 class="text-white text-uppercase">Online Auction</h5>
                        <h1 class="display-1 text-white mb-md-4">The Best place to Buy and Sell</h1>
                        <a href="contact.aspx" class="btn btn-secondary py-md-3 px-md-5 rounded-pill">Contact Us</a>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/6212114.jpg" alt="Second slide">
                 <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
     <div class="p-3" style="max-width: 900px;">
         <h5 class="text-white text-uppercase">Online Auction</h5>
         <h1 class="display-1 text-white mb-md-4">Connect,bid,win, from anywhere,anytime</h1>
         <a href="contact.aspx" class="btn btn-secondary py-md-3 px-md-5 rounded-pill">Contact Us</a>
     </div>
 </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/6212119.jpg" alt="Third slide">
                 <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
     <div class="p-3" style="max-width: 900px;">
         <h5 class="text-white text-uppercase">Online Auction</h5>
         <h1 class="display-1 text-white mb-md-4">Global bidding, diverse items, transparency</h1>
         <a href="contact.aspx" class="btn btn-secondary py-md-3 px-md-5 rounded-pill">Contact Us</a>
     </div>
 </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- Carousel End -->


    <!-- About Start -->
    <div class="container-fluid bg-secondary p-0">
        <div class="row g-0">
            <div class="col-lg-6 py-6 px-5">
                <h1 class="display-5 mb-4">Welcome To <span class="text-primary">BID MASTER</span></h1>
                <p class="mb-8">Online auctions are internet-based platforms where goods or services are sold to the highest bidder. Their popularity stems from their convenience, wide accessibility, and ability to reach a large audience. Participants can engage in bidding from anywhere at any time, eliminating the need for physical presence. The digital nature of these auctions allows for global reach, connecting buyers and sellers from different locations. Transparency is ensured through real-time tracking of bidding progress and seller ratings, fostering trust among participants. With secure payment gateways and buyer protection policies, online auctions provide a secure and reliable platform for conducting transactions..</p>

            </div>
            <div class="col-lg-6">
                <div class="h-100 d-flex flex-column justify-content-center bg-primary p-5">
                    <img src="img/31362.jpg" width='650' height='600' />
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- About End -->


    <!-- Services Start -->
    <div class="container-fluid pt-6 px-5">
        <div class="text-center mx-auto mb-5" style="max-width: 600px;">
            <h1 class="display-5 mb-0">What We Offer</h1>
            <hr class="w-25 mx-auto bg-primary">
        </div>
        <div class="row g-5">
            <div class="col-lg-4 col-md-6">
                <div class="service-item bg-secondary text-center px-5">
                    <div class="d-flex align-items-center justify-content-center bg-primary text-white rounded-circle mx-auto mb-4" style="width: 90px; height: 90px;">
                        <i class="fa fa-user-tie fa-2x"></i>
                    </div>
                    <h3 class="mb-3">Business Research</h3>
                    <p class="mb-0">We encompasses a diverse array of topics aimed at understanding, improving, and innovating various facets of the online auction process.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="service-item bg-secondary text-center px-5">
                    <div class="d-flex align-items-center justify-content-center bg-primary text-white rounded-circle mx-auto mb-4" style="width: 90px; height: 90px;">
                        <i class="fa fa-chart-pie fa-2x"></i>
                    </div>
                    <h3 class="mb-3">Stretagic Planning</h3>
                    <p class="mb-0">Wide accessibility, and ability to reach a large audience and understand market trends, assess internal capabilities.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="service-item bg-secondary text-center px-5">
                    <div class="d-flex align-items-center justify-content-center bg-primary text-white rounded-circle mx-auto mb-4" style="width: 90px; height: 90px;">
                        <i class="fa fa-chart-line fa-2x"></i>
                    </div>
                    <h3 class="mb-3">Market Analysis</h3>
                    <p class="mb-0">By evaluating demand for specific product categories and assessing strengths and weaknesses of competitors, We aim to provide valuable insights.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="service-item bg-secondary text-center px-5">
                    <div class="d-flex align-items-center justify-content-center bg-primary text-white rounded-circle mx-auto mb-4" style="width: 90px; height: 90px;">
                        <i class="fa fa-chart-area fa-2x"></i>
                    </div>
                    <h3 class="mb-3">Financial Analaysis</h3>
                    <p class="mb-0">The goal is to ensure the platform's financial sustainability and the ability to seize growth opportunities while maintaining profitability.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="service-item bg-secondary text-center px-5">
                    <div class="d-flex align-items-center justify-content-center bg-primary text-white rounded-circle mx-auto mb-4" style="width: 90px; height: 90px;">
                        <i class="fa fa-balance-scale fa-2x"></i>
                    </div>
                    <h3 class="mb-3">legal Advisory</h3>
                    <p class="mb-0">Establish protocols for data protection, privacy, and other legal considerations.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="service-item bg-secondary text-center px-5">
                    <div class="d-flex align-items-center justify-content-center bg-primary text-white rounded-circle mx-auto mb-4" style="width: 90px; height: 90px;">
                        <i class="fa fa-house-damage fa-2x"></i>
                    </div>
                    <h3 class="mb-3">
Seller intraction</h3>
                    <p class="mb-0">The final payment for the product is made directly to the seller. And post payment, the bidder can take the delivery of the product.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Services End -->


    <!-- Features Start -->
    <div class="container-fluid py-6 px-5">
        <div class="text-center mx-auto mb-5" style="max-width: 600px;">
            <h1 class="display-5 mb-0">Why Choose Us!!!</h1>
            <hr class="w-25 mx-auto bg-primary">
        </div>
        <div class="row g-5">
            <div class="col-lg-4">
                <div class="row g-5">
                    <div class="col-12">
                        <div class="bg-primary rounded-circle d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                            <i class="fa fa-cubes fs-4 text-white"></i>
                        </div>
                        <h3>Wide Range of Products:</h3>
                        <p class="mb-0">we take pride in offering a diverse and extensive selection to cater to the varied interests and preferences of our users.</p>
                    </div>
                    <div class="col-12">
                        <div class="bg-primary rounded-circle d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                            <i class="fa fa-percent fs-4 text-white"></i>
                        </div>
                        <h3>Access to Seized or Defaulted Vehicles:</h3>
                        <p class="mb-0">Our online auctions site provide access to vehicles from loan defaulters</p>
                    </div>
                    <div class="col-12">
                        <div class="bg-primary rounded-circle d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                            <i class="fa fa-award fs-4 text-white"></i>
                        </div>
                        <h3>Transparent Bidding Process:</h3>
                        <p class="mb-0">Our commitment to transparency ensures that every step of the bidding process is clear and comprehensible</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="d-block bg-primary h-100 text-center">
                    <img class="img-fluid" src="img/resq.jpg" alt="">
                    <div class="p-4">
                        <p class="text-white mb-4">At Bid Master, we bring the thrill of the auction house right to your fingertips. Our platform offers a wide range of products across various categories, from antiques and art to electronics and fashion. Whether you’re a seasoned collector or a first-time bidder, we’re here to provide a seamless and exciting online auction experience.</p>
                        <a href="about.aspx" class="btn btn-light py-md-3 px-md-5 rounded-pill mb-2">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="row g-5">
                    <div class="col-12">
                        <div class="bg-primary rounded-circle d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                            <i class="far fa-smile-beam fs-4 text-white"></i>
                        </div>
                        <h3>Ease of Use: </h3>
                        <p class="mb-0">Online auctions are typically easy to use. You can register, browse listings, and place bids from the comfort of your home.</p>
                    </div>
                    <div class="col-12">
                        <div class="bg-primary rounded-circle d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                            <i class="fa fa-user-tie fs-4 text-white"></i>
                        </div>
                        <h3>Free Bids: </h3>
                        <p class="mb-0">Our commitment to offering free bids reflects our belief in providing equal opportunities to all participants, irrespective of their financial capacity..</p>
                    </div>
                    <div class="col-12">
                        <div class="bg-primary rounded-circle d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                            <i class="fa fa-headset fs-4 text-white"></i>
                        </div>
                        <h3>24/7 Customer Support:</h3>
                        <p class="mb-0">Our commitment to providing round-the-clock assistance underscores our dedication to ensuring your satisfaction.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Features Start -->



    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>

</asp:Content>
