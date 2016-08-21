package school.camera.persistence.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import school.camera.persistence.model.Benhan;
import school.camera.persistence.model.Toathuoc;

public interface ToathuocRepo extends JpaRepository<Toathuoc, Long>{
	public List<Toathuoc> findByBenhan(Benhan benhAn);
}
