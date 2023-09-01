<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDemo.aspx.cs" Inherits="HDemo.AdminDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Admin Login</title>

    <!--CSS link-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <style>
        body, h1, h2, h3, h4, h5, h6 {
            font-family: "Raleway", Arial, Helvetica, sans-serif
        }

        /*Main css start*/
        body, html {
            height: 100%;
        }
        /* The bg image */
        .bg-image {
            /* Use "linear-gradient" to add a darken background effect to the image (photographer.jpg). This will make the text easier to read */
            background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("Images/hpbi1.jpg");
            /* Set a specific height */
            height: 140%;
            /* Position and center the image to scale nicely on all screens */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
        }

        /* Place text in the middle of the image */
        .bg-text {
            text-align: center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
        }

        /*Admin login*/
        * {
            box-sizing: border-box;
        }

        /* Style the title */
        .title {
            position: relative;
            font-size: 2rem;
            font-weight: 500;
            color: #333;
        }

            .title::before {
                content: '';
                position: absolute;
                height: 3px;
                width: 25px;
                background: orange;
                left: 0;
                bottom: 0;
            }

        /* Style the input container */
        .input-container {
            display: flex;
            width: 100%;
            margin-bottom: 15px;
        }

        /* Style the form icons */
        .icon {
            padding: 10px;
            background: orange;
            color: white;
            min-width: 50px;
            text-align: center;
        }

        /* Style the input fields */
        .input-field {
            width: 100%;
            padding: 10px;
            outline: none;
        }

            .input-field:focus {
                border: 2px solid orange;
            }

        /* Set a style for the submit button dodgerblue*/
        .albtn {
            background-color: orange;
            color: white;
            padding: 15px 20px;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
        }

            .albtn:hover {
                opacity: 1;
            }
        /*Main css end*/

        /*Footer css start*/
        body {
            background: #fcfcfc;
        }

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
    <!-- Header start-->
    <nav class="navbar navbar-expand-lg fixed-top" style="background-color: white;">
        <div class="container-fluid">
            <div class="navbar-brand">
                <img src="Images/Logo-3.png" alt="Logo" width="200" height="50" class="d-inline-block align-text-top" />
            </div>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link" aria-current="page" href="HPDemo.aspx"><b>Home</b></a>
                    <a class="nav-link" href="APDemo.aspx"><b>About</b></a>
                    <a class="nav-link active" href="#"><b>Admin</b></a>
                    <a class="nav-link" href="CPDemo.aspx"><b>Contact Us</b></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Header end-->

    <!-- Main start-->
    <div class="bg-image" alt="bg-img" style="margin-top: 80px">
        <div class="bg-text">
            <h1>RajMahal Palace</h1>
            <h4>Luxury and Royal Hotel</h4>
        </div>
    </div>

    <!-- Admin Login-->
    <form id="form1" runat="server">
        <div lass="container" style="margin: 50px 20px 50px 20px">
            <h2 class="title">Admin Login</h2>
            <div class="input-container">
                <i class="fa fa-envelope icon"></i>
                <input runat="server" id="txtademail" class="input-field" type="email" placeholder="E-mail" required />
            </div>
            <div class="input-container">
                <i class="fa fa-key icon"></i>
                <input runat="server" id="txtadpwd" class="input-field" type="password" placeholder="Password" required />
            </div>
            <asp:Button ID="adminbtn" runat="server" class="albtn" type="submit" Text="Register" OnClick="adminbtn_Click" />
        </div>
    </form>
    <!-- Main end-->

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
