<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="HDemo.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Test</title>

    <!--CSS link-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/payment.css" type="text/css" />

    <%--<script>
        $(function () {
            $('[data-toggle="popover"]').popover();

            $('#cvc').on('click', function () {
                if ($('.cvc-preview-container').hasClass('hide')) {
                    $('.cvc-preview-container').removeClass('hide');
                } else {
                    $('.cvc-preview-container').addClass('hide');
                }
            });

        });
    </script>--%>
</head>
<body>
    <div class="container">
        <div id="Checkout" class="inline">
            <h1>Pay Invoice</h1>
            <div class="card-row">
                <span class="visa"></span>
                <span class="mastercard"></span>
                <span class="amex"></span>
                <span class="discover"></span>
            </div>
            <form>
                <div class="form-group">
                    <label for="PaymentAmount">Payment amount</label>
                    <div class="amount-placeholder">
                        <span>$</span>
                        <span>500.00</span>
                    </div>
                </div>
                <div class="form-group" style="margin-top: 10px">
                    <label or="NameOnCard">Name on card</label>
                    <input id="NameOnCard" class="form-control" type="text" maxlength="255" />
                </div>
                <div class="form-group" style="margin-top: 10px">
                    <label for="CreditCardNumber">Card number</label>
                    <input id="CreditCardNumber" class="null card-image form-control" type="text" />
                </div>
                <div class="expiry-date-group form-group" style="margin-top: 10px">
                    <label for="ExpiryDate">Expiry date</label>
                    <input id="ExpiryDate" class="form-control" type="text" placeholder="MM / YY" maxlength="7" />
                </div>
                <div class="security-code-group form-group" style="margin-top: 10px">
                    <label for="SecurityCode">Security code</label>
                    <div class="input-container">
                        <input id="SecurityCode" class="form-control" type="text" placeholder="CVV Number" />
                        <%--<i id="cvc" class="fa fa-question-circle"></i>--%>
                    </div>
                    <%--<div class="cvc-preview-container two-card hide">
                        <div class="amex-cvc-preview"></div>
                        <div class="visa-mc-dis-cvc-preview"></div>
                    </div>--%>
                </div>
                <div class="zip-code-group form-group" style="margin-top: 80px">
                    <label for="ZIPCode">ZIP/Postal code</label>
                    <div class="input-container">
                        <input id="ZIPCode" class="form-control" type="text" maxlength="10" />
                        <%--<a tabindex="0" role="button" data-toggle="popover" data-trigger="focus" data-placement="left" data-content="Enter the ZIP/Postal code for your credit card billing address."><i class="fa fa-question-circle"></i></a>--%>
                    </div>
                </div>
                <!--div>
                    <button d="PayButton" class="btn btn-danger" type="button" href="CheckoutDemo.aspx">
                        <%--<span class="submit-button-lock"></span>--%>
                        <span class="align-middle">CANCLE</span>
                    </button>
                    <button id="PayButton" class="btn btn-block btn-success submit-button" type="submit">
                        <span class="submit-button-lock"></span>
                        <span class="align-middle">Pay $500.00</span>
                    </button>
                </div-->
                <div style="margin-top: 20px">
                    <a class="btn" href="CheckoutDemo.aspx" style="color: white; background-color: orange; border-color: orange; width: 100%"><span class="submit-button-lock"></span>Pay $500.00</a>
                    <a class="btn btn-danger" href="CheckoutDemo.aspx" style="width: 100%; margin-top: 10px">CANCLE</a>
                    <%--<button class="btn btn-danger" type="button" style="width: 100%">CANCLE</button>--%>
                </div>
            </form>
        </div>
    </div>

    <!--Javascript link-->
    <%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>--%>
</body>
</html>
