<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="project.Admin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>BID Master Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css" />
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css" />
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="assets/vendors/jvectormap/jquery-jvectormap.css" />
    <link rel="stylesheet" href="assets/vendors/flag-icon-css/css/flag-icon.min.css" />
    <link rel="stylesheet" href="assets/vendors/owl-carousel-2/owl.carousel.min.css" />
    <link rel="stylesheet" href="assets/vendors/owl-carousel-2/owl.theme.default.min.css" />
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="assets/css/style.css" />
    <!-- End layout styles -->
    <link rel="shortcut icon" href="assets/images/logo-g.png" />

    <style>
        body {
            background-color: #191c24; /* Dark Blue Background */
            color: #ffffff; /* White text */
            font-family: Arial, sans-serif;
        }

        .dashboard-button {
            display: block;
            width: 10%;
            padding: 15px;
            background-color: #222523; /* Same color as in product.aspx */
            color: #fff;
            text-align: center;
            text-decoration: none;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            margin-bottom: 20px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

            .dashboard-button:hover {
                background-color: #218838; /* Darken the green color on hover */
                transform: scale(1.05); /* Add a slight scale effect on hover */
            }

            .dashboard-button:active {
                transform: scale(0.95); /* Add a scale effect when the button is pressed */
            }

        table {
            border-collapse: collapse;
            width: 80%;
            margin-top: 20px;
            margin-left: 10%;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #191c24;
        }

        h1 {
            color: #ffffff; /* White text */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container-scroller">
                <!-- partial:partials/_sidebar.html -->
                <nav class="sidebar sidebar-offcanvas" id="sidebar">
                    <div class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
                        <a class="sidebar-brand brand-logo" href="Dashboard">
                            <img src="assets/images/logo-.png" alt="logo" /></a>

                    </div>
                    <ul class="nav">

                        <li class="nav-item nav-category">
                            <span class="nav-link">Navigation</span>
                        </li>
                        <li class="nav-item menu-items">
                            <a class="nav-link" href="Dashboard.aspx">
                                <span class="menu-icon">
                                    <i class="mdi mdi-speedometer"></i>
                                </span>
                                <span class="menu-title">Dashboard</span>
                            </a>
                        </li>
                        <li class="nav-item menu-items">
                            <a class="nav-link" href="product.aspx">
                                <span class="menu-icon">
                                    <i class="mdi mdi-speedometer"></i>
                                </span>
                                <span class="menu-title">Product</span>
                            </a>
                        </li>
                        <li class="nav-item menu-items">
                            <a class="nav-link" href="users.aspx">
                                <span class="menu-icon">
                                    <i class="mdi mdi-speedometer"></i>
                                </span>
                                <span class="menu-title">User Info</span>
                            </a>
                        </li>
                        <li class="nav-item menu-items">
                            <a class="nav-link" href="query.aspx">
                                <span class="menu-icon">
                                    <i class="mdi mdi-speedometer"></i>
                                </span>
                                <span class="menu-title">Query</span>
                            </a>
                        </li>

                    </ul>
                </nav>
                <!-- partial -->
                <div class=" page-body-wrapper">
                    <!-- partial:partials/_navbar.html -->
                    <nav class="navbar p-0 fixed-top d-flex flex-row">

                        <div class="navbar-menu-wrapper flex-grow d-flex align-items-stretch">
                            <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                                <span class="mdi mdi-menu"></span>
                            </button>
                            <ul class="navbar-nav w-100">
                                <li class="nav-item w-100"></li>
                            </ul>
                            <ul class="navbar-nav navbar-nav-right">
                                <asp:Button ID="Button1" Class="btn-success" runat="server" Text="Log out" />
                            </ul>

                        </div>
                    </nav>
                    <!-- partial -->
                    <div class="main-panel">
  <div class="content-wrapper">
       
      <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    
           
  </div>
  <!-- content-wrapper ends -->
  <!-- partial:../../partials/_footer.html -->
  <footer class="footer">
    <div class="d-sm-flex justify-content-center justify-content-sm-between">
      <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © bootstrapdash.com 2020</span>
      <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"> Free <a href="https://www.bootstrapdash.com/bootstrap-admin-template/" target="_blank">Bootstrap admin templates</a> from Bootstrapdash.com</span>
    </div>
  </footer>
  <!-- partial -->
</div>
                </div>
                <!-- content-wrapper ends -->
                <!-- partial:../../partials/_footer.html -->
                
                <!-- partial -->
            </div>

            <!-- main-panel ends -->
        </div>
        <!-- page-body-wrapper ends -->
       
            <!-- container-scroller -->
        <!-- plugins:js -->
        <script src="assets/vendors/js/vendor.bundle.base.js"></script>
        <!-- endinject -->
        <!-- Plugin js for this page -->
        <script src="assets/vendors/chart.js/Chart.min.js"></script>
        <script src="assets/vendors/progressbar.js/progressbar.min.js"></script>
        <script src="assets/vendors/jvectormap/jquery-jvectormap.min.js"></script>
        <script src="assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <script src="assets/vendors/owl-carousel-2/owl.carousel.min.js"></script>
        <!-- End plugin js for this page -->
        <!-- inject:js -->
        <script src="assets/js/off-canvas.js"></script>
        <script src="assets/js/hoverable-collapse.js"></script>
        <script src="assets/js/misc.js"></script>
        <script src="assets/js/settings.js"></script>
        <script src="assets/js/todolist.js"></script>
        <!-- endinject -->

        <!-- Custom js for this page -->
        <script src="assets/js/dashboard.js"></script>
        <!-- End custom js for this page -->
       
    </form>
</body>
</html>
