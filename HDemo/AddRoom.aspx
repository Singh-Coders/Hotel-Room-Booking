<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRoom.aspx.cs" Inherits="HDemo.AddRoom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Add room</title>

    <!--CSS link-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Merriweather&family=Open+Sans&display=swap');

        *,
        *::before,
        *::after {
            box-sizing: border-box;
        }

        body {
            width: 100%;
            height: auto;
            margin: 0;
            /*'https://images.unsplash.com/photo-1514890084135-f16d926f4d03?crop=entropy&cs=tinysrgb&fm=jpg&ixid=MnwzMjM4NDZ8MHwxfHJhbmRvbXx8fHx8fHx8fDE2NTc4NzU4NzE&ixlib=rb-1.2.1&q=80'*/
            background: linear-gradient(rgba(255, 255, 255, 0.2), rgba(255, 255, 255, 0.2)), url("Images/rbfbi1.jfif");
            background-repeat: no-repeat;
            background-size: cover;
            font-family: 'Open Sans', sans-serif;
            color: rgb(255, 255, 255);
        }

        /*Main css start*/
        h1 {
            font-size: 2rem;
            font-family: 'Merriweather', serif;
            text-transform: uppercase;
        }

        h1, p {
            margin: 0.5em auto;
            text-align: center;
        }

        form {
            width: 60vw;
            max-width: 500px;
            min-width: 300px;
            margin: 0 auto;
            padding-bottom: 2em;
        }

        fieldset {
            border: none;
            padding: 1.2rem 0;
        }

        label {
            font-size: 1rem;
            font-weight: bold;
            display: block;
            margin: 0.5rem 0;
        }

        .inline {
            width: unset;
            margin: 0 0.5em 0 0;
            vertical-align: middle;
        }

        input,
        textarea,
        select {
            margin: 7px 0 0 15px;
            width: 100%;
            min-height: 2em;
        }

        select, .room {
            width: 7rem;
            padding: 5px;
            border: none;
            background-color: rgba(255, 255, 255);
            box-shadow: rgba(0,0,0,.1) 0 0 8px;
        }

        select {
            position: relative;
            border-radius: 5px;
            display: inline-block;
        }

        input, textarea {
            border: none;
            border-radius: 5px;
            color: rgba(10, 10, 35, 0.7);
        }

            input[type="submit"] {
                display: block;
                width: 60%;
                margin: 1em auto;
                height: 2em;
                font-size: 1.1rem;
                background-color: orange;
                border-color: white;
                min-width: 300px;
                color: inherit;
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
                            <a class="nav-link active" aria-current="page" href="#"><b>Add Rooms</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="AvlRoomDemo.aspx"><b>Available Rooms</b></a>
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
        <!-- Add Rooms-->
        <div class="addrm" style="margin-top: 200px">
            <h1>Add Room</h1>
            <fieldset>
                <label>
                    Room Type
                    <input runat="server" id="txtrtype" type="text" name="roomtype" required />
                </label>
                <br />

                <label>
                    Number of Room
                    <input runat="server" id="txtroomqty" type="number" name="room" min="1" max="120" required />
                </label>
                <br />

                <label>
                    Room Price
                    <input runat="server" id="txtrprice" type="text" name="roomprice" required />
                </label>
                <br />

                <label>
                    Room Description
                    <input runat="server" id="txtrdescp" type="text" name="roomdescp" required />
                </label>
                <br />

                <label>
                    Room Image
                    <%--<input runat="server" id="txtrimg" type="file" class="form-control" required />--%>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </label>
                <br />
            </fieldset>
            <asp:Button ID="Addroombtn" runat="server" class="arbtn" type="submit" Text="Add room" OnClick="Addroombtn_Click" />
        </div>
        <!-- Main end-->
    </form>

    <!-- Footer start-->
    <footer>
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
