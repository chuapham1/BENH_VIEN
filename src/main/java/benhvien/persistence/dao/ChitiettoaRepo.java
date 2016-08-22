package benhvien.persistence.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import benhvien.persistence.model.Bacsi;
import benhvien.persistence.model.Benhan;
import benhvien.persistence.model.Chitiettoa;
import benhvien.persistence.model.Toathuoc;

public interface ChitiettoaRepo extends JpaRepository<Chitiettoa, Long>{
	public List<Chitiettoa> findByToathuoc(Toathuoc toathuoc);
}
