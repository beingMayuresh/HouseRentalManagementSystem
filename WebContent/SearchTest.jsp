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
		<script type="text/JavaScript" >
    function validate(theForm){
    if(theForm.keyword.value.length==0){
        alert("zipcode can't be blank");
        theForm.user.focus();
        return false;
    }else if(theForm.location.value =="dropdown"){
        alert("location can't be blank");
        theForm.pass.focus();
        return false;
    }
}
</script>
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
			  <li><a href="addproperty.jsp">Add Property</a></li>
			  
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
                            <form enctype="multipart/form-data" onSubmit="return validate(this)" method="get" action="WelcomeServlet"> 
                                <h1>Search</h1> 
                                <p> 
                                    <label for="keyword" class="uname" data-icon="u" > Enter a key word </label>
                                    <input id="keyword" name="keyword"  type="text" placeholder="keyword"/>
                                </p>
                                <p> 
                                 <select name="location" class="dropDownList" id="location">
							        <option value="dropdown">Location</option>
							        <option value="Charlotte">Charlotte</option>
							        <option value="Washington D.C">Washington D.C</option>
							        <option value="Bismark">Bismark</option>
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