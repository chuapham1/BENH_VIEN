package benhvien.persistence.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import benhvien.persistence.model.Benhan;
import benhvien.persistence.model.Toathuoc;

public interface ToathuocRepo extends JpaRepository<Toathuoc, Long>{
	public List<Toathuoc> findByBenhan(Benhan benhAn);
	public Toathuoc findByMaToa(Long maToa);
}
