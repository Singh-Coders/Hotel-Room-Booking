<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckoutDemo.aspx.cs" Inherits="HDemo.CheckoutDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Check-out</title>

    <!--CSS link-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <style>
        *,
        *::before,
        *::after {
            box-sizing: border-box;
        }

        body, h1, h2, h3, h4, h5, h6 {
            background-color: #eee;
            font-family: "Raleway", Arial, Helvetica, sans-serif;
            width: 100%;
            height: auto;
            margin: 0;
        }

        /*Main css start*/
        .rptr {
            background-color: #e2e0dd;
            font-size: 14px;
            border-collapse: collapse;
        }

            .rptr table th {
                color: #000000;
                text-align: left;
                font-weight: 100;
                font-size: 25px;
                padding: 15px 0;
            }

            .rptr table td {
                padding: 5px 15px;
            }
        /*Main css end*/
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header start-->
        <nav class="navbar navbar-expand-lg fixed-top" style="background-color: white;">
            <div class="container-fluid">
                <div class="navbar-brand">
                    <img src="Images/Logo-3.png" alt="Logo" width="200" height="50" class="d-inline-block align-text-top" />
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="RoomDemo.aspx"><b>Room</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="#"><b>Check-out</b></a>
                        </li>
                    </ul>
                    <span class="d-flex" role="button">
                        <asp:Label ID="userid" runat="server" class="form-control me-2" Style="color: orange; background-color: white; border-color: orange"></asp:Label>
                        <a class="btn" href="HPDemo.aspx" role="button" style="color: orange; background-color: white; border-color: orange"><b>Logout</b></a>
                    </span>
                </div>
            </div>
        </nav>
        <!-- Header end-->

        <!-- Main start-->
        <center>
            <div style="margin-top: 80px;">
                <input runat="server" id="txtcemail1" type="email" style="margin: 25px 0 25px 0; padding: 5px 25px 5px 25px; border-radius: 5px; border-color: orange;" disabled /><br />
                <asp:Button ID="billbtn" runat="server" OnClick="billbtn_Click" Text="Get Bill" Style="color: orange; background-color: white; border-color: orange; border-radius: 10px; margin: 10px 0 10px 0; padding: 5px 25px 5px 25px" />
            </div>

            <div runat="server" id="rptr" class="rptr" style="padding: 100px 0 100px 0;" visible="false">
                <table style="width: 100%;">
                    <tr>
                        <th colspan="2">Guest Information
                        </th>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td>
                            <asp:Label ID="cname" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>E-mail</td>
                        <td>
                            <asp:Label ID="cemail" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Phone No.</td>
                        <td>
                            <asp:Label ID="cphno" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td>
                            <asp:Label ID="cadd" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th colspan="2">Booking Details
                        </th>
                    </tr>
                    <tr>
                        <td>Check-in</td>
                        <td>
                            <asp:Label ID="checkin" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Check-out</td>
                        <td>
                            <asp:Label ID="checkout" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>No. of Adult</td>
                        <td>
                            <asp:Label ID="adultqty" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>No. of Child</td>
                        <td>
                            <asp:Label ID="childqty" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Room Type</td>
                        <td>
                            <asp:Label ID="rtype" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2">Billing Details
                        </th>
                    </tr>
                    <tr>
                        <td>Room Price(of 1 day)</td>
                        <td>₹
                            <asp:Label ID="rprice" runat="server"></asp:Label>/-</td>
                    </tr>
                    <tr>
                        <td>No. of Days(of stay)</td>
                        <td>
                            <asp:Label ID="tdays" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Total Amount</td>
                        <td>₹
                            <asp:Label ID="tamount" runat="server"></asp:Label>/-</td>
                    </tr>
                    <tr>
                        <th colspan="2" style="padding: 15px 15px;">
                            <%--<asp:Button ID="chkoutbtn" runat="server" class="btn" OnClick="chkoutbtn_Click" Text="Check-out" Style="color: orange; background-color: white; border-color: orange; border-radius: 10px;" />--%>
                            <a class="btn" href="PaymentDemo.aspx" role="button" style="color: orange; background-color: white; border-color: orange; width: 100%; border-radius: 5px;">Check-out</a>
                        </th>
                    </tr>
                </table>
            </div>
        </center>
        <!-- Main end-->
    </form>

    <!--Javascript link-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
