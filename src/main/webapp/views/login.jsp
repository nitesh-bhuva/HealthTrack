<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/register.css">
	<title>HealthTrack</title>
</head>

<body>

	<c:if test="${not empty ErrorMSG}">
			<h4 style="color:red">${ErrorMSG}</h4>
		</c:if>
	
	<h1>Login</h1>
	<form action="loginForm" method="post">
	  
	   Email: <input type="email" name="email" required><br>
	   password:<input type="password" name="password" required><br>
	   <input type="submit" value="Login">
	   
	 </form><br><br>
	 
	 If you Not registered...<a href="regPage"><b>Click Here</b></a>
	
	
</body>

</html>