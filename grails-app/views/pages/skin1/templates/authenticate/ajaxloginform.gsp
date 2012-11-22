<g:include view="layout-helpers/header_accounts.gsp"/>
<div class="row">
	<div class="span12">
		<div id="home">
			<h2><g:message code="home.heading"/> Grailway Demo (This is Skin 1)</h2>
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
			<div id="loginErrorMessage"></div> 	
		</div>	
	</div>
</div>			         

