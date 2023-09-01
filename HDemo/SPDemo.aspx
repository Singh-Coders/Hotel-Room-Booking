<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SPDemo.aspx.cs" Inherits="HDemo.SPDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign-Up Page</title>
    <meta name="author" content="Zaur" />
    <meta descryption content="Presentation of website" />
    <meta name="keywords" content="technology, cyber security, software" />
    <meta http-equiv="refresh" content="30" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
    <link rel="stylesheet" href="css/slpage.css" type="text/css" />
</head>
<body>
    <div class="container">
        <input type="checkbox" id="flip" />
        <div class="cover">
            <div class="front">
                <img src="Images/slpi.png" alt="sp-img" />
            </div>
            <div class="back">
                <img class="back-img" src="Images/slpi.png" alt="lp-img" />
            </div>
        </div>
        <form id="form1" runat="server">
            <div class="form-content">
                <!--sign up page-->
                <div class="sign-form">
                    <div class="title">Signup</div>
                    <div class="input-groups">
                        <div class="input-box">
                            <i class="fas fa-user"></i>
                            <input type="text" class="input" placeholder="Enter your name" required runat="server" id="txtcnm" />
                        </div>
                    </div>

                    <div class="input-groups">
                        <div class="input-box">
                            <i class="fas fa-envelope"></i>
                            <input type="email" class="input" placeholder="Enter your email" required runat="server" id="txtcemail" />
                        </div>
                    </div>

                    <div class="input-groups">
                        <div class="input-box">
                            <i class="fa-solid fa-lock"></i>
                            <input type="password" class="input" placeholder="Enter your password" required runat="server" id="txtcpwd" />
                        </div>
                    </div>

                    <div class="input-groups">
                        <div class="button input-box">
                            <%--<button>Submit</button>--%>
                            <asp:Button ID="subtn" runat="server" Text="Register" OnClick="subtn_Click" Style="width: 100%; height: 100%; position: relative; z-index: 1; transition: ease-out 0.3s; color: #f8e1b7; background: linear-gradient(90deg, rgba(41,33,20,1) 0%, rgba(68,50,18,1) 50%, rgba(199,159,87,1) 100%); border: none; font-weight: 500; font-size: 17px; cursor: pointer; border-radius: 6px;" />
                        </div>
                    </div>
                    <div class="form-link signup-text">
                        <span>Already have an account?
                            <label class="link login-link" for="flip"><a href="LPDemo.aspx" style="color: orange">Login now</a></label>
                        </span>
                    </div>
                </div>
            </div>
        </form>
    </div>

    <script type="text/javascript" lang="javascript">
        function geekAlert() {
            alert("Registration Successful !");
        }
        </script>
</body>
</html>
