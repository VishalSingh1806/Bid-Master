<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="project.signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script>
        function togglePassword() {
            var passwordInput = document.getElementById('<%= pass.ClientID %>');
            var eyeIcon = document.getElementById('eyeIcon');

            if (passwordInput.type === "password") {
                passwordInput.type = "text";
                eyeIcon.classList.remove('bi-eye-slash-fill');
                eyeIcon.classList.add('bi-eye-fill');
            } else {
                passwordInput.type = "password";
                eyeIcon.classList.remove('bi-eye-fill');
                eyeIcon.classList.add('bi-eye-slash-fill');
            }
        }
    </script>
    <style>
        .signup-box {
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 5px;
            background-color: #f3525a; /* Add a background color if needed */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .password-container {
            position: relative;
        }

            .password-container i {
                position: absolute;
                top: 50%;
                right: 10px;
                transform: translateY(-50%);
                cursor: pointer;
            }
    </style>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid bg-secondary">
        <div class="row">
            <div class="col-md-4 offset-md-4 py-6 px-5">
                <div class="signup-box">

                    <h1 class="display-5 text-center mb-4">Sign up</h1>
                    <div>
                        <asp:Label ID="lblErrorMsg" runat="server" class="text-center" Text=""></asp:Label>
                        <div>
                            <div class="row g-3">
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="name" CssClass="form-control" runat="server"></asp:TextBox>
                                        <label for="form-floating-2">Full Name</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field is Required" ControlToValidate="name"
                                            Display="Dynamic"
                                            ForeColor="black"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="NameValidator" runat="server"
                                            ControlToValidate="name"
                                            ValidationExpression="[a-zA-Z ]+"
                                            ErrorMessage="Invalid name format. Only alphabets and space are allowed."
                                            Display="Dynamic"
                                            ForeColor="Black" />
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="email" CssClass="form-control" runat="server"></asp:TextBox>
                                        <label for="form-floating-2">Email address</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Field is Required" ControlToValidate="email"
                                            Display="Dynamic"
                                            ForeColor="black"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter a Valid Email"
                                            ControlToValidate="email"
                                            Display="Dynamic"
                                            ForeColor="Black"
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="number" runat="server" CssClass="form-control" MaxLength="10" onkeydown="return (!((event.keyCode>=65 && event.keyCode <= 95) || event.keyCode >= 106) && event.keyCode!=32);"></asp:TextBox>
                                        <label for="form-floating-1">Phone Number</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This Field is Required"
                                            ControlToValidate="number"
                                            Display="Dynamic"
                                            ForeColor="Black"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-12 password-container">
                                    <div class="form-floating">
                                        <asp:TextBox ID="pass" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                        <label for="form-floating-1">Password</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This Field is Required" ControlToValidate="pass"
                                            Display="Dynamic"
                                            ForeColor="black"></asp:RequiredFieldValidator>
                                        <i id="eyeIcon" class="bi bi-eye-slash-fill" onclick="togglePassword()"></i>
                                    </div>


                                    <asp:RegularExpressionValidator ID="PasswordValidator" runat="server"
                                        ControlToValidate="pass"
                                        ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"
                                        ErrorMessage="Password must be at least 8 characters long, contain at least one uppercase letter, one lowercase letter, one digit, and one special character."
                                        Display="Dynamic"
                                        ForeColor="Black">
                                    </asp:RegularExpressionValidator>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="cpass" runat="server" CssClass="form-control"></asp:TextBox>
                                        <label for="form-floating-1">Confirm Password</label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This Field is Required" ControlToValidate="cpass"
                                            Display="Dynamic"
                                            ForeColor="black">
</asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password & Confirm Password are not Same" ControlToCompare="pass" ControlToValidate="cpass" Display="Dynamic" ForeColor="Black"></asp:CompareValidator>
                                    </div>
                                </div>
                                <div class="col-12 mb-3">
                                    <asp:Button ID="Button1" CssClass="btn btn-primary w-100 py-3" OnClick="Button1_Click" runat="server" Text="Sign Up" />
                                </div>
                                <div class="col-12 text-center">
                                    <asp:HyperLink ID="HyperLink2" NavigateUrl="login.aspx" CssClass="text-center" runat="server">Already Have An Account</asp:HyperLink>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
