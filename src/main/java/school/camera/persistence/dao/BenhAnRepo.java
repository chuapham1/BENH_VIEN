package school.camera.persistence.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import school.camera.persistence.model.Bacsi;
import school.camera.persistence.model.BenhAn;
import school.camera.persistence.model.Benhnhan;

public interface BenhAnRepo extends JpaRepository<BenhAn, Long> {
	public List<BenhAn> findByBenhnhan(Benhnhan benhnhan);
	public List<BenhAn> findByBacsi(Bacsi bacsi);
}
