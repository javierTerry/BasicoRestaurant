<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<%@page import="com.restaurant.model.Menu"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title></title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
  <link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
  <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
  <link rel="stylesheet" href="css/jquery.fancybox-1.3.4.css" type="text/css" media="all">
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600,300' rel='stylesheet' type='text/css'>
  <script type="text/javascript" src="js/jquery-1.7.1.js" ></script>
  <script type="text/javascript" src="js/scripts.js"></script>
  <!--[if lt IE 9]>
  	<script type="text/javascript" src="js/html5.js"></script>
    <link rel="stylesheet" href="css/ie.css" type="text/css" media="all">
    
  <![endif]-->
	<!--[if lt IE 8]>
		<div style=' clear: both; text-align:center; position: relative;'>
			<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." /></a>
		</div>
	<![endif]-->
</head>
<body>
<%List<Menu> menus = (List<Menu>)request.getAttribute("menus"); %>
<div class="glob">
<div class="page_spinner"></div>  
<div class="main">
    <div class="center"> 
   <!--header -->                   
 <div class="headerHolder">
       <header>
       <div class="logoHolder">
            <h1><a href="#!/pageGallery" id="logo">Restaurant</a></h1>
       </div>
        </header>
        <div class="followHolder">
                        <span>Call Us:  +1 (800) 12 34 567</span>
                            <ul>
                                <li><a href="#"><img src="images/followIcon1.png" alt=""></a></li>
                                <li><a href="#"><img src="images/followIcon2.png" alt=""></a></li>
                                <li><a href="#"><img src="images/followIcon3.png" alt=""></a></li>
                        
                            </ul>
                        </div>
 </div>
<!--header end--> 
    
            <div class="menuHolder">
			    <nav class="menu">
					<ul id="menu"> 
		                  <li >
		                  	<a href="http://localhost:8080/BasicoRestaurant/" ><span class="mText">back</span></a> </br></br>
		                  	<span class="mText">Admin</span>
		                  	</br><span class="mText">Menu</span>
		                  </li>
		   			</ul>
				</nav>
            </div>
             
			<!--content -->
			<article id="content">
			<div class="ic"></div>
				<div class="iconHolder"	>
             		<ul>
                     <li id="pageAbout">
					   <div class="box">
                            <div class="containerContent">
                                <h2>Menu</h2>
                                <div class="col1 padBot1">
                                <a href="http://localhost:8080/BasicoRestaurant//#!/pageMenuAgregar">Agregar</a>
                                <table style="width:100%">
									<tr>
									    <th><font color="white">ID Producto</th>
									    <th><font color="white">Descripcion</th> 
									    <th><font color="white">Precio</th>
									    <th><font color="white">Acciones </font></th>
								  	</tr>
                                <% for(Menu menu : menus) { %>
                                    <tr>
                                    	<td><font color="white"><%= menu.getId() %> </font></td>
									    <td><font color="white"><%= menu.getDescripcion() %> </font></td>
									    <td><font color="white"><%= menu.getPrecio() %></font></td> 
									    <td><font color="white"><%= menu.getEditar() %></font></td>
									    
								  	</tr>
                              	<%	}%>
                              	</table>
                                </div>
                            </div>
                       </div>	
					</li>
					<li id="pageAgregarMenu">
					   <div class="box">
                            
                          <div class="containerContent">
                            <div class="col5 magRight3">
                            <h2>Reservaciones</h2>
                                <div class="wrapper">
                                        <form action="AdminController?action=reservacion" id="ContactForm" method="post">	
                                        <div class="success"> Contact form submitted!&nbsp;We will be in touch soon.</div>	
       								 		<fieldset class="left">	
                                                        <div class="block">
                                                        <label class="name padRight3">
                                                            <span class="title1">Nombre:</span>
                                                            <span class="bg"><input type="text" value="" class="input" id="name" name="name"></span>
                                                         </label>
        											     <label class="email">
                                                            <span class="title1">Email:</span>
            											    <span class="bg"><input type="email" value="" class="input" id="email" name="email"></span>
            											    
            											 </label>   
                                                         
                                                         <label class="phone">
                                                         <span class="title1">Telefono:</span>
                                                            <span class="bg"><input type="tel" value="" class="input" id="telefono" name="telefono"></span>
                                                          </label>
                                                          
                                                          <label >
                                                         <span class="title1">No de personas:</span>
                                                            <span class="bg"><input type="tel" value="" class="input" id="numPersonas" name="numPersonas"></span>
                                                          </label>
                                                          
                                                          <label >
                                                         <span class="title1">Horario:</span>
                                                            <span class="bg"><input type="tel" value="" class="input" id="horario" name="horario" placeholder="hh:mm am/pm"></span>
                                                          </label>
                                                          
                                                          <label >
                                                         <span class="title1">Fecha:</span>
                                                            <span class="bg"><input type="tel" value="" class="input" id="date" name="date" placeholder="dd/mm/yyyy"></span>
                                                          </label>
                                                         </div>
                                                         
                                                         
                                                         <div class="formButtons">
                                                          <div class="formBtn">
                                                                <input type="submit" value="Submit">
                                                          </div>
                                                          <div class="formBtn">
                                                                 <a href="#" data-type="reset" class="moreButton">Clear</a>
                                                          </div>
                                                         </div> 
    								  		    </fieldset>
                                            </form>
                                    </div>
                            </div>  
                            <div class="col5">
                                <h2>Contacts</h2>
                                <div class="padBot5">
                                        <figure class="google_map"></figure> 
                                    </div>
                               <div class="col5">
                                    <p>
                                        <span>8901 Marmora Road,<br>Glasgow, D04 89GR.</span><br>
                                        <span class="space1">Telephone:</span>+1 800 603 6035<br>
                                        <span>E-mail:&nbsp;<a class="_link1" href="mailto:">mail@demolink.org</a></span>    
                                    </p>
                               </div>
                            </div>     
                        </div>
                       </div>	
					</li>
				</div>
			</article>
		
			<!--content end-->
                  <!--footer -->
            <footer>
				<!-- {%FOOTER_LINK} -->
                <div class="mainFooter">
                <div class="privHold">
                     <pre class="textPrivacy">Encuentre m&aacute;s plantillas web gratis <a href="http://www.mejoresplantillasgratis.es" target="_blank">en MPG</a>.<br>&copy; 2012 Cream <span class="color4">Website Template</span> by <a class="_link2" rel="nofollow" href="http://www.templatemonster.com/">TemplateMonster.com</a></pre>
                 </div>
                 </div>
			</footer>
           	<!--footer end-->
            </div>
		</div>
</div>
<script>
$(window).load(function() {	
	$('.page_spinner').fadeOut();
	$('body').css({overflow:'auto', 'min-height':'800px'})
})
</script>
</body>
</html>