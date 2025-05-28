<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Make Appointment - Health Track Hospital</title>
  <link rel="stylesheet" href="css/appointment.css" />
</head>
<body>
  <div class="container">
    <h1>Make an Appointment</h1>
	
	<c:if test=${not empty successMsg}>
		<h4 style="color:green">${successMsg}</h4>
	</c:if>
	<c:if test=${not empty errorMsg}>
			<h4 style="color:red">${errorMsg}</h4>
		</c:if>
	
    <form class="appointment-form" action="appointmentPage" method="post">
      <label for="name">Full Name</label>
      <input type="text" id="name" name="name" placeholder="Your full name" required />

	  <label for="age">Age</label>
	  <input type="tel" id="age" name="age" placeholder="Your Age" required />
	  
	  <label for="gender">Gender</label>
	  <select id="gender" name="gender" required>
	        <option value="">-- Select Gender --</option>
	        <option value="male">Male</option>
	        <option value="female">Female</option>
			<option value="other">Other</option>
	      </select>
	  
      <label for="email">Email Address</label>
      <input type="email" id="email" name="email" placeholder="Your email address" required />

      <label for="number">Phone Number</label>
      <input type="tel" id="number" name="number" placeholder="Your phone number" required />
	  
	  <label for="address"> Address</label>
	  <input type="text" id="address" name="address" placeholder="Your Address" required />

      <label for="date">Preferred Date</label>
      <input type="date" id="date" name="date" required />

	  
      <label for="time">Preferred Time</label>
      <input type="time" id="time" name="time" required />
	  
	  
	  

      <label for="department">Department</label>
	  <select id="department" name="department" required>
	        <option value="">-- Select Department --</option>
	        <option value="general">General Medicine</option>
	        <option value="cardiology">Cardiology</option>
	        <option value="neurology">Neurology</option>
	        <option value="orthopedics">Orthopedics</option>
	        <option value="pediatrics">Pediatrics</option>
	        <option value="gynecology">Gynecology</option>
	        <option value="dermatology">Dermatology</option>
	        <option value="ent">ENT (Ear, Nose & Throat)</option>
	        <option value="dentistry">Dentistry</option>
	        <option value="psychiatry">Psychiatry</option>
	        <option value="oncology">Oncology</option>
	        <option value="urology">Urology</option>
	        <option value="nephrology">Nephrology</option>
	        <option value="gastroenterology">Gastroenterology</option>
	        <option value="radiology">Radiology</option>
	        <option value="pulmonology">Pulmonology</option>
	        <option value="ophthalmology">Ophthalmology</option>
	      </select>

     

      <button type="submit" class="btn">Book Appointment</button>
    </form>
  </div>
</body>
</html>
