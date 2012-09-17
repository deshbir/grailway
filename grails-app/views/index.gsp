<%@ page import="com.grailway.utils.Util" %>
<!Doctype html>
<html>
	<head>
		<title>Grailway (A Demo Application)</title>
		<cgrails:stylesheet src="styles" watch="false"/>
	</head>
	<body>	
		<div id="hero" class="container hero">
			<div class="row">
		        <div class="span12">
		        	<h2>Grailway<i>(The way Grails do it)</i></h2>
					<ul>	
							<li>A design where <b>LESS</b> is definitely more.
							<li>Parents are there to support when components <b>FALLBACK</b>.</li>
							<li>Changing <b>SKIN</b> is faster than changing clothes.</li>
							<li>Pre defined <b>CONVENTION</b>s contribute a lot in developer's Time Savings account.</li>
							<li>Acts like a Electronic Chameleon which is <b>ADAPTIVE</b> to different electronic devices.</li>
						
					</ul>
				</div>
			</div>
			<div class="row secondrow">
		        <div class="span12">	
					<h3>Single Page</h3>
					<ul>	
							<li><a href="default/singlepage/main/login">Default skin</a></li>
							<li><a href="skin1/singlepage/main/login">Skin 1</a></li>
							<li><a href="skin2/singlepage/main/login">Skin 2</a></li>
					</ul>
					<h3>Traditional</h3>
					<ul>	
							<li><a href="default/traditional/main/login">Default skin</a></li>
							<li><a href="skin1/traditional/main/login">Skin 1</a></li>
							<li><a href="skin2/traditional/main/login">Skin 2</a></li>
					</ul>
				</div>
			</div>	
	</body>
</html>