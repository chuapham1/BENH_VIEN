package school.camera.persistence.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import school.camera.persistence.model.Bacsi;
import school.camera.persistence.model.Benhan;
import school.camera.persistence.model.Chitiettoa;
import school.camera.persistence.model.Toathuoc;

public interface ChitiettoaRepo extends JpaRepository<Chitiettoa, Long>{
	public List<Chitiettoa> findByToathuoc(Toathuoc toathuoc);
}
