<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>FIG | Local Neighborhood Restaurant in Downtown Charleston, SC</title>
<meta name="description" content="FIG is a Charleston SC local neighborhood restaurant located in the heart of downtown, serving seasonally-inspired cuisine with a commitment to using local and sustainable foods." />
	<link href="/favicon.ico" rel="icon" type="image/x-icon" />
	<link rel="stylesheet" type="text/css" href="global.css" />
	<link rel="alternate" type="application/rss+xml" title="Blog RSS" href="http://www.eatatfig.com/index.php/blog/feed/" />
	<!--[if IE 7]><link rel="stylesheet" type="text/css" href="/assets/styles/ie7.css" media="screen" /><![endif]-->
	<!--[if IE 6]><link rel="stylesheet" type="text/css" href="/assets/styles/ie6.css" media="screen" /><![endif]-->	
	
	<!--<script type="text/javascript" src="/assets/javascript/jquery-1.3.2.min.js"></script>
	<script type="text/javascript" src="/assets/javascript/jquery.livequery.min.js"></script>
	<script type="text/javascript" src="/assets/javascript/jquery.hoverIntent.minified.js"></script>
	<script type="text/javascript" src="/assets/javascript/jquery.preload-min.js"></script>
	<script type="text/javascript" src="/assets/javascript/jquery.field.js"></script>
	<script type="text/javascript" src="/assets/javascript/site.js"></script>
	<script type="text/javascript" src="/assets/javascript/sifr.js"></script>
	<script type="text/javascript" src="/assets/javascript/sifr-config.js"></script>-->
	
	<!--<link rel="stylesheet" href="/assets/styles/prettyPhoto.css" type="text/css" media="screen" charset="utf-8" />-->
	<link rel="stylesheet" href="global.css" type="text/css" media="screen" charset="utf-8" />
	
	<!--<script src="/assets/javascript/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript" src="/assets/javascript/jquery-easing.1.2.pack.js"></script>
	<script type="text/javascript" src="/assets/javascript/jquery-easing-compatibility.1.2.pack.js"></script>
	<script type="text/javascript" src="/assets/javascript/jquery.scrollTo-1.4.0-min.js"></script>-->
	<script type="text/javascript">
	//<![CDATA[
		$().ready(function() {$(".rollover").css({'opacity':'0'});
			$("#quicklook").hide();
			$("#newsandpress .tab a").livequery('click', function() {
				$("#quicklook").slideToggle(300);		
				$('#newsandpress .tab a').toggleClass('active');
				return false;
			});
			$("a[rel^='lightbox']").lightbox({
				animationSpeed: 'normal',
				padding: 20,
				opacity: 0.55,
				showTitle: true,
				allowresize: true,
				counter_separator_label: '/',
				theme: 'light_square'
			});
			
			// set the scroll axes
			$.scrollTo.defaults.axis = 'xy';
			// define the gallery array object
			var $gallery = $('#gallery');
			// initilize the gallery to the far left
			$($gallery).scrollTo( 0 );
			$.scrollTo(0);
			// zero out the counter
			var counter = 0;
			// the total number of images
			var totalElements = $("#gallery .elements li").length;			
			// how wide is each image?
			elWidth = 320;
			// how many images advance with each click?
			advance = 3;
			// how many panels are there?
			panels = Math.ceil(totalElements / advance);
			//set current panel to 1
			panel = 1;
			// determine how many items are in the last panel (accounts for a remainder)
			lastPanel = advance - ((panels * advance) - totalElements);
			// initially, the previous link is greyed out
			$("#galleryNavigation li.prev a").addClass('inactive');	
			// if there are only three elements total, we don't need to worry about scrolling
			if (totalElements == 3) {
				$("#galleryNavigation li.next a").addClass('inactive');
			}
			
			
			
			// ****
			var progressIndicatorMultiplier = Math.ceil(850/panels);
			var progress = (progressIndicatorMultiplier * panel);
			$("#progress").css({'width':progress});
			var sliderWidth = (panels * progressIndicatorMultiplier);
			$("#slider").css({'width':sliderWidth});
			// ****
			
			// activate the slider on click
			$('#galleryNavigation li a').click(function(){
				var totalWidth = totalElements * elWidth;
				$("#gallery .elements").css({'width':totalWidth});
				// are we advancing the slider?
				if ($(this).attr('title') == 'Prev') {
					panel--;
					if (panel > 0)
					{
						// change the counter
						counter = counter - advance;
						if (panel == 1) {
							$("#galleryNavigation li.prev a").addClass('inactive');	
						}
						else if (panel > 1) {
							$("#galleryNavigation li.next a").removeClass('inactive');	
						}
						if (panel == panels)
						{
							// change this if we're on the last panel
							totalPanelsToMove = lastPanel;
						}
						else
						{
							totalPanelsToMove = advance;
						}
						$gallery.stop().scrollTo( 'li:eq('+counter+')', (elWidth*advance), {easing:'easeInOutCubic'} );
						$("#progress").animate({ 
							width: (progressIndicatorMultiplier * panel)
						}, (elWidth*advance));

					}
				} else {
					panel++;
					if (panel <= panels)
					{
						// change the counter
						counter = counter + advance;
						if (panel == panels)
						{
							$("#galleryNavigation li.next a").addClass('inactive');
							// change this if we're on the last panel
							totalPanelsToMove = lastPanel;
						}
						else
						{
							$("#galleryNavigation li.prev a").removeClass('inactive');	
							$("#galleryNavigation li.prev a").addClass('active');	
							totalPanelsToMove = advance;
						}
						$gallery.stop().scrollTo( 'li:eq('+counter+')', (elWidth*advance), {easing:'easeInOutCubic'} );
						$("#progress").animate({ 
							width: (progressIndicatorMultiplier * panel)
						}, (elWidth*advance));
					}
				}
				
				
			});
			// show the rollover state for the gallery images
			$('#gallery li a').hover(
				function() {
					$(this).find('.rollover').fadeTo(500, 0.60);
				},
				function() {
					$(this).find('.rollover').fadeTo(500, 0.00);
				}
			);
			$("#wkyhr-wkyhr").focus(function() {
				var value = $(this).getValue();
				if (value == "your email address") {$(this).setValue('');}
			});
			$("#wkyhr-wkyhr").blur(function() {
				var value = $(this).getValue();
				if (value == '') {
					$(this).setValue('your email address');
				}
			});
			$(".reservations form input[type=image]").hover(
				function() {
					$(this).attr('src', '/assets/images/btn-updates-hover.gif');
				}, 
				function() {
					$(this).attr('src', '/assets/images/btn-updates.gif');
				}
			);
			$.preload([ 'btn-updates-hover' ], {
			    base:'/assets/images/',
			    ext:'.gif'
			});
		});
		sIFR.replace(futura, {
			selector: 'h1',
			wmode: 'transparent', 
			css: [ '.sIFR-root {background-color:#38291A; color:#82683B;}' ]
		});
	//]]>
	</script>
