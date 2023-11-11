<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>forgot password</title>
	<link type="text/css" rel="stylesheet" href="css/styleslogin.css">
</head>

<body>
		<script src="js/login-registr-forgotpassword-validation.js"></script>


	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab"></label>
			<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
			<div class="login-form">
				<div class="sign-in-htm">
					<form method="post" action="" onsubmit="validationsForgot()">
					<div class="group"><br><br><br>
						<label for="user" class="label" style="text-align: center; text-shadow: black;">Enter registered email address</label>
						<div class="hr"></div>
					<input id="user" type="email" class="input" name="email">
					</div>
					<div class="group">
						
					</div><br>
			
					<div class="group">
						<input type="submit" class="button" value="CONFIRM">
					</div>
					<div class="hr"></div>
					<div class="foot-lnk">
						<label for="tab-1"><a href="login.jsp">Back to Login</a>
					</div>
					</form>
					
				</div>
			
			</div>
		</div>
	</div>

</body>

</html>