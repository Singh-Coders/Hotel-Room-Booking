<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HPDemo.aspx.cs" Inherits="HDemo.HPDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>HPDemo</title>

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
            <!--a class="navbar-brand" href="HPDemo.aspx"-->
            <div class="navbar-brand">
                <img src="Images/Logo-3.png" alt="Logo" width="200" height="50" class="d-inline-block align-text-top" />
            </div>
            <!--/a-->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link active" aria-current="page" href="#"><b>Home</b></a>
                    <a class="nav-link" href="APDemo.aspx"><b>About</b></a>
                    <a class="nav-link" href="#Gallery"><b>Gallery</b></a>
                    <a class="nav-link" href="AdminDemo.aspx"><b>Admin</b></a>
                    <a class="nav-link" href="CPDemo.aspx"><b>Contact Us</b></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Header end-->

    <!-- Main start-->
    <div class="bg-image" alt="bg-img" style="margin-top: 80px">
        <div class="bg-text">
            <h1>Welcome</h1>
            <p>To, RajMahal Palace Hotel</p>
            <p>Book your stay today and enjoy a relaxing vacation</p>
            <a class="btn" href="SPDemo.aspx" role="button" style="color: orange; background-color: white"><b>Sign up</b></a>
            <a class="btn" href="LPDemo.aspx" role="button" style="color: orange; background-color: white"><b>Sign in</b></a>
        </div>
    </div>

    <!-- Gallery-->
    <div class="w3-container w3-row-padding" id="Gallery" style="background-color: darkgrey;">
        <div>
            <h1>Our Gallery</h1>
        </div>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class="col">
                <div class="card h-100">
                    <img src="Images/roomi1.jpeg" class="card-img-top" alt="Room" />
                    <div class="card-body">
                        <h4 class="card-title">Room</h4>
                        <p class="card-text"></p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="Images/funhalli2.jpg" class="card-img-top" alt="Function-hall" />
                    <div class="card-body">
                        <h4 class="card-title">Function Hall</h4>
                        <p class="card-text"></p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="Images/vparkai1.jpg" class="card-img-top" alt="Parking-area" />
                    <div class="card-body">
                        <h4 class="card-title">Car Parking Area</h4>
                        <p class="card-text"></p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="Images/resti1.jpg" class="card-img-top" alt="Restaurant" />
                    <div class="card-body">
                        <h4 class="card-title">Restaurant</h4>
                        <p class="card-text"></p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="Images/swimi1.jpg" class="card-img-top" alt="Swimming-pool" />
                    <div class="card-body">
                        <h4 class="card-title">Swimming Pool</h4>
                        <p class="card-text"></p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="Images/gardi1.jpg" class="card-img-top" alt="Garden" />
                    <div class="card-body">
                        <h4 class="card-title">Garden </h4>
                        <p class="card-text"></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
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

