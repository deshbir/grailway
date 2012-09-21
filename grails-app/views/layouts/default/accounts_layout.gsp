<%@ page import="com.grailway.utils.Util" %>
<%@ page import="com.grailway.Constants" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<r:require modules="login"/>
		<g:include view="layout-helpers/head_layout_main.gsp"/>	
	</head>
	<body>
		<g:include view="layout-helpers/header_accounts.gsp"/>			
		<div id="main_container" class="container">
			<g:layoutBody/>
		</div>
		<g:include view="layout-helpers/footer_main.gsp"/>
		<r:layoutResources/>
	</body>
</html>



