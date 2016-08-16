package school.camera.persistence.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import school.camera.persistence.model.Benhnhan;
import school.camera.persistence.model.User;

public interface BenhnhanRepo extends JpaRepository<Benhnhan, Long> {
	public  Benhnhan findByUser(User user);
}
