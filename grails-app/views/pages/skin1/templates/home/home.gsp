<%@ page import="com.compro.cgrails.CgrailsUtils" %>
<%@ page import="com.compro.cgrails.CgrailsConstants" %>

<g:set var="workflow" value="${CgrailsUtils.getWorkflow()}"/>
<g:set var="coursesLink" value="#/courses/list"/>
<g:set var="assignmentsLink" value="#/assignments/list"/>
<g:if test="${workflow == CgrailsConstants.WORKFLOW_TRADITIONAL}">
	<g:set var="coursesLink" value="../course/"/>
	<g:set var="assignmentsLink" value="../assignment/"/>
</g:if>

<div class="row">
    <div class="span12">
		<div id="home">
			<p>
				<h3><g:message code='home.hello'/> {{username}} (This is Skin 1)</h3>
			</p>	
			<p>
				<a href="${coursesLink}" class="btn btn-large"><g:message code='home.button.mycourses'/> <small>({{username}})</small></a>
			</p>
			<p>	
				<a href="${assignmentsLink}" class="btn btn-large"><g:message code='home.button.myassignments'/> <small>({{username}})</small></a>
			</p>	
		</div>
	</div>
</div>
