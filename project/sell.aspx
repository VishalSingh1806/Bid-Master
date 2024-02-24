<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="sell.aspx.cs" Inherits="project.sell" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .sell-box {
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 5px;
            background-color: #f3525a; /* Add a background color if needed */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid bg-secondary">
        <div class="row">
            <div class="col-md-4 offset-md-4 py-6 px-5">
                <div class="sell-box">
                    <h1 class="display-5 text-center mb-4">Enter details</h1>
                    <div>
                        <div class="row g-3">
                            <div class="col-12">
                                <div class="form-floating">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                                    <label for="form-floating-2">Product Name</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="This Field is Required" ControlToValidate="Textbox1"
                                        Display="Dynamic"
                                        ForeColor="black"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <asp:DropDownList ID="DropDownList1" CssClass="form-select" runat="server">
                                        <asp:ListItem>ELECTRONICS</asp:ListItem>
                                        <asp:ListItem>VEHICLE</asp:ListItem>
                                        <asp:ListItem Value="REALESTATE">REAL ESTATE</asp:ListItem>
                                        <asp:ListItem>BOOK</asp:ListItem>
                                        <asp:ListItem>FURNITURE</asp:ListItem>
                                        <asp:ListItem>OTHER</asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="form-floating-2">Type</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="This Field is Required" ControlToValidate="DropDownList1"
                                        Display="Dynamic"
                                        ForeColor="black"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                                    <label for="form-floating-2">Image</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field is Required" ControlToValidate="FileUpload1"
                                        Display="Dynamic"
                                        ForeColor="black"></asp:RequiredFieldValidator>
                                </div>
                            </div>


                            <div class="col-12">
                                <div class="form-floating">
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                                    <label for="form-floating-2">Amount</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Field is Required" ControlToValidate="Textbox2"
                                        Display="Dynamic"
                                        ForeColor="black"></asp:RequiredFieldValidator>

                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                                    <label for="form-floating-1">Description</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This Field is Required" ControlToValidate="Textbox3"
                                        Display="Dynamic"
                                        ForeColor="black"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" type="date"></asp:TextBox>
                                    <label for="form-floating-1">Auction End Date</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This Field is Required" ControlToValidate="Textbox4"
                                        Display="Dynamic"
                                        ForeColor="black"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-12 mb-3">
                                <asp:Button ID="Button1" CssClass="btn btn-primary w-100 py-3" runat="server" Text="Submit" OnClick="Button1_Click" />

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
</asp:Content>
