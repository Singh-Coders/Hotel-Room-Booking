<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentDemo.aspx.cs" Inherits="HDemo.PaymentDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Payment</title>

    <!--CSS link-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/payment.css" type="text/css" />
</head>
<body>
    <!--Payment page-->
    <div class="container">
        <div id="Checkout" class="inline">
            <h1>Pay Invoice</h1>
            <div class="card-row">
                <span class="visa"></span>
                <span class="mastercard"></span>
                <span class="amex"></span>
                <span class="discover"></span>
            </div>
            <form id="form1" runat="server">
                <div class="form-group">
                    <label for="PaymentAmount">Payment amount</label>
                    <div class="amount-placeholder">
                        <span>₹</span>
                        <span>
                            <lable runat="server" id="tamount"></lable>
                        </span>
                    </div>
                </div>
                <div class="form-group" style="margin-top: 10px">
                    <label or="NameOnCard">Name on card</label>
                    <input runat="server" id="nameoncard" class="form-control" type="text" maxlength="255" required disabled />
                </div>
                <div class="form-group" style="margin-top: 10px">
                    <label for="CreditCardNumber">Card number</label>
                    <input id="CreditCardNumber" class="null card-image form-control" type="text" minlength="16" maxlength="16" required />
                </div>
                <div class="expiry-date-group form-group" style="margin-top: 10px">
                    <label for="ExpiryDate">Expiry date</label>
                    <input id="ExpiryDate" class="form-control" type="text" minlength="5" maxlength="7" placeholder="MM / YY" required />
                </div>
                <div class="security-code-group form-group" style="margin-top: 10px">
                    <label for="SecurityCode">Security code</label>
                    <div class="input-container">
                        <input id="SecurityCode" class="form-control" type="text" minlength="3" maxlength="3" placeholder="CVV Number" required />
                    </div>
                </div>
                <div class="zip-code-group form-group" style="margin-top: 80px">
                    <label for="ZIPCode">ZIP/Postal code</label>
                    <div class="input-container">
                        <input id="ZIPCode" class="form-control" type="text" minlength="6" maxlength="6" required />
                    </div>
                </div>
                <div style="margin-top: 20px">
                    <%--<a class="btn" href="CheckoutDemo.aspx" style="color: white; background-color: orange; border-color: orange; width: 100%"><span class="submit-button-lock"></span>Pay ₹<lable runat="server" id="tamount1"></lable>.00</a>--%>
                    <asp:Button ID="tamtbtn" runat="server" class="btn" OnClick="tamtbtn_Click" Style="color: white; background-color: orange; border-color: orange; width: 100%; margin-top: 10px"></asp:Button>
                    <a class="btn btn-danger" href="CheckoutDemo.aspx" style="width: 100%; margin-top: 10px">CANCEL</a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
