package in.sp.main.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.sp.main.entities.Appointment;
import in.sp.main.repository.AppointmentRepository;

@Service
public class AppointmentServiceImpl implements AppointmentService  {

	@Autowired
	private AppointmentRepository appointmentRepository;
	
	
	@Override
	public boolean appointmentUser(Appointment appointment) {
		try {
			appointmentRepository.save(appointment);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}


}
