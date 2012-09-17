<%@ page import="com.compro.cgrails.CgrailsUtils" %>
<%@ page import="com.compro.cgrails.CgrailsConstants" %>

<g:set var="workflow" value="${CgrailsUtils.getWorkflow()}"/>
<g:set var="logoutLink" value="main/logout"/>


<g:if test="${workflow == CgrailsConstants.WORKFLOW_TRADITIONAL}">
	<g:set var="logoutLink" value="../main/logout"/>
</g:if>


<li class="dropdown">
	<a href="#" class="dropdown-toggle" data-toggle="dropdown">
		<r:img dir="images/glyphicons" file="glyphicons_003_user.png" alt="Grailway logo"/><b class="caret"></b>
	</a>
    <ul class="dropdown-menu">
		    <li><a href="${logoutLink}"><g:message code="menu.sign_out"/></a></li>
    </ul>
</li>
