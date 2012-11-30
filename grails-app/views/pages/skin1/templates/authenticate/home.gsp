<g:include view="layout-helpers/header_accounts.gsp"/>
<div class="row">
	<div class="span12">
		<div id="home">
			<sec:ifLoggedIn>
				<p>
					<h3><g:message code='home.hello'/> <sec:username/> (This is Skin1)</h3>
				</p>	
				<p>
					<a href="<cgrails:switch_singlepage action="course"/>" class="btn btn-large"><g:message code='home.button.mycourses'/> <small>( <sec:username/>)</small></a>
				</p>
				<p>	
					<a href="<cgrails:switch_singlepage action="assignment"/>" class="btn btn-large"><g:message code='home.button.myassignments'/> <small>( <sec:username/>)</small></a>
				</p>
			</sec:ifLoggedIn>
			<sec:ifNotLoggedIn>
				<h2><g:message code="home.heading"/> Grailway Demo (This is Skin1)</h2>
				<form action="${request.contextPath}/j_spring_security_check" method='POST' id='ajaxLoginForm' name='ajaxLoginForm'>
					<label><g:message code="login.enter_credentials" /></label>
					<fieldset>
						<input type="text" id="username" name="j_username" class="input-xlarge" placeholder="${message(code: 'login.email')}">
						<br/>
						<input type="password" name="j_password" class="input-xlarge" placeholder="${message(code: 'login.password')}">
					</fieldset> 
					<button class="btn btn-large" onclick='Authenticate.authAjax(); return false;'>
						<g:message code="login.log_in" />
					</button>                      
				</form>				
				<div class="facebook-login">				
					<facebookAuth:connect/>
				</div>	
				<div id="loginErrorMessage"></div> 	
			</sec:ifNotLoggedIn>				
		</div>		
	</div>
</div>		