<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="reset.aspx.cs" Inherits="project.reset" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     

  <asp:PlaceHolder ID="emailErrMsg" runat="server">
     <div class="alert alert-danger alert-dismissible fade show" role="alert">
         <strong>Error!</strong> Either your account is not associated with us or you have entered an invalid email address.
         <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
     </div>
 </asp:PlaceHolder>

 <!-- OTP Sent Message -->
 <asp:PlaceHolder ID="otpSentMsg" runat="server">
     <div class="alert alert-success alert-dismissible fade show" role="alert">
         <strong>Success!</strong> OTP is sent to <strong><asp:Label ID="emailLabelMsg" runat="server" Text="example@domain.com"></asp:Label></strong>. Enter OTP to verify.
         <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
     </div>
 </asp:PlaceHolder>

 <!-- Incorrect OTP Message -->
 <asp:PlaceHolder ID="invOtpMsg" runat="server">
     <div class="alert alert-danger alert-dismissible fade show" role="alert">
         <strong>Error!</strong> Invalid OTP or OTP may be expired.
         <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
     </div>
 </asp:PlaceHolder>

 <!-- Password Changed Message -->
 <asp:PlaceHolder ID="passChangedMsg" runat="server">
     <div class="alert alert-success alert-dismissible fade show" role="alert">
         <strong>Success!</strong> Password is successfully changed. Please login with new password.
         <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
     </div>
 </asp:PlaceHolder>
 

 <!-- Body Contents -->
 <div class="container my-5">
     <div class="col-md-12 offset-md-4 px-2 ">
     <h1 class="mb-4">Forgot Password</h1>

     <!-- Email Entry Section -->
     <asp:PlaceHolder ID="emailEntry" runat="server">
         <div class="col-md-6 slide-in fade-out">
             <div class="mb-3 row">
                 <asp:Label CssClass="col-sm-4 col-form-label" ID="Label1" runat="server" Text="Email Address"></asp:Label>
                 <div class="col-sm-8">
                     <asp:TextBox CssClass="form-control" ID="email" runat="server" placeholder="johndoe@example.com"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" ForeColor="Red" ControlToValidate="email"></asp:RequiredFieldValidator>
                 </div>
             </div>
             <asp:Button CssClass="btn btn-primary" ID="submitBtn" runat="server" Text="Submit" OnClick="submitBtn_Click" />
         </div>
     </asp:PlaceHolder>

     <!-- OTP Entry Section -->
     <asp:PlaceHolder ID="enterOTP" runat="server">
         <div class="col-md-6">
             <div class="mb-3 row">
                 <asp:Label CssClass="col-sm-4 col-form-label" ID="Label2" runat="server" Text="OTP"></asp:Label>
                 <div class="col-sm-8">
                     <asp:TextBox CssClass="form-control" ID="newOTP" runat="server" placeholder="XXXXXX" MaxLength="6" TextMode="Number"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required" ForeColor="Red" ControlToValidate="newOTP"></asp:RequiredFieldValidator>
                 </div>
             </div>
             <asp:Button CssClass="btn btn-primary" ID="verifyBtn" runat="server" Text="Verify" OnClick="verifyBtn_Click" />
         </div>
     </asp:PlaceHolder>

     <!-- Password Change Section -->
     <asp:PlaceHolder ID="changePassword" runat="server">
         <div class="mb-3 row">
             <asp:Label CssClass="col-sm-4 col-form-label" ID="Label4" runat="server" Text="Password"></asp:Label>
             <div class="col-4">
                 <asp:TextBox CssClass="form-control" ID="pass" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
             
             <asp:RegularExpressionValidator ID="PasswordValidator" runat="server"
    ControlToValidate="pass"
    ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"
    ErrorMessage="Password must be at least 8 characters long, contain at least one uppercase letter, one lowercase letter, one digit, and one special character."
    Display="Dynamic"
    ForeColor="Red">
</asp:RegularExpressionValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required" ControlToValidate="pass" ForeColor="Red"></asp:RequiredFieldValidator>
         </div>
             </div>
         <div class="mb-3 row">
             <asp:Label CssClass="col-sm-4 col-form-label" ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
             <div class="col-4">
                 <asp:TextBox CssClass="form-control" ID="cpass" runat="server" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
             
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required" ControlToValidate="cpass" ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password does not match" ControlToCompare="pass" ControlToValidate="cpass" ForeColor="Red"></asp:CompareValidator>
         </div>
             </div>
         <asp:Button CssClass="btn btn-primary" ID="changeBtn" runat="server" Text="Confirm" OnClick="changeBtn_Click" />
     </asp:PlaceHolder>
         </div>
 </div>

</asp:Content>
