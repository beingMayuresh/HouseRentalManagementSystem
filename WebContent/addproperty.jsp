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
	background="http://www.globaldesignandconstruction.it/img/5.jpg">
        <div class="container">
            <!-- Codrops top bar -->
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toaddproperty"></a>
                    <!--<a class="hiddenanchor" id="tologin"></a>-->
                    <div id="wrapper">
                        

                     <div id="addpropperty" class="animate form">
                            <form  action="PropertyadditionServlet" method="POST" autocomplete="on"> 
                                <h1> Add Property </h1> 
                                
                                
                                <p> 
                                    <label for="descriptionaddproperty" class="desc" data-icon="d">*PROPERTY DESCRIPTION</label>
                                    <input id="descriptionaddproperty" name="descriptionaddproperty" required="required" type="text" placeholder="description" />
                                </p>
                                <p> 
                                    <label for="Availabilityaddproperty" class="availability" data-icon="a" > *AVAILABILITY</label>
                                    <input id="Availabilityaddproperty" name="Availabilityaddproperty" required="required" type="text" placeholder="yes or No"/> 
                                </p>
                                
                              <p> 
                              <label for="Costaddproperty" class="cost" data-icon="co" > *COST</label>
                                    <input id="Costaddproperty" name="Costaddproperty" required="required" type="text" placeholder="$50000"/> 
                            
                            </p>
                             <p> 
                              <label for="noofroomsaddproperty" class="noofrooms" data-icon="no" > *NUMBER OF ROOMS</label>
                                    <input id="noofroomsaddproperty" name="noofroomsaddproperty" required="required" type="text" placeholder="6"/> 
                            
                            </p>
                            
                            <p> 
                              <label for="sizeaddproperty" class="size" data-icon="s" > *SIZE</label>
                                    <input id="sizeaddproperty" name="sizeaddproperty" required="required" type="text" placeholder="Townhall"/> 
                            
                            </p>
                            
                             <p> 
                                    <label for="address1addproperty" class="address1name" data-icon="ad1">*ADDRESS LINE 1</label>
                                    <input id="address1addproperty" name="address1addproperty" required="required" type="text" placeholder="209,BartonCreek Drive" />
                                </p>
                            
                             <p> 
                                    <label for="address2addproperty" class="address2name" data-icon="ad2">*ADDRESS LINE 2</label>
                                    <input id="address2addproperty" name="address2addproperty" required="required" type="text" placeholder="AshfordGreen Apartments" />
                                </p>
                            
                                 <p> 
                                    <label for="cityaddproperty" class="cityname" data-icon="c">*CITY</label>
                                    <input id="cityaddproperty" name="cityaddproperty" required="required" type="text" placeholder="charlotte" />
                                </p>
   
                                 <p> 
                                    <label for="stateaddproperty" class="statename" data-icon="st">*STATE</label>
                                    <input id="stateaddproperty" name="stateaddproperty" required="required" type="text" placeholder="NorthCarolina" />
                                </p>
                                
                                 <p> 
                                    <label for="zipcodeaddproperty" class="zipcodename" data-icon="z">*ZIP CODE</label>
                                    <input id="zipcodeaddproperty" name="zipcodeaddproperty" required="required" type="text" placeholder="28262" />
                                </p>
                                
                                
                               
                                <p class="addproperty button"> 
									<input type="submit" value="Add property"/> 
									
								</p>
                                
								<p class="change_link" align="center">
						<a href="Home_Page_Final.jsp" class="toaddproperty" >Back to Home</a>
						&nbsp&nbsp&nbsp&nbsp&nbsp
							<!--  Already a member ? <a href="#tologin" class="to_register"> Go
								and log in </a>-->
						</p>
                            </form>
                        </div>
						
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>