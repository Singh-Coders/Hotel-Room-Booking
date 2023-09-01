<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="HDemo.Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo</title>
    <!--codepen slp-->
    <meta name="author" content="Zaur" />
    <meta descryption content="Presentation of website" />
    <meta name="keywords" content="technology, cyber security, software" />
    <meta http-equiv="refresh" content="30" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
    <link rel="stylesheet" href="css/style1.css" />
    <!--hero img txt-->
    <!--link href="css/bootstrap.min.css" rel="stylesheet" /-->
    <!--w3school-->
    <!--link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" /-->
    <!--bootstrap css-->
    <!--link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" /-->
    <style>
        /*w3school*/
        /*body, h1, h2, h3, h4, h5, h6 {
            font-family: "Raleway", Arial, Helvetica, sans-serif
        }*/

        /* The hero image text 
        body, html {
            height: 100%;
        }

        .hero-image {
            /* Use "linear-gradient" to add a darken background effect to the image (photographer.jpg). This will make the text easier to read 
            background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("Images/hpbi1.jpg");
            /* Set a specific height 
            height: 100%;
            /* Position and center the image to scale nicely on all screens 
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
        }

        /* Place text in the middle of the image 
        .hero-text {
            text-align: center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
        }
        /*@media screen and (max-width: 768px) {
            .hero-text {
                font-size: 36px;
            }
        }*/
    </style>
