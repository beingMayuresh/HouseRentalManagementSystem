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
        <div id=" container_search" >
		<div id="nav search_container">
			<ul>
			  <li><a href="/">Home</a></li>
			  <li><a href="about.jsp">About</a></li>
			  <li><a href="portfolio.jsp">Portfolio</a></li>
			  <li><a href="contact.jsp">Contact</a></li>
			</ul>
		</div> 
		</div>  
        <div class="container" >
            <!-- Codrops top bar -->
            <section>				
                <div id="container_demo"  >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form destination">
                            <form  action="PropertySearchServlet" method="post" autocomplete="on"> 
                                <h1>Search</h1> 
                                <p> 
                                    <label for="keyword" class="uname" data-icon="u" > Enter a key word </label>
                                    <input id="keyword" name="keyword"  type="text" placeholder="keyword"/>
                                </p>
                                <p> 
                                 <select name="location" class="dropDownList" id="location">
							        <option value="dropdown">Location</option>
							        <option value="Charlotte">Charlotte</option>
							        <option value="Washington">Washington</option>
							        <option value="Bismark">Bismark</option>
    							  </select>
                                </p>
                              <p> 
                                 <select name="size" class="dropDownList" id="size">
							        <option value="dropdown">Size</option>
							        <option value="2">2BHK</option>
							        <option value="3">3BHK</option>
							        <option value="4">4BHK</option>
    							  </select>
                                </p>
                              <p> 
                                 <select name="cost" class="dropDownList" id="cost">
							        <option value="dropdown">Cost</option>
							        <option value="500">500$</option>
							        <option value="1000">1000$</option>
							        <option value="1500">>1500$</option>
    							  </select>
                                </p>                                                               
                                
									<input type="submit" value="search"/>
                            </form>
                        </div>

                        </div>
						
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>