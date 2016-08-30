package benhvien.persistence.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import benhvien.persistence.model.Benhan;
import benhvien.persistence.model.ChitietBenhAn;
import benhvien.persistence.model.Toathuoc;

public interface ToathuocRepo extends JpaRepository<Toathuoc, Long>{
	public List<Toathuoc> findByChitietBenhAn(ChitietBenhAn chitietBenhAn);
	public Toathuoc findByMaToa(Long maToa);
}
