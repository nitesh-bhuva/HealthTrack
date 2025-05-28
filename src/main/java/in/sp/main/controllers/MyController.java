package in.sp.main.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import in.sp.main.entities.Appointment;
import in.sp.main.entities.User;
import in.sp.main.services.AppointmentService;
import in.sp.main.services.UserService;
import jakarta.servlet.http.HttpSession;

@Controller
public class MyController {

	// ---------- HOME ----------
	@GetMapping("/home")
	public String showHomePage() {
		return "/home.html";
	}

	// ---------- Register --------

	
	@Autowired
	private UserService userService;
	
	@GetMapping("/")
	public String defaultPage() {
	    return "redirect:/regPage";
	}

	@GetMapping("/regPage")
	public String openRegPage(Model model) {
		model.addAttribute("user", new User());
		return "register";
	}

	@PostMapping("/regForm")
	public String submitRegForm(@ModelAttribute("user") User user, Model model) {

		boolean status = userService.registerUser(user);
		if (status = true) {
			return "redirect:/home.html";
		} else {
			model.addAttribute("ErrorMSG", "User not registered due to some error !");
			return "register";
		}

	}

	// ------------ Login -------------

	@GetMapping("/loginPage")
	public String openLoginPage(Model model) {
		model.addAttribute("user", new User());
		return "login";
	}

	@PostMapping("/loginForm")
	public String submitLoginForm(@ModelAttribute("user") User user, Model model) {
		User valideUser = userService.loginUser(user.getEmail(), user.getPassword());
		if (valideUser != null) {
			return "redirect:/home.html";
		} else {
			model.addAttribute("ErrorMSG", "Email or Password did't matched !");
			return "login";
		}
	}

	// ---------- ABOUT -------------

	@GetMapping("/about")
	public String openAboutPage() {
		return "about";
	}

	/// ----------Appointment ----------------

	@Autowired
	private AppointmentService appointmentService;

	@GetMapping("/appointmentPage")
	public String openAppointmentPage(Model model) {
		model.addAttribute("appointment", new Appointment());
		return "appointment";
	}

	@PostMapping("/appointmentPage")
	public String submitAppointment(@ModelAttribute("appointment") Appointment appointment, Model model,
			HttpSession session) {

		boolean status = appointmentService.appointmentUser(appointment);

		if (status) {
			session.setAttribute("appointment", appointment);
			model.addAttribute("successMsg", "User Appointment Successfully !");
		} else {
			model.addAttribute("errorMsg", "User Appointment has not registered !");
		}
		return "profile";

	}
	

	// ------------- profile --------------
	@GetMapping("/profile")
	public String openProfilePage(HttpSession session, Model model) {

		Appointment a = (Appointment) session.getAttribute("appointment");
		String success = (String) session.getAttribute("successMsg");
		String error = (String) session.getAttribute("errorMsg");

		model.addAttribute("appointment", a);
		model.addAttribute("successMsg", success);
		model.addAttribute("errorMsg", error);

		// clear messages so they don’t persist beyond one render
		session.removeAttribute("successMsg");
		session.removeAttribute("errorMsg");

		return "profile";

	}

	// ----------- Service --------------

	@GetMapping("/service")
	public String openServicePage() {
		return "service";
	}

	// ----------------Doctors-------------
	@GetMapping("/doctor")
	public String openDoctorPage() {
		return "doctor";	
	}

	//------------Testimonials----------
	@GetMapping("/testimonials")
	public String openTestimonialsPage() {
		return "testimonials";
		
	}
	
	//----------------customer-service -------
	@GetMapping("/customerServiceForm")
	public String openCustorServicePage() {
		return "customer-service";
	}
}
