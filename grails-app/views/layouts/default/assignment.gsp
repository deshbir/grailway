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
   		<r:require modules="libs,assignments"/>	
		<r:script type="text/javascript">
			AssignmentsView.routerInitialize();
			Backbone.history.start();
			if (window.location.hash.length <= 1){
				Backbone.history.navigate("#/assignments/list", {trigger:true,replace:true});
			} 	
		</r:script>	
		<r:script type="text/javascript" disposition="defer">	
			Util.configureAJAX();
		</r:script>
		<g:layoutHead/>
		<r:layoutResources/>
	</head>
	<body>
		<g:include view="tiles/header.gsp"/>	
		<div id="main_container" class="container">
			<g:layoutBody/>
		</div>
		<g:include view="tiles/footer.gsp"/>	
		<r:layoutResources/>
	</body>
</html>