<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>HealthTrack - Profile</title>
  <link rel="stylesheet" href="css/profile.css" />
</head>

<body>
  <header>
    <div class="container">
      <h1>HealthTrack</h1>
      <nav>
        <ul>
          <li><a href="home.html">Home</a></li>
         
        </ul>
      </nav>
    </div>
  </header>

  <main class="profile-container">
    <section class="profile-card">
        <h2>${appointment.name}</h2>
      <p>Email: ${appointment.email}</p>
      <p>Phone: ${appointment.number}</p>
      <p>Age: ${appointment.age} </p>
      <p>Gender: ${appointment.gender}</p>
	  <p>Time: ${appointment.time}</p>
      

    </section>

    <section class="history">
      <h3>Medical History</h3>
      <ul>
        <li>Annual Checkup - Jan 2025</li>
        <li> Blood Test - Dec 2024</li>
        <li>Vaccination - Oct 2024</li>
      </ul>
    </section>
  </main>

  <footer>
    <p>&copy; 2025 HealthTrack. All rights reserved.</p>
  </footer>
</body>

</html>
