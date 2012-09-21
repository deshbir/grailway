<html>
    <head>
        <meta name="layout" content="accounts_layout" />
    </head>
    <body>
		    <div class="row">
		    <div class="span12">
				<div id="home">
				  	<h2><g:message code="home.heading"/> Grailway Demo</h2>
				  	<form action="authenticate" >
						<label><g:message code="login.enter_credentials" /></label>
						<fieldset>
							<input type="text" id="username" name="username" class="input-xlarge" placeholder="${message(code: 'login.email')}" required>
							<br/>
							<input type="password" name="password" class="input-xlarge" placeholder="${message(code: 'login.password')}" required>
						</fieldset> 
						<button class="btn btn-large" type="submit">
							<g:message code="login.log_in" />
						</button>                      
					</form>	         
				</div>
			</div>
		</div>
    </body>
</html>
