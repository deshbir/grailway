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
						<g:include view="tiles/language_dropdown.gsp"/>
					</ul>
				</div>				
			</div>
		</div>
	</div>
</div>
