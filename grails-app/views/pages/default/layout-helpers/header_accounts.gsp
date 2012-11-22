<%@ page import="com.compro.cgrails.CgrailsUtils" %>
<%@ page import="com.compro.cgrails.CgrailsConstants" %>

<g:set var="appName"><g:meta name="app.name" scope="flash"/></g:set>
<g:set var="workflow" value="${CgrailsUtils.getWorkflow()}"/>

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
						<g:if test="${workflow != CgrailsConstants.WORKFLOW_OFFLINE}">
							<sec:ifLoggedIn>
								<g:include view="layout-helpers/userinfo_dropdown.gsp"/>
							</sec:ifLoggedIn>
							<g:include view="layout-helpers/language_dropdown.gsp"/>
						</g:if>	
					</ul>
				</div>				
			</div>
		</div>
	</div>
</div>