</head>
<body class="home">
<p id="skip"><a href="#content" title="Skip to content">Skip to content</a></p>
<div id="wrapper">
	<div id="header" class="clearfix">
		<p id="logo"><a href="/" title="FIG &ndash; Food Is Good" accesskey="1"><strong><span></span>FIG</strong></a></p>
		<ol id="navigation">
			<li class="menus"><a href="/menus/" title="Menus" accesskey="2"><span><em>Dinner, dessert, wine &amp; cocktails </em></span>Menus</a></li>
			<li class="about"><a href="/about/" title="About" accesskey="3"><span><em>Chefs, people &amp; passion </em></span>About</a></li>
			<li class="press"><a href="/press/" title="Press" accesskey="4"><span><em>Events &amp; press </em></span>Press</a></li>
		<!--	<li class="blog"><a href="/blog/" title="Blog" accesskey="5"><span><em>News, thoughts &amp; travel </em></span>Blog</a></li>-->
			<li class="reservations"><a href="hec.html" title="Reservations" accesskey="6"><span><em>Online &amp; phone </em></span>Reservations</a></li>
			<li class="contact"><a href="/contact/" title="Contact" accesskey="7"><span><em>Location, media &amp; jobs </em></span>Contact</a></li>
		</ol>
	</div>
	
	
		<div id="gallery">
			<ul class="elements">
				
					<li>
													<a href="/images/uploads/2425_sm.jpeg" rel="lightbox[gallery]">
							<span class="rollover"></span>
												<img src="/images/uploads/2425_sm.jpeg" alt="" />
													</a>
											</li>
				
					<li>
													<a href="/images/uploads/Mike_Lata_DO_SM.jpg" rel="lightbox[gallery]">
							<span class="rollover"></span>
												<img src="/images/uploads/Mike_Lata_DO_SM.jpeg" alt="" />
													</a>
											</li>
				
					<li>
													<a href="/images/uploads/1_sm.jpg" rel="lightbox[gallery]">
							<span class="rollover"></span>
												<img src="/images/uploads/1_sm.jpg" alt="" />
													</a>
											</li>
				
					<li>
													<a href="/images/uploads/Jason_long_shot.jpg" rel="lightbox[gallery]">
							<span class="rollover"></span>
												<img src="/images/uploads/Jason_long_shot.jpg" alt="" />
													</a>
											</li>
				
					<li>
													<a href="/images/uploads/red_pepper_LG.jpeg" rel="lightbox[gallery]">
							<span class="rollover"></span>
												<img src="/images/uploads/red_pepper_sm.jpg" alt="" />
													</a>
											</li>
				
					<li>
													<a href="/images/uploads/2372_lg.jpg" rel="lightbox[gallery]">
							<span class="rollover"></span>
												<img src="/images/uploads/2372_sm.jpg" alt="" />
													</a>
											</li>
				
					<li>
													<a href="/images/uploads/4_sm.jpg" rel="lightbox[gallery]">
							<span class="rollover"></span>
												<img src="/images/uploads/4_sm.jpg" alt="" />
													</a>
											</li>
				
					<li>
													<a href="/images/uploads/lemon_tart_sm.jpg" rel="lightbox[gallery]">
							<span class="rollover"></span>
												<img src="/images/uploads/lemon_tart_sm.jpg" alt="" />
													</a>
											</li>
				
					<li>
													<a href="/images/uploads/trigger_fish_LG.jpg" rel="lightbox[gallery]">
							<span class="rollover"></span>
												<img src="/images/uploads/trigger_fish_sm.jpeg" alt="" />
													</a>
											</li>
				
					<li>
													<a href="/images/uploads/2_sm.jpg" rel="lightbox[gallery]">
							<span class="rollover"></span>
												<img src="/images/uploads/2_sm.jpg" alt="" />
													</a>
											</li>
				
					<li>
													<a href="/images/uploads/fish_cocotte_1_1.jpeg" rel="lightbox[gallery]">
							<span class="rollover"></span>
												<img src="/images/uploads/fish_cocotte_1_1.jpeg" alt="" />
													</a>
											</li>
				
					<li>
													<a href="/images/uploads/2283_sm.jpeg" rel="lightbox[gallery]">
							<span class="rollover"></span>
												<img src="/images/uploads/2283_sm.jpeg" alt="" />
													</a>
											</li>
				
					<li>
													<a href="/images/uploads/bread_sm.jpg" rel="lightbox[gallery]">
							<span class="rollover"></span>
												<img src="/images/uploads/bread_sm.jpg" alt="" />
													</a>
											</li>
				
					<li>
													<a href="/images/uploads/1419_sm.jpg" rel="lightbox[gallery]">
							<span class="rollover"></span>
												<img src="/images/uploads/1419_sm.jpg" alt="" />
													</a>
											</li>
				
					<li>
													<a href="/images/uploads/pasta_ragu_sm.jpg" rel="lightbox[gallery]">
							<span class="rollover"></span>
												<img src="/images/uploads/pasta_ragu_sm.jpeg" alt="" />
													</a>
											</li>
				
			</ul>	
		</div>
		<div id="galleryNavigation">
			<div id="slider">
				<div id="progress"></div>
			</div>
			<ul>
				<li class="prev"><a href="javascript:void(0);" title="Prev"><span></span>Prev</a></li>
				<li class="next"><a href="javascript:void(0);" title="Next"><span></span>Next</a></li>
			</ul>
		</div>	
	
	
	<h1>FIG is a local neighborhood eatery located in the heart of downtown Charleston,</h1>
	<h2><p>serving seasonally-inspired cuisine with a commitment to using local and sustainable foods.</p></h2>
	
	<div id="content" class="clearfix">
		<div id="newsandpress" class="clearfix">
			
		</div>
	</div>
