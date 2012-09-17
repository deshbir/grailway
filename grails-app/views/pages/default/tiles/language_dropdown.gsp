<%@page import="org.springframework.web.servlet.support.RequestContextUtils"%>
<li class="dropdown">
	<a href="#" class="dropdown-toggle" data-toggle="dropdown"><g:message code="locale.language"/><span>(${RequestContextUtils.getLocale(request).language})</span><b class="caret"></b>
	</a>
	<ul class="dropdown-menu">
		<li><a href='javascript:Util.changeLocale("en")'>English</a></li>
	    <li><a href='javascript:Util.changeLocale("ja")'>Japanese</a></li>
	    <li><a href='javascript:Util.changeLocale("ar")'>Arabic</a></li>
	</ul>
</li>