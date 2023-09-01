<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AvlRoomDemo.aspx.cs" Inherits="HDemo.AvlRoomDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Hotel Room</title>

    <!--CSS link-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <style>
        body, h1, h2, h3, h4, h5, h6 {
            background-color: #eee;
            font-family: "Raleway", Arial, Helvetica, sans-serif
        }

        /*Main css start*/
        .rptr {
            background: #fff;
            font-size: 14px; /*segoe ui;*/
            border-collapse: collapse;
            width: 68.5vh;
            margin: 5px;
            float: left;
        }

            .rptr table th {
                background: #fff;
                color: #000000;
                text-align: left;
                font-weight: 100;
                font-size: 25px;
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
                            <a class="nav-link" aria-current="page" href="AddRoom.aspx"><b>Add Rooms</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="#"><b>Available Rooms</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="CustInfoDemo.aspx"><b>Customers</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="BookInfoDemo.aspx"><b>Bookings</b></a>
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
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="rptr" style="margin-top: 80px">
                    <table>
                        <tr>
                            <th colspan="2">
                                <%--<img src="Images/roomi1.jpeg" alt="Room" style="height: 100%; width: 100%" />--%>
                                <image src="Images/<%#Eval("rimg")%>" alt="room img" style="height: 100%; width: 100%"></image>
                            </th>
                        </tr>
                        <tr>
                            <th colspan="2" style="padding: 5px 15px;"><%#Eval("rtype")%></th>
                        </tr>
                        <tr style="color: #808080;">
                            <td>Price</td>
                            <td>₹<%#Eval("rprice")%>/-</td>
                        </tr>
                        <tr>
                            <td>No. of avail rooms</td>
                            <td><%#Eval("avlroom")%></td>
                        </tr>
                        <tr>
                            <td>Description</td>
                            <td><%#Eval("rdesp")%></td>
                        </tr>
                        <%--<tr>
                            <th colspan="2" style="padding: 15px 15px;"><a class="btn" href="BookDemo.aspx?<%#Session["rtype"]=Eval("rtype")%>" role="button" style="color: white; background-color: orange; width: 100%; border-radius: 0;">Book Now</a>
                            </th>
                        </tr>--%>
                    </table>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <!-- Main end -->
    </form>

    <!--Javascript link-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
