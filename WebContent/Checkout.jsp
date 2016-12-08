<html>
<head>
<title>Registration Page</title>
<link rel="stylesheet" type="text/css" href="css/style3.css" />
<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
 <link rel="stylesheet" href="css/checkout_css.css" type="text/css">
</head>
<body style="margin: 0px;"	background="http://www.macwallhd.com/wp-content/Wallpapers/20121028/Wallpaper%20Vacation%20Silhouette%20Island%20Seychelles888.jpg">
 <section class="credit-card visa gr-visa">
        <div class="logo">Secure</div> 
       
       <div id="checkout" class="animate form">
                            <form  action="PropertyCheckoutServlet" method="post" >
            <h2>Payment Details</h2>

            <ul class="inputs">
                <li>
                    <label for="card_number"  data-icon = "no">Card Number</label>
                    <input id="card_number"  type="text" name="card_number" pattern="[0-9]{13,16}" type="password" placeholder="xxxx xxxx xxxx xxxx" class="full gr-input" required />
                </li>
                
                <li>
                    <label for="card_name"data-icon = "na">Name on Card</label>
                    <input id="card_name" type="text" name="card_name"  placeholder="rahul" class="full gr-input" required />
                </li>
                
                <li class="expire last">
                    <label for="expire_month"data-icon="em" >Expiry Month</label>
                    <input id="expire_month" data-icon="em" type="text" name="expire_month" placeholder="eg: 12" size="10" class="month gr-input" required />
                   <label for="expire_year"data-icon="em" >Expiry Year</label>
                    <input id="expire_year" data-icon="ey" type="text" name="expire_year" placeholder="eg: 2014" size="10" class="year gr-input" required />
                  
                    <div class="clearfix"></div>
                </li>
                <li class="cvc-code last">
                    <label for="cvv" data-icon = "cv">CVV</label>
                    <input id="cvv" type="text" name="cvv" placeholder="xxx" size="10" type="password" class="gr-input" required />
                </li>
                  <li class="login button">
							<input type="submit" value="Submit" />
                </li>
                <div class="clearfix"></div>
            </ul>
        </form>
        <div class="watermark">card</div>
        </div>
    </section>
    </body>
    </html>