<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookInfoDemo.aspx.cs" Inherits="HDemo.BookInfoDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Booking Info</title>

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

        body, h1, h2, h4, h5, h6 {
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

        /*Footer css start*/
        footer {
            position: static;
            bottom: 0;
            background: #111;
            height: auto;
            width: 100%;
            font-family: "Open Sans";
            padding-top:;
            color: #fff;
        }

        .footer-content {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            text-align: center;
        }

            .footer-content h3 {
                font-size: 1.8rem;
                font-weight: 400;
                text-transform: capitalize;
                line-height: 3rem;
            }

            .footer-content p {
                max-width: 500px;
                margin: 10px auto;
                line-height: 28px;
                font-size: 14px;
            }

        .socials {
            list-style: none;
            display: flex;
            align-items: flex;
            justify-content: center;
            margin: 1rem 0 3rem 0;
        }

            .socials li {
                margin: 0 10px;
            }

            .socials a {
                text-decoration: none;
                color: #fff;
            }

                .socials a i {
                    font-size: 1.1rem;
                    transition: color .4s ease;
                }

                .socials a:hover i {
                    color: aqua;
                }

        .footer-bottom {
            background: #000;
            width: 100%;
            padding: 20px 0;
            text-align: center;
        }

            .footer-bottom p {
                font-size: 14px;
                word-spacing: 2px;
                text-transform: capitalize;
            }

            .footer-bottom span {
                text-transform: uppercase;
                opacity: .4;
                font-weight: 200;
            }
        /*Footer css end*/
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
                            <a class="nav-link" aria-current="page" href="AddRoom.aspx"><b>Add Rooms</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="AvlRoomDemo.aspx"><b>Available Rooms</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="CustInfoDemo.aspx"><b>Customers</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="#"><b>Bookings</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="PmtInfoDemo.aspx"><b>Payments</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="MessageDemo.aspx"><b>Messages</b></a>
                        </li>
                    </ul>
                    <span class="d-flex" role="button">
                        <asp:Label ID="adminid" runat="server" class="form-control me-2" Style="color: orange; background-color: white; border-color: orange"></asp:Label>
                        <a class="btn" href="HPDemo.aspx" role="button" style="color: orange; background-color: white; border-color: orange"><b>Logout</b></a>
                    </span>
                </div>
            </div>
        </nav>
        <!-- Header end-->

        <!-- Main start-->
        <!-- Add Rooms-->
        <center>
            <div runat="server" id="rptr" class="rptr" style="margin-top: 80px; padding: 100px 0 100px 0;">
                <table style="width: 100%;">
                    <tr>
                        <th colspan="9">Bookings Information
                        </th>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td>E-mail</td>
                        <td>Phone No.</td>
                        <td>Address</td>
                        <td>Check-in</td>
                        <td>Check-out</td>
                        <td>Room type</td>
                        <td>No. of Child</td>
                        <td>No. of Child</td>
                    </tr>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <tr style="color: #808080;">
                                <td><%#Eval("cname")%></td>
                                <td><%#Eval("cemail")%></td>
                                <td><%#Eval("cphno")%></td>
                                <td><%#Eval("cadd")%></td>
                                <td><%#Eval("checkin")%></td>
                                <td><%#Eval("checkout")%></td>
                                <td><%#Eval("rtype")%></td>
                                <td><%#Eval("adultqty")%></td>
                                <td><%#Eval("childqty")%></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
        </center>
        <!-- Main end-->
    </form>

    <!-- Footer start-->
    <footer class="fixed-bottom">
        <div class="footer-content">
            <h3>RAJMAHAL PALACE</h3>
            <p>Find Us On</p>
            <ul class="socials">
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
            </ul>
        </div>
        <div class="footer-bottom">
            <p>Copyright &copy; 2023 RMP HOTEL | Designed by <span>Ranapratap & Bharat</span> | All Rights Reserved.</p>
        </div>
    </footer>
    <!-- Footer end-->

    <!--Javascript link-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
