package school.camera.persistence.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import school.camera.persistence.model.Bacsi;
import school.camera.persistence.model.Benhnhan;
import school.camera.persistence.model.DKKham;

public interface DKKhamRepo extends JpaRepository<DKKham, Long>{
	public List<DKKham> findByBenhnhan(Benhnhan benhnhan);
	public List<DKKham> findByBacsi(Bacsi bacsi);
}
