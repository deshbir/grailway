<%@ page import="com.grailway.utils.Util" %>
<%@ page import="com.grailway.Constants" %>
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
<r:script type="text/javascript" disposition="defer">	
	Util.configureAJAX();
</r:script>
<g:layoutHead/>
<r:layoutResources/>	