<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import="com.restaurant.model.ComandaContabilidad"%>

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
<% List<ComandaContabilidad> comandas = (List<ComandaContabilidad>) request.getAttribute("comandas"); %>
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
		                  	</br><span class="mText">Comandas</span>
		                  </li>
		   			</ul>
				</nav>
            </div>
             
			<!--content -->
			<article id="content"><div class="ic"></div>
				<div class="iconHolder"	>
             		<ul>
                     <li id="pageAbout">
					   <div class="box">
                            <div class="containerContent">
                                <h2>Lista de comandas Realizadas</h2>
                                
                                <table style="width:100%">
									<tr>
									    <th><font color="white">Total dia</th>
									    <th><font color="white">Num. de comandas</th> 
								  	</tr>
								  	<tr>
									    <th><font color="white"><%= request.getAttribute("total")%></th>
									    <th><font color="white"><%= comandas.size() %></th> 
								  	</tr>
								  	</table>
                                <div class="col1 padBot1">
                                <table style="width:100%">
									<tr>
									    <th><font color="white">Ticket</th>
									    <th><font color="white">Subtotal</th> 
									    <th><font color="white">Accion</th>
								  	</tr>
                                <% for(ComandaContabilidad comanda : comandas) { %>
                                    <tr>
									    <td><font color="white"><%= comanda.getTicket()%> </td>
									    <td><font color="white"><%= comanda.getSubTotal()%></td> 
									    <td><font color="white"> <a href="#"> Ver  </a></td>
									    </font>
								  	</tr>
                              	<%	}%>
                              	</table>
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