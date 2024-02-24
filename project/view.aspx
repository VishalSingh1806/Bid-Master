<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="project.view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .super_container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .single_product {
            background-color: #fff;
            border-radius: 5px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .container-fluid {
            padding: 0;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
            margin: 0 -10px;
        }

        .col-md-4 {
            flex: 0 0 calc(50% - 20px);
            max-width: calc(50% - 20px);
            padding: 0 10px;
        }

        img {
            width: 100%;
            height: auto;
            border-radius: 5px;
            border: 1px solid #ddd;
        }

        h1, h3, h5 {
            color: #333;
        }

        .badge {
            background-color: #F3525A;
            color: #fff;
            font-size: 14px;
            padding: 5px 10px;
            border-radius: 5px;
        }

        .bid-form {
            margin-top: 20px;
        }

        label {
            color: #333;
            font-size: 16px;
        }

        #amount {
            width: 100%;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            margin-bottom: 15px;
            font-size: 16px;
        }



        table {
            background-color: #fff;
            color: #333;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-top: 20px;
            width: 100%;
        }

        th, td {
            text-align: center;
            padding: 15px;
            border-bottom: 1px solid #ddd;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="super_container">
        <div class="single_product">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <asp:Image CssClass="img-fluid" ID="Image1" width='470' height='550' runat="server" />
                    </div>
                    <div class="col-md-6 p-3">
                        <h1>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </h1>
                        <p>
                            <span class="badge">
                                <asp:Label CssClass="text-dark" ID="Label4" runat="server" Text="Label"></asp:Label>
                            </span>
                        </p>
                        <p>
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </p>
                        <h3>Rs.
                           
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </h3>
                        <h5>Auction valid till:
                           
                            <span class="badge">
                                <asp:Label CssClass="text-dark" ID="Label5" runat="server" Text="Label"></asp:Label>
                            </span>
                        </h5>
                        <div class="bid-form">
                            <label for="bidAmount"><b>Enter Your Bid:</b></label>

                            <asp:TextBox ID="amount" placeholder="Enter bid amount" runat="server"></asp:TextBox>
                            <div class="col-12 mb-3">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Field is Required" ControlToValidate="amount"
                                    Display="Dynamic"
                                    ForeColor="black"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <asp:Button ID="Button1" CssClass="btn btn-warning w-100 py-3" runat="server" Text="Place Bid" OnClick="Button1_Click" />
                        <asp:Literal ID="litBidSuccessful" runat="server"></asp:Literal>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container py-5">
        <div class="row">
            <div class="col-md-12">
                <h1 class="mb-3">Total Bids</h1>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Amount</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
