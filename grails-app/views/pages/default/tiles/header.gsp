<%@ page import="com.compro.cgrails.CgrailsUtils" %>
<%@ page import="com.compro.cgrails.CgrailsConstants" %>

<g:set var="workflow" value="${CgrailsUtils.getWorkflow()}"/>
<g:set var="appName"><g:meta name="app.name" scope="flash"/></g:set>

<g:set var="homeLink" value="#/home"/>
<g:set var="coursesLink" value="#/courses/list"/>
<g:set var="assignmentsLink" value="#/assignments/list"/>

<g:if test="${workflow == CgrailsConstants.WORKFLOW_TRADITIONAL}">
	<g:set var="homeLink" value="../home/"/>
	<g:set var="coursesLink" value="../course/"/>
	<g:set var="assignmentsLink" value="../assignment/"/>
</g:if>

<div id="main-header" class="container main-header">
	<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
	<!-- This is shown for mobile devices - collapsed icon -->
		<i class="icon-align-justify"></i>
	</a>
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container">
				<a class="brand" href="/${appName}/">Grailway</a>
				<div id="loadingIcon">
					<r:img dir="images/common" file="ajax_loader.gif"/>
				</div>
				<div class="nav-collapse">
					<ul class="nav pull-right">
						<li class="menu"><a href="${homeLink}"><g:message code="menu.home"/></a></li>
						<li class="menu"><a href="${coursesLink}"><g:message code="menu.courses"/></a></li>
						<li class="menu"><a href="${assignmentsLink}"><g:message code="menu.assignments"/></a></li>
						<g:if test="${workflow != CgrailsConstants.WORKFLOW_OFFLINE}">
							<li class="divider-vertical"></li>
							<g:include view="tiles/userinfo_dropdown.gsp"/>
							<g:include view="tiles/language_dropdown.gsp"/>							
						</g:if>	
					</ul>
				</div>				
			</div>
		</div>
	</div>
</div>
