package school.camera.persistence.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import school.camera.persistence.model.Bacsi;
import school.camera.persistence.model.Benhnhan;
import school.camera.persistence.model.DKKham;
import school.camera.persistence.model.User;

public interface BacsiRepo extends JpaRepository<Bacsi, Long> {
    //public Bacsi findByEmail(String email);
	public Bacsi findByUser(User user);
	public Bacsi findByBacsiId(Long bacsy_id);
	public List<Bacsi> findAll();
}
