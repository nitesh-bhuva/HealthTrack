<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Services | HealthTrack</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
	<link rel="stylesheet" href="css/service.css"/>


</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">HealthTrack</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home.html" th:href="@{/}">Home</a></li>
                <li class="nav-item"><a class="nav-link active" href="service" th:href="@{/services}">Services</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Services Section -->
<div class="container py-5">
    <div class="text-center mb-5">
        <h2 class="fw-bold">Our Services</h2>
        <p class="text-muted">Helping you track, manage, and improve your health efficiently.</p>
    </div>

    <div class="row g-4">
        <div class="col-md-4">
            <div class="card service-box shadow-sm p-3 h-100 text-center">
                <div class="card-body">
                    <div class="service-icon mb-3">
                        <i class="bi bi-heart-pulse-fill"></i>
                    </div>
                    <h5 class="card-title">Health Tracking</h5>
                    <p class="card-text">Track your vitals, appointments, and wellness goals in one place.</p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card service-box shadow-sm p-3 h-100 text-center">
                <div class="card-body">
                    <div class="service-icon mb-3">
                        <i class="bi bi-journal-medical"></i>
                    </div>
                    <h5 class="card-title">Medical Records</h5>
                    <p class="card-text">Store and access your medical records securely anytime, anywhere.</p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card service-box shadow-sm p-3 h-100 text-center">
                <div class="card-body">
                    <div class="service-icon mb-3">
                        <i class="bi bi-chat-dots-fill"></i>
                    </div>
                    <h5 class="card-title">Doctor Consultation</h5>
                    <p class="card-text">Get connected with qualified doctors and health experts online.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="row g-4 mt-4">
        <div class="col-md-4">
            <div class="card service-box shadow-sm p-3 h-100 text-center">
                <div class="card-body">
                    <div class="service-icon mb-3">
                        <i class="bi bi-activity"></i>
                    </div>
                    <h5 class="card-title">Fitness Goals</h5>
                    <p class="card-text">Set your fitness targets and monitor your progress in real-time.</p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card service-box shadow-sm p-3 h-100 text-center">
                <div class="card-body">
                    <div class="service-icon mb-3">
                        <i class="bi bi-clipboard2-check-fill"></i>
                    </div>
                    <h5 class="card-title">Daily Health Tips</h5>
                    <p class="card-text">Receive daily health tips and reminders for better lifestyle habits.</p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card service-box shadow-sm p-3 h-100 text-center">
                <div class="card-body">
                    <div class="service-icon mb-3">
                        <i class="bi bi-person-check-fill"></i>
                    </div>
                    <h5 class="card-title">Personal Dashboard</h5>
                    <p class="card-text">Manage all your health data and activity from a personalized dashboard.</p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer>
  <div class="footer-content">
    <div class="footer-left">
      <h3>Health Track Hospital</h3>
      <p>123 Wellness Street, MediCity, State, 456789</p>
      <p>Email: contact@healthtrack.com</p>
      <p>Phone: +1 (800) 123-4567</p>
    </div>
    <div class="footer-right">
      <h4>Quick Links</h4>
      <ul>
        <li><a href="index.html">Home</a></li>
	  <li><a href="about">About</a></li>
	  <li><a href="service">Services</a></li>
	  <li><a href="doctor">Doctors</a></li>
	  <li><a href="testimonials">Testimonials</a></li>

      </ul>
    </div>
  </div>
  <div class="footer-bottom">
    <p>&copy; 2025 Health Track Hospital. All rights reserved.</p>
  </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</body>
</html>
