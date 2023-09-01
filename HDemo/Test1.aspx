<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test1.aspx.cs" Inherits="HDemo.Test1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Test 1</title>

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
            background: linear-gradient(rgba(255, 255, 255, 0.2), rgba(255, 255, 255, 0.2)), url('https://images.unsplash.com/photo-1514890084135-f16d926f4d03?crop=entropy&cs=tinysrgb&fm=jpg&ixid=MnwzMjM4NDZ8MHwxfHJhbmRvbXx8fHx8fHx8fDE2NTc4NzU4NzE&ixlib=rb-1.2.1&q=80');
            background-repeat: no-repeat;
            background-size: cover;
            font-family: 'Open Sans', sans-serif;
            font-size: 1.2rem;
            line-height: 1.618;
            color: rgb(255, 255, 255);
        }

        h1 {
            font-size: 2rem;
            font-family: 'Merriweather', serif;
            text-transform: uppercase;
        }

        h1, p {
            margin: 1em auto;
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
                background-color: #3b3b4f;
                border-color: white;
                min-width: 300px;
                color: inherit;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header start-->
        <nav class="navbar navbar-expand-lg fixed-top" style="background-color: white;">
            <div class="container-fluid">
                <!--a class="navbar-brand" href="HPDemo.aspx"-->
                <div class="navbar-brand">
                    <img src="Images/Logo-3.png" alt="Logo" width="200" height="50" class="d-inline-block align-text-top" />
                </div>
                <!--/a-->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#"><b>Room</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><b>Demo</b></a>
                        </li>
                    </ul>
                    <!--form id="form1" unat="server" class="d-flex" role="button"-->
                    <span class="d-flex" role="button">
                        <asp:Label ID="userid" runat="server" class="form-control me-2" Style="color: orange; background-color: white; border-color: orange"></asp:Label>
                        <a class="btn" href="HPDemo.aspx" role="button" style="color: orange; background-color: white; border-color: orange"><b>Logout</b></a>
                    </span>
                    <!--/form-->
                </div>
            </div>
        </nav>
        <!-- Header end-->

        <!-- Main start -->
        <%--<div style="color: orange; box-sizing: content-box; border: 2px solid #dbaa52; border-radius: 10px; margin: 10% 25%">
            <div class="row">
                <p style="margin: 4px auto auto 5px; font-size: large">Guest Information</p>
            </div>
            <hr style="margin: 0px 5px auto 5px; border-color: orange" />
            <div class="row" style="margin: 15px auto 0px 5px;">
                <div class="col-md-2 w3-padding">
                    <div class="row w3-row-padding">
                        <label>Full Name</label>
                    </div>
                </div>
                <div class="col-md-2 w3-padding">
                    <div class="row w3-row-padding">
                        <input type="text" />
                    </div>
                </div>
            </div>
            <div class="row" style="margin: 15px auto 0px 5px;">
                <div class="col-md-2 w3-padding">
                    <div class="row w3-row-padding">
                        <label>E-mail</label>
                    </div>
                </div>
                <div class="col-md-2 w3-padding">
                    <div class="row w3-row-padding">
                        <input type="text" />
                    </div>
                </div>
            </div>
            <div class="row" style="margin: 15px auto 0px 5px;">
                <div class="col-md-2 w3-padding">
                    <div class="row w3-row-padding">
                        <label>Phone No</label>
                    </div>
                </div>
                <div class="col-md-2 w3-padding">
                    <div class="row w3-row-padding">
                        <input type="text" />
                    </div>
                </div>
            </div>
            <div class="row" style="margin: 15px auto 0px 5px;">
                <div class="col-md-2 w3-padding">
                    <div class="row w3-row-padding">
                        <label>Address</label>
                    </div>
                </div>
                <div class="col-md-2 w3-padding">
                    <div class="row w3-row-padding">
                        <input type="text" />
                    </div>
                </div>
            </div>
        </div>--%>
        <div style="margin-top: 80px">
            <h1>Booking Online Now</h1>
            <p>Please fill out this form with the required information</p>
            <fieldset>
                <label>
                    Full Name 
                    <input type="text" name="fullname" required />
                </label>
                <label>
                    Email
                    <input type="email" name="email" required />
                </label>
                <label>
                    Phone Number 
                    <input type="tel" name="phone" required />
                </label>
                <label>
                    Address 
                    <input type="text" name="address" required />
                </label>
                <label>
                    Check-in Date
                    <input type="date" name="check-in-date" required />
                </label>
                <label>
                    Check-out Date
                    <input type="date" name="check-out-date" required />
                </label>
            </fieldset>
            <fieldset>
                <label>
                    Room Type
                    <input type="text" name="accomdtype" required />
                    <%--<select name="accomodation">
                        <option value="">(select one)</option>
                        <option value="1">Hotel</option>
                        <option value="2">Self-Catered</option>
                        <option value="3">Hostel</option>
                        <option value="4">Guesthouse</option>
                    </select>--%>
                </label>
                <br>

                <label>
                    Number of Adult
                    <input type="number" name="age" min="1" max="120" class="room" /><%--<br>--%>
                    <%--<br>--%>
                    <%--<label>
                        Room Type
                        <label>
                            <input type="radio" name="room-type" class="inline" />
                            Single Room</label>
                        <label>
                            <input type="radio" name="room-type" class="inline" />
                            Double Room</label>
                        <label>
                            <input type="radio" name="room-type" class="inline" />
                            Triple Room</label>
                        <label>
                            <input type="radio" name="room-type" class="inline" />
                            Quad Bedroom</label>
                    </label>--%>
                </label>
                <br>

                <label>
                    Number of Child
                    <input type="number" name="age" min="1" max="120" class="room" />
                </label>
                <br>

                <%--<label>
                    Additional Requests
                    <textarea name="additional" rows="5" cols="30" placeholder="Your message ..."></textarea>
                </label>--%>
            </fieldset>
            <%--<input type="submit" value="Submit" style="color: white; background-color: orange;"/>--%>
            <asp:Button ID="bbtn1" runat="server" type="submit" Text="Book" Style="color: white; background-color: orange;" />
        </div>
        <!-- Main end -->
    </form>

    <!--Javascript link-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
