<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.compro.cgrails.CgrailsUtils" %>
<g:set var="direction" value="${CgrailsUtils.getOrientation()}"/>
<!DOCTYPE html>
<html>
	<head>
	    <r:require modules="cgrailsLibs,libs,assignments"/>			
		<g:include view="layout-helpers/head_layout_main.gsp"/>
		<g:layoutHead/>
		<r:layoutResources/>	
	</head>
	<body dir="${direction}">
		<g:include view="layout-helpers/facebook_init.gsp"/>
		<g:include view="layout-helpers/header_main.gsp"/>			
		<div id="main_container" class="container">
			<g:layoutBody/>
		</div>
		<g:include view="layout-helpers/footer_main.gsp"/>
		<r:layoutResources/>
	</body>
</html>