<%@ page import="com.grailway.utils.Util" %>
<%@ page import="com.grailway.Constants" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Grailway (A Demo Application)</title>	
		<g:set var="direction" value="${Constants.LEFT_TO_RIGHT}"/>
		<g:set var="locale" value="${session.'org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE'}"/>
		<g:if test="${locale}">
			<g:set var="direction" value="${Util.getOrientation(locale.toString())}" />
		</g:if>		
		<g:if test="${direction == Constants.LEFT_TO_RIGHT}">
			<cgrails:stylesheet src="styles" watch="false"/>
	   	</g:if>	
		<g:else>
			<cgrails:stylesheet_rtl src="styles"/>
		</g:else>
		<g:render template="/initialize" plugin="cgrails"/>
		<r:require modules="login"/>
		<r:script type="text/javascript" disposition="defer">	
			Util.configureAJAX();
		</r:script>	
		<r:layoutResources/>
	</head>
	<body>
		<g:include view="tiles/login_header.gsp"/>			
		<div id="main_container" class="container">
			<div class="row">
			    <div class="span12">
					<div id="home">
					  	<h2><g:message code="home.heading"/> Grailway Demo</h2>
					  	<form action="authenticate" >
							<label><g:message code="login.enter_credentials" /></label>
							<fieldset>
								<input type="text" id="username" name="username" class="input-xlarge" placeholder="${message(code: 'login.email')}" required>
								<br/>
								<input type="password" name="password" class="input-xlarge" placeholder="${message(code: 'login.password')}" required>
							</fieldset> 
							<button class="btn btn-large" type="submit">
								<g:message code="login.log_in" />
							</button>                      
						</form>	         
					</div>
				</div>
			</div>
		</div>
		<g:include view="tiles/footer.gsp"/>
		<r:layoutResources/>
	</body>
</html>



