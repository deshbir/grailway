<html>
    <head>
        <meta name="layout" content="accounts_layout" />
    </head>
    <body> 
		<g:include view="layout-helpers/header_accounts.gsp"/>
		<div class="row">
			<div class="span12">
				<div id="home">
					<h2><g:message code="home.heading"/> Grailway Demo</h2>
					<form action="${request.contextPath}/j_spring_security_check" method='POST' id='ajaxLoginForm' name='ajaxLoginForm'>
						<label><g:message code="login.enter_credentials" /></label>
						<fieldset>
							<input type="text" id="username" name="j_username" class="input-xlarge" placeholder="${message(code: 'login.email')}">
							<br/>
							<input type="password" name="j_password" class="input-xlarge" placeholder="${message(code: 'login.password')}">
						</fieldset> 
						<button class="btn btn-large" type="submit">
							<g:message code="login.log_in" />
						</button>                      
					</form>
					<div class="facebook-login">
						<facebookAuth:connect/>
					</div>	
				</div>				
			</div>
		</div>	
    </body>
</html>
