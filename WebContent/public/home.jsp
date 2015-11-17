<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.Timestamp" %>
<% java.util.Date date = new java.util.Date();%>
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
<div class="glob">
<div class="page_spinner"></div>  
<div class="main">
    <div class="center"> 
   <!--header -->                    
 <div class="headerHolder">
       <header>
       <div class="logoHolder">
            <h1><a href="#!/pageGallery" id="logo">oratorio</a></h1>
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
					       	
                            <li class="with_ul"><a href="#!/pageAbout"><span class="overPlane"></span><span class="mText">Admin</span></a>
                                   
                                    <ul class="submenu_1">
                                	   <li><a href="AdminController?action=listReservacion">Reservaciones</a></li>
                                	   <li><a href="AdminController?action=adminMenu">Menu</a></li>
                                	   <li><a href="#!/pageMore">Conta</a></li>
                                    </ul>

                            </li>
                        	<li><a href="#!/pageServices"><span class="overPlane"></span><span class="mText">Servicio</span></a>
                        		<ul class="submenu_1">
                               	   <li><a href="AdminController?action=listReservacion">Mesas</a></li>
                               	   <li><a href="#!/pageComanda">Comanda</a></li>
                             	</ul>
                        	</li>
                            <li><a href="#!/pageGallery"><span class="overPlane"></span><span class="mText">gallery</span></a></li>
                            <li><a href="#!/pageContact"><span class="overPlane"></span><span class="mText">Reservacion</span></a></li>
					   </ul>
				    </nav>
                 </div> 
			<!--content -->
			<article id="content"><div class="ic"></div>
             <div class="iconHolder">
         <div id="img_slider">
            <ul>
                <li>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon1.jpg" alt=""></a></div>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon2.jpg" alt=""></a></div>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon3.jpg" alt=""></a></div>
                </li>
                <li>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon4.jpg" alt=""></a></div>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon5.jpg" alt=""></a></div>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon6.jpg" alt=""></a></div>
                </li>
                <li>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon7.jpg" alt=""></a></div>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon8.jpg" alt=""></a></div>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon9.jpg" alt=""></a></div>
                </li>
                <li>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon1.jpg" alt=""></a></div>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon2.jpg" alt=""></a></div>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon3.jpg" alt=""></a></div>
                </li>
                <li>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon4.jpg" alt=""></a></div>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon5.jpg" alt=""></a></div>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon6.jpg" alt=""></a></div>
                </li>
                <li>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon7.jpg" alt=""></a></div>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon8.jpg" alt=""></a></div>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon9.jpg" alt=""></a></div>
                </li>
               <li>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon4.jpg" alt=""></a></div>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon6.jpg" alt=""></a></div>
                    <div class="picHold"><a class="pic" rel="Appendix" href="images/image-blank.png"><span class="zoomSp"></span><img src="images/galleryIcon5.jpg" alt=""></a></div>
                </li>
             
            </ul>
            
        </div>
            <a href="#" id="next"><img src="images/gallNext1.png" alt=""></a>
            <a href="#" id="prev"><img src="images/gallPrev1.png" alt=""></a>
    </div>
				<ul>
					
                     <li id="pageAbout">
					   <div class="box">
                            <div class="closePlane">
                                <a class="closeButton" href="#!/pageGallery"><img src="images/closeIcon.png" alt=""></a>
                            </div>
                            <div class="containerContent">
                                <h2>Welcome to Our Studio!</h2>
                                <div class="col1 padBot1">
                                    <figure class="_fig1">
                                        <img src="images/page1pic1.png" alt="">
                                    </figure>
                                    <div class="col2">
                                        <p>Cream is one of <a class="_link1" href="http://blog.templatemonster.com/category/free-website-templates/">free website templates</a> created by TemplateMonster.com team. This website template is optimized for 1280X1024 screen resolution. It is also XHTML &amp; CSS valid. The PSD source files of this <a class="_link1" href="http://blog.templatemonster.com/2012/05/07/free-full-javascript-animated-template-web-design-studio/">Cream Template</a> are available for free for the registered members of TemplateMonster.com. Feel free to get them!</p>
                                    </div>
                                </div>
                                <div class="col1 padBot2">
                                    <div class="col3 bord1 magRight1">
                                        <ul class="_list1">
                                            <li><a href="#">At vero eos et accusam justo</a></li>
                                            <li><a href="#">Stet clitasd gubergren nosea takimata</a></li>
                                            <li><a href="#">Duo dolores et sed diam rebum</a></li>
                                        </ul>
                                    </div>
                                    <div class="col3">
                                        <ul class="_list1">
                                            <li><a href="#">Ipsum dolor sit amet consetetur</a></li>
                                            <li><a href="#">Sadipscing elitr clitasdd diam nonumy</a></li>
                                            <li><a href="#">At vero eos et accusam et justo</a></li>
                                        </ul>
                                    </div>
                                </div>
                                    <a class="moreButton" href="#!/pageMore">Read More</a>
                                
                            </div>
                       </div>	
					</li>
                     <li id="pageServices">
					   <div class="box">
                     
                            <div class="closePlane">
                                <a class="closeButton" href="#!/pageGallery"><img src="images/closeIcon.png" alt=""></a>
                            </div>
                       
                            <div class="containerContent">
                                <h2>What We Can Do</h2>
                                <div class="col1 padBot3">
                                    <div class="col4 magRight2">
                                        <h3><a class="_link3" href="#">Website Designing</a></h3>
                                        <p>Duis autem vel eum iriure dolor in hen drerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit.</p>
                                    </div>
                                    <div class="col4">
                                        <h3><a class="_link3" href="#">Reputation Management</a></h3>
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo.</p>
                                    </div>
                                </div>
                                 <div class="col1">
                                    <div class="col4 magRight2">
                                        <h3><a class="_link3" href="#">Flash Development</a></h3>
                                        <p>Paesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy euismod tincidunt ut laoreet.</p>
                                    </div>
                                    <div class="col4">
                                        <h3><a class="_link3" href="#">3D Modeling and Animation</a></h3>
                                        <p>Dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.</p>
                                    </div>
                                </div>
                              
                                
                            </div>
                       </div>	
					</li>
                   <li id="pageGallery">
                    </li>
                    <li id="pageContact">
					   <div class="box">
                         <div class="closePlane">
                                <a class="closeButton" href="#!/pageGallery"><img src="images/closeIcon.png" alt=""></a>
                            </div>
                            
                          <div class="containerContent">
                            <div class="col5 magRight3">
                            <h2>feedback</h2>
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
					
					<!-- CReacion de una coamnda -->
					<li id="pageComanda">
					   <div class="box">
                           
                          <div class="containerContent">
                            <div class=" magRight3">
                            <h2>Comanda  </h2>
                            <% Timestamp dateT = new Timestamp(date.getTime());
                            	String ticket = dateT.toString();
                            %>
                            <font color="white"> <h5>Ticket <%=ticket %> </h5> </font>
                                <div class="wrapper">
                                        <form action="AdminController?action=comanda" id="ComandaForm" method="post">	
                                        	
       								 		<fieldset class="left">	
       								 		<table style="width:100%" bgcolor="#00FF00" border="1">
												<tr bgcolor="#00FF00">
												    <th bgcolor="#5D7B9D" style="width:60%"><font color="#fff">Descripcion</font></th>
												    <th bgcolor="#5D7B9D" style="width:15%"><font color="#fff">Cantidad</font></th>
												    <th bgcolor="#5D7B9D" style="width:25%"><font color="#fff">Precio</font></th>
												    
											  	</tr>
			                                    <tr>
												    <td><span class="bg"><input type="text" id="descripcion1" name="descripcion1" size="30" maxlength="40" placeholder="Descripcion"></span></td>
												    <td><span class="bg"><input type="text" id="cantidad1" name="cantidad1" size="5" maxlength="3" placeholder="Cantidad"></span></td> 
												    <td><span class="bg"><input type="text" id="precio1" name="precio1" size="20" maxlength="20" placeholder="Precio"></span></td>
												    
											  	</tr>
											  	<tr>
												    <td><span class="bg"><input type="text" id="descripcion2" name="descripcion2" size="30" maxlength="40" placeholder="Descripcion"></span></td>
												    <td><span class="bg"><input type="text" id="cantidad2" name="cantidad2" size="5" maxlength="3" placeholder="Cantidad"></span></td> 
												    <td><span class="bg"><input type="text" id="precio2" name="precio2" size="20" maxlength="20" placeholder="Precio"></span></td>
												    
											  	</tr>
											  	<tr>
												    <td><span class="bg"><input type="text" id="descripcion3" name="descripcion3" size="30" maxlength="40" placeholder="Descripcion"></span></td>
												    <td><span class="bg"><input type="text" id="cantidad3" name="cantidad3" size="5" maxlength="3" placeholder="Cantidad"></span></td> 
												    <td><span class="bg"><input type="text" id="precio3" name="precio3" size="20" maxlength="20" placeholder="Precio"></span></td>
												    
											  	</tr>
											  	<tr>
												    <td><span class="bg"><input type="text" id="descripcion4" name="descripcion4" size="30" maxlength="40" placeholder="Descripcion"></span></td>
												    <td><span class="bg"><input type="text" id="cantidad4" name="cantidad4" size="5" maxlength="3" placeholder="Cantidad"></span></td> 
												    <td><span class="bg"><input type="text" id="precio4" name="precio4" size="20" maxlength="20" placeholder="Precio"></span></td>
											  	</tr>
											  	<tr>
												    <td><span class="bg"><input type="text" id="descripcion5" name="descripcion5" size="30" maxlength="40" placeholder="Descripcion"></span></td>
												    <td><span class="bg"><input type="text" id="cantidad5" name="cantidad" size="5" maxlength="3" placeholder="Cantidad"></span></td> 
												    <td><span class="bg"><input type="text" id="precio5" name="precio5" size="20" maxlength="20" placeholder="Precio"></span></td>
												    
											  	</tr>
			                              	</table>
                                            <span class="title1">Nota a cosina:</span>
                                               <span class="bg"><input type="tel" id="notaCosina" name="notaCosina" placeholder="Discripcion larga para cosina"></span>
                                                         
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
                        </div>
                       </div>	
					</li>
					
                  
                	<li id="pageMore">
                    	 <div class="box">
                                <div class="closePlane">
                                    <a class="closeButton" href="#!/pageGallery"><img src="images/closeIcon.png" alt=""></a>
                             </div>
                            <div class="containerContent">
                            <h2>Lorem Ipsum</h2>
                                <div class="col1">
                                    <div class="Btns2">
                                        <a href="#" class="upBtn"></a>
                                        <a href="#" class="downBtn"></a>
                                    </div>
                                    <div class="scroll2">
                                       
                                        <p class="padBot4">Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>
                                        <p class="padBot4">At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus. Duis autem vel eum iriure dolor in hendrerit.</p>
                                        <p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>
                                    </div>
                                </div> 
                            </div>
                       </div>
                    </li>
				</ul>
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