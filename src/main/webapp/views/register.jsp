<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/register.css">
	<title>HealthTrack</title>
</head>

<body>
	<c:if test="${not empty successMSG}">
		<h4 style="color:green">${successMSG}</h4>
	</c:if>
	<c:if test="${not empty ErrorMSG}">
			<h4 style="color:red">${ErrorMSG}</h4>
		</c:if>
	


	<h1>Register</h1>
	<form action="regForm" method="post">
	   Name: <input type="text" name="name" required><br>
	   Address: <input type="text" name="address" required><br>
	   Phone Number: <input type="text" name="phone_number" required><br>
	   Email: <input type="email" name="email" required><br>
	   password:<input type="password" name="password" required><br>
	   <input type="submit" value="Submit">
	   
	 </form><br><br>
	 
	 If already registered...<a href="loginPage"><b>Click Here</b></a>
	
	
</body>

</html>