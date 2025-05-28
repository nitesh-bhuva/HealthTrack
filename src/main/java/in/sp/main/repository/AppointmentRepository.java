package in.sp.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import in.sp.main.entities.Appointment;

public interface AppointmentRepository extends JpaRepository<Appointment,Integer> {
}
