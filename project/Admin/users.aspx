<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="project.Admin.users" %>

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
                <div class="container-fluid page-body-wrapper">
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
                            <div class="col-lg-12 grid-margin stretch-card">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">User Table</h4>

                                        <div class="table-responsive">
                                            <table class="table table-striped">
                                                <thead>
                                                    <tr>
                                                        <th>Id</th>
                                                        <th>Name</th>
                                                        <th>Email</th>
                                                        <th>Number</th>
                                                        <th>Active Status</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
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

    </form>
</body>
</html>
