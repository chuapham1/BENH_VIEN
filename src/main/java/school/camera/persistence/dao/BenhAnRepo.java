package school.camera.persistence.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import school.camera.persistence.model.Bacsi;
import school.camera.persistence.model.Benhan;
import school.camera.persistence.model.Benhnhan;

public interface BenhAnRepo extends JpaRepository<Benhan, Long> {
	public List<Benhan> findByBenhnhan(Benhnhan benhnhan);
	public List<Benhan> findByBacsi(Bacsi bacsi);
}