<div id="footer">
	<div>
		<p><em>232 Meeting Street Charleston, SC&nbsp;&nbsp;&#124;&nbsp;&nbsp;<a href="http://maps.google.com/maps?client=safari&amp;oe=UTF-8&amp;ie=UTF8&amp;q=232+Meeting+Street+Charleston,+SC&amp;fb=1&amp;split=1&amp;gl=us&amp;cid=0,0,11454319391013813592&amp;ei=y7LDSde9AYeCyQXStZmkCw&amp;ll=32.782389,-79.931516&amp;spn=0.006295,0.006295&amp;iwloc=A&amp;output=embed&amp;s=AARTsJqOV0TdFTr_znZ9loJF89gzq7ExXg" title="Directions">Directions</a>&nbsp;&nbsp;&#124;&nbsp;&nbsp;Call 843.805.5900</em></p>
		<p>Copyright 2015 FIG restaurant  All rights reserved&nbsp;&nbsp;&#124;&nbsp;&nbsp;<a href="/privacy/" title="Privacy Policy">Privacy Policy</a></p>
	</div>
	
	<ul id="social-media">
		<li class="fig-fb">
			<a href="https://www.facebook.com/pages/FIG-Charleston/238550352889308" title="FIG Facebook" target="_blank"></a></li>
		<li class="fig-twit">
			<a href="https://twitter.com/figrestaurant" title="FIG Twitter" target="_blank"></a></li>
	</ul>
	
	<div id="credit">
		<p>Website design by: <a href="http://www.ehousestudio.com">eHouse Studio</a></p>
	</div>
</div>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-8567369-1");
pageTracker._trackPageview();
} catch(err) {}</script>
</body>
</html>