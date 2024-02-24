<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegister.aspx.cs" Inherits="project.Admin.AdminRegister" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>BID Master Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- End layout styles -->
   <link rel="shortcut icon" href="assets/images/logo-g.png" />
</head>
<body>
    <form runat="server" method="post">
        <div class="container-scroller">
            <div class="container-fluid page-body-wrapper full-page-wrapper">
                <div class="row w-100 m-0">
                    <div class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
                        <div class="card col-lg-4 mx-auto">
                            <div class="card-body px-5 py-5">
                                <asp:Label ID="lblErrorMsg" runat="server" Text=""></asp:Label>
                                <h3 class="card-title text-left mb-3">Register</h3>
                                <div class="form-group">
                                    
    <label>Full name</label>
    <asp:TextBox ID="name" CssClass="form-control p_input"  runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This Field is Required" ControlToValidate="name"
        Display="Dynamic"
        ForeColor="red"></asp:RequiredFieldValidator>
   
</div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <asp:TextBox ID="email" CssClass="form-control p_input" type="email" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field is Required" ControlToValidate="email"
                                        Display="Dynamic"
                                        ForeColor="red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter a Valid Email"
                                        ControlToValidate="email"
                                        Display="Dynamic"
                                        ForeColor="red"
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <asp:TextBox ID="pass" type="password" CssClass="form-control p_input" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Field is Required" ControlToValidate="pass"
                                        Display="Dynamic"
                                        ForeColor="red"></asp:RequiredFieldValidator>
                                    <i id="eyeIcon" class="bi bi-eye-slash-fill" onclick="togglePassword()"></i>
                                    <asp:RegularExpressionValidator ID="PasswordValidator" runat="server"
                                        ControlToValidate="pass"
                                        ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"
                                        ErrorMessage="Password must be at least 8 characters long, contain at least one uppercase letter, one lowercase letter, one digit, and one special character."
                                        Display="Dynamic"
                                        ForeColor="red">
                                    </asp:RegularExpressionValidator>
                                </div>

                                <div class="form-group">
                                    <label>Confirm Password</label>
                                    <asp:TextBox ID="cpass" type="password" CssClass="form-control p_input" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This Field is Required" ControlToValidate="cpass"
                                        Display="Dynamic"
                                        ForeColor="red">
                                    </asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password & Confirm Password are not Same" ControlToCompare="pass" ControlToValidate="cpass" Display="Dynamic" ForeColor="red"></asp:CompareValidator>
                                </div>
                                <div class="form-group d-flex align-items-center justify-content-between">
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input">
                                            Remember me
                                        </label>
                                    </div>
                                    
                                </div>
                                <div class="text-center">
                                    <asp:Button ID="btnSubmit" runat="server" Text="Sign up" CssClass="btn btn-primary btn-block enter-btn" OnClick="btnSubmit_Click" />
                                </div>
                                <p class="sign-up text-center">Already have an Account?<a href="AdminLogin.aspx"> Log In</a></p>
                                <p class="terms">By creating an account you are accepting our<a href="*"> Terms & Conditions</a></p>
                            </div>
                        </div>
                    </div>
                    <!-- content-wrapper ends -->
                </div>
                <!-- row ends -->
            </div>
            <!-- page-body-wrapper ends -->
        </div>
    </form>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="assets/js/off-canvas.js"></script>
    <script src="assets/js/hoverable-collapse.js"></script>
    <script src="assets/js/misc.js"></script>
    <script src="assets/js/settings.js"></script>
    <script src="assets/js/todolist.js"></script>
    <!-- endinject -->
</body>
</html>