</head>
<body>
    <!--codepen slp-->
    <div class="container">
        <input type="checkbox" id="flip" />
        <div class="cover">
            <div class="front">
                <img src="Images/slpi.png" alt="sp-img" />
                <%--<div class="form-link">
                    <span class="img-text-1">Zaur Suleymanov's
                        <br>
                        new responsive
                        <br>
                        Login/Signup form
                    </span>
                    <span class="img-text-2">Let's get connected</span>
                </div>--%>>
            </div>
            <div class="back">
                <img class="back-img" src="Images/slpi.png" alt="lp-img" />
                <%--<div class="form-link">
                    <span class="img-text-1">Complete miles of journey
                        <br>
                        with Zaur</span>
                    <span class="img-text-2">Let's get started</span>
                </div>--%>
            </div>
        </div>
        <form id="form1" runat="server">
            <div class="form-content">
                <!--sign in page-->
                <div class="login-form">
                    <div class="title">Login</div>
                    <div class="input-groups">
                        <div class="input-box">
                            <i class="fas fa-envelope"></i>
                            <input type="email" class="input" placeholder="Enter your email" required />
                        </div>
                    </div>

                    <div class="input-groups">
                        <div class="input-box">
                            <i class="fa-solid fa-lock"></i>
                            <input type="password" class="input" placeholder="Enter your password" required />
                        </div>
                    </div>

                    <div class="form-link pass">
                        <a href="#">Forget your password?</a>
                    </div>

                    <div class="input-groups">
                        <div class="button input-box">
                            <button>Submit</button>
                            <%--<asp:Button ID="Button1" runat="server" Text="Submit" />
                        </div>
                    </div>
                    <div class="form-link login-text">
                        <span>Don't have an account?
                            <label class="link login-link" for="flip">Signup now</label></span>
                    </div>
                </div>
                <!--sign in page-->
                <!--sign up page-->
                <div class="sign-form">
                    <div class="title">Signup</div>
                    <div class="input-groups">
                        <div class="input-box">
                            <i class="fas fa-user"></i>
                            <input type="text" class="input" placeholder="Enter your name" required />
                        </div>
                    </div>

                    <div class="input-groups">
                        <div class="input-box">
                            <i class="fas fa-envelope"></i>
                            <input type="text" class="input" placeholder="Enter your email" required />
                        </div>
                    </div>

                    <div class="input-groups">
                        <div class="input-box">
                            <i class="fa-solid fa-lock"></i>
                            <input type="password" class="input" placeholder="Enter your password" required />
                        </div>
                    </div>

                    <div class="input-groups">
                        <div class="button input-box">
                            <!-- <input type="submit" value="Submit"> -->
                            <button>Submit</button>
                            <%--<asp:Button ID="Button2" runat="server" Text="Button" />--%>
                        </div>
                    </div>
                    <div class="form-link signup-text">
                        <span>Already have an account?
                            <label class="link login-link" for="flip">Login now </label>
                        </span>
                    </div>
                </div>
                <!--sign up page-->
            </div>
        </form>
    </div>

    <!--hero img txt-->
    <%--<div class="hero-image">
        <div class="hero-text">
            <h1>I am John Doe</h1>
            <p>And I'm a Photographer</p>
        </div>
    </div>--%>

    <!--home page demo clone-->
    <!--<div>
        <img src="Images/hpbi1.jpg" class="img-fluid" alt="bg_img" />
        <div class="carousel-caption d-none d-md-block">
            <h5>Welcome</h5>
            <p>To, RajMahal Palace Hotel</p>
            <div class="w3-container w3-margin-top" id="rooms">
                <h3>Rooms</h3>
                <p>Make yourself at home is our slogan. We offer the best beds in the industry. Sleep well and rest well.</p>
            </div>

            <div class="w3-row-padding">
                <div class="w3-col m3">
                    <label><i class="fa fa-calendar-o"></i>Check In</label>
                    <input class="w3-input w3-border" type="text" placeholder="DD MM YYYY" />
                </div>
                <div class="w3-col m3">
                    <label><i class="fa fa-calendar-o"></i>Check Out</label>
                    <input class="w3-input w3-border" type="text" placeholder="DD MM YYYY" />
                </div>
                <div class="w3-col m2">
                    <label><i class="fa fa-male"></i>Adults</label>
                    <input class="w3-input w3-border" type="number" placeholder="1" />
                </div>
                <div class="w3-col m2">
                    <label><i class="fa fa-child"></i>Kids</label>
                    <input class="w3-input w3-border" type="number" placeholder="0" />
                </div>
                <div class="w3-col m2">
                    <label><i class="fa fa-search"></i>Search</label>
                    <button class="w3-button w3-block w3-black">Search</button>
                </div>
            </div>
        </div>
    </div>-->
    <!--Gallery content-->
    <%--<div class="w3-container w3-row-padding" id="Gallery">
        <!--div class="w3-col l4 12"-->
        <div>
            <h3>Our Gallery</h3>
        </div>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class="col">
                <div class="card h-100">
                    <img src="Images/roomi1.jpeg" class="card-img-top" alt="..." />
                    <div class="card-body">
                        <h5 class="card-title">Room</h5>
                        <p class="card-text"></p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="Images/funhalli2.jpg" class="card-img-top" alt="..." />
                    <div class="card-body">
                        <h5 class="card-title">Function Hall</h5>
                        <p class="card-text"></p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="Images/vparkai1.jpg" class="card-img-top" alt="..." />
                    <div class="card-body">
                        <h5 class="card-title">Car Parking Area</h5>
                        <p class="card-text"></p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="Images/resti1.jpg" class="card-img-top" alt="..." />
                    <div class="card-body">
                        <h5 class="card-title">Restaurant</h5>
                        <p class="card-text"></p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="Images/swimi1.jpg" class="card-img-top" alt="..." />
                    <div class="card-body">
                        <h5 class="card-title">Swimming Pool</h5>
                        <p class="card-text"></p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="Images/gardi1.jpg" class="card-img-top" alt="..." />
                    <div class="card-body">
                        <h5 class="card-title">Garden</h5>
                        <p class="card-text"></p>
                    </div>
                </div>
            </div>
        </div>
        <--</div>-->
    </div>--%>

    <!--chatgpt navbar-->
    <%--<div class="container">
        <div class="row">
            <div class="col-md-12">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <a class="navbar-brand" href="#">Hotel Name</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="#">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Rooms</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Amenities</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Contact Us</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="jumbotron">
                    <h1>Welcome to our hotel</h1>
                    <p>Book your stay today and enjoy a relaxing vacation</p>
                    <a href="#" class="btn btn-primary">Book Now</a>
                </div>
            </div>
        </div>
    </div>--%>




    <%--<script>
        $('form').submit(function () {
            var name = $('#name').val();
            var email = $('#email').val();
            var password = $('#password').val();

            if (name == '' || email == '' || password == '') {
                alert('Please fill in all fields');
                return false;
            }
        });

    </script>--%>
</body>
</html>
8689902959
