<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="project.Admin.AdminLogin" %>


<!DOCTYPE html>

<html lang="en">
<head runat="server">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>BID Master Admin</title>

    <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">

    <link rel="stylesheet" href="assets/css/style.css">

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
                                <h3 class="card-title text-left mb-3">Admin Log In</h3>

                                <div class="form-group">
                                    <label>Email</label>
                                    <asp:TextBox ID="email" CssClass="form-control p_input" type="email" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field is Required" ControlToValidate="email"
                                        Display="Dynamic"
                                        ForeColor="red"></asp:RequiredFieldValidator>

                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <asp:TextBox ID="pass" type="password" CssClass="form-control p_input" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Field is Required" ControlToValidate="pass"
                                        Display="Dynamic"
                                        ForeColor="red"></asp:RequiredFieldValidator>


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
                                    <asp:Button ID="btnSubmit" runat="server" Text="Log In" CssClass="btn btn-primary btn-block enter-btn" OnClick="btnSubmit_Click" />
                                </div>
                                <p class="sign-up text-center">Don't have an Account?<a href="AdminRegister.aspx"> Sign Up</a></p>


                                <p class="sign-up text-center"><a href="/home.aspx">Go back</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>


    </form>

    <script src="assets/vendors/js/vendor.bundle.base.js"></script>

    <script src="assets/js/off-canvas.js"></script>
    <script src="assets/js/hoverable-collapse.js"></script>
    <script src="assets/js/misc.js"></script>
    <script src="assets/js/settings.js"></script>
    <script src="assets/js/todolist.js"></script>

</body>
</html>

