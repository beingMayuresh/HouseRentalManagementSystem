<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>Property Management</title>
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style3.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
    </head>
    <body style="margin: 0px;"
	background="http://www.shimeiusa.com/wp-content/uploads/2014/11/34.jpg">
        <div class="container">
            <!-- Codrops top bar -->
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="lok" method="post" autocomplete="on"> 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Your email or username </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="username or mail"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="password" /> 
                                </p>
                                <p class="login button"> 
                                    <input type="submit" value="Login" /> 
								</p>
                                
								<p class="change_link" align="center">
						<a href="Home_Page_Final2.jsp" class="to_register" >Back to Home</a>
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						Not a member yet ? <a href="#toregister" class="to_register">Join
								us</a>
						</p>
                            </form>
                        </div>

                     <div id="register" class="animate form">
                            <form  action="PropertyRegistrationServlet" method="POST" autocomplete="on"> 
                                <h1> Sign up </h1> 
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Your username</label>
                                    <input id="usernamesignup" name="usernamesignup" required="required" type="text" placeholder="mysuperusername690" />
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" > Your email</label>
                                    <input id="emailsignup" name="emailsignup" required="required" type="email" placeholder="mysupermail@mail.com"/> 
                                </p>
                                
                              <p> 
                              <label for="phonesignup" class="youphone" data-icon="t" > Your phone number</label>
                                    <input id="phonesignup" name="phonesignup" required="required" type="text" placeholder="9803379032"/> 
                            
                            </p>
                            
                             <p> 
                                    <label for="address1signup" class="address1name" data-icon="a1">Address Line1</label>
                                    <input id="address1signup" name="address1signup" required="required" type="text" placeholder="209,BartonCreek Drive" />
                                </p>
                            
                             <p> 
                                    <label for="address2signup" class="address2name" data-icon="a2">Address Line2</label>
                                    <input id="address2signup" name="address2signup" required="required" type="text" placeholder="AshfordGreen Apartments" />
                                </p>
                            
                                 <p> 
                                    <label for="citysignup" class="cityname" data-icon="c">City</label>
                                    <input id="citysignup" name="citysignup" required="required" type="text" placeholder="charlotte" />
                                </p>
   
                                 <p> 
                                    <label for="statesignup" class="statename" data-icon="s">state</label>
                                    <input id="statesignup" name="statesignup" required="required" type="text" placeholder="NorthCarolina" />
                                </p>
                                
                                 <p> 
                                    <label for="zipcodesignup" class="zipcodename" data-icon="Z">Zipcode</label>
                                    <input id="zipcodesignup" name="zipcodesignup" required="required" type="text" placeholder="28262" />
                                </p>
                                
                                
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Your password </label>
                                    <input id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Please confirm your password </label>
                                    <input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p class="signin button"> 
									<input type="submit" value="Sign up"/> 
								</p>
                                
								<p class="change_link" align="center">
						<a href="Home_Page_Final.jsp" class="to_register" >Back to Home</a>
						&nbsp&nbsp&nbsp&nbsp&nbsp
							Already a member ? <a href="#tologin" class="to_register"> Go
								and log in </a>
						</p>
                            </form>
                        </div>
						
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>