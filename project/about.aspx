<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="project.about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-color: #eee;
        }

        .title {
            margin-bottom: 50px;
            text-transform: uppercase;
        }

        .card-block {
            font-size: 1em;
            position: relative;
            margin: 0;
            padding: 1em;
            border: none;
            border-top: 1px solid rgba(34, 36, 38, .1);
            box-shadow: none;
        }

        .card1 {
            font-size: 1em;
            overflow: hidden;
            padding: 1px;
            border: none;
            border-radius: .28571429rem;
            box-shadow: -20px 20px 0px 0 #d4d4d5, 0 0 0 1px #d4d4d5;
            
        }

        .carousel-indicators li {
            border-radius: 12px;
            width: 12px;
            height: 12px;
            background-color: #404040;
        }

        .carousel-indicators li {
            border-radius: 12px;
            width: 12px;
            height: 12px;
            background-color: #404040;
        }

        .carousel-indicators .active {
            background-color: white;
            max-width: 12px;
            margin: 0 3px;
            height: 12px;
        }

        .carousel-control-prev-icon {
            background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23fff' viewBox='0 0 8 8'%3E%3Cpath d='M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z'/%3E%3C/svg%3E") !important;
        }

        .carousel-control-next-icon {
            background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23fff' viewBox='0 0 8 8'%3E%3Cpath d='M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z'/%3E%3C/svg%3E") !important;
        }

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
   




    <div class="card bg-dark text-white">
  <img src="img/aaaaa.jpg"  class="d-block w-100" alt="First slide">
  <div class="card-img-overlay" aria-readonly="True" aria-multiline="True">
      <div class="p-3" style="max-width: 900px;">
     <h1 class="display-1 text-white mb-md-4">Welcome To <span class="text-primary">BID MASTER</span></h1>
    <p class="md-4"> Welcome to Bid Master, where your journey into the world of online auctions begins! We're thrilled to have you join our vibrant community, and we aim to make your experience with us nothing short of exceptional.

At Bid Master, we've created a user-friendly platform that brings the thrill of bidding right to your fingertips. Whether you're a seasoned bidder or new to the world of online auctions, our website is designed to provide you with a seamless and enjoyable experience.                                                                                                                                                Our commitment to excellence extends beyond the products we offer. We prioritize transparency, ensuring that each item comes with detailed information to empower you in making well-informed decisions. The bidding process is straightforward, and we're here to assist you 24/7, providing support whenever you need it.

Bid Master is not just a platform; it's a community of enthusiastic bidders and sellers coming together to create an engaging marketplace. Thank you for choosing Bid Master as your preferred destination for online auctions. We look forward to being part of your exciting bidding adventures!.</p>
   
  </div>
      </div>
</div>
    </div>
    <!-- About End -->
    <div class="container py-6">

        <!-- Card Start -->
        <div class="card1">
            <div class="row ">

                <div class="col-md-7 px-3 ">
                    <div class="card-block px-6 ">
                        <h4 class="text-primary">Bid Master</h4>
                        <p class="card-text">
                            At Bid Master, discover a seamless online auction experience where transparency meets convenience. Explore a vast array of items and engage in secure bidding from the comfort of your home.
                        </p>
                        <p class="card-text"> With user-friendly features and reliable customer support, Bid Master revolutionizes the way you participate in auctions. Join us today and unlock a world of opportunities.</p>
                        <br>
                    </div>
                </div>
                <!-- Carousel start -->
                <div class="col-md-5">
                    <div id="CarouselTest" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#CarouselTest" data-slide-to="0" class="active"></li>
                            <li data-target="#CarouselTest" data-slide-to="1"></li>
                            <li data-target="#CarouselTest" data-slide-to="2"></li>

                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block" width='550' height='350' src="img/one.jpg" alt="">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block" width='550' height='350' src="img/two.jpg" alt="">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block" width='550' height='350' src="img/three.jpg" alt="">
                            </div>
                            <a class="carousel-control-prev" href="#CarouselTest" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#CarouselTest" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- End of carousel -->
            </div>
        </div>
        <!-- End of card -->

    </div>

    <!-- Team Start -->
    <div class="container-fluid py-6 px-5">
        <div class="text-center mx-auto mb-5" style="max-width: 600px;">
            <h1 class="display-5 mb-0">Our Team Members</h1>
            <hr class="w-25 mx-auto bg-primary">
        </div>
        <div class="row g-5">
            <div class="col-lg-4">
                <div class="team-item position-relative overflow-hidden">
                    <img class="img-fluid w-100" src="img/team-1.jpg" alt="">
                    <div class="team-text w-100 position-absolute top-50 text-center bg-primary p-4">
                        <h3 class="text-white">Full Name</h3>
                        <p class="text-white text-uppercase mb-0">Designation</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="team-item position-relative overflow-hidden">
                    <img class="img-fluid w-100" src="img/team-2.jpg" alt="">
                    <div class="team-text w-100 position-absolute top-50 text-center bg-primary p-4">
                        <h3 class="text-white">Full Name</h3>
                        <p class="text-white text-uppercase mb-0">Designation</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="team-item position-relative overflow-hidden">
                    <img class="img-fluid w-100" src="img/team-3.jpg" alt="">
                    <div class="team-text w-100 position-absolute top-50 text-center bg-primary p-4">
                        <h3 class="text-white">Full Name</h3>
                        <p class="text-white text-uppercase mb-0">Designation</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Team End -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>

</asp:Content>
