package benhvien.persistence.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import benhvien.persistence.model.Bacsi;
import benhvien.persistence.model.Benhan;
import benhvien.persistence.model.Benhnhan;

public interface BenhAnRepo extends JpaRepository<Benhan, Long> {
	public List<Benhan> findByBenhnhan(Benhnhan benhnhan);
	public List<Benhan> findByBacsi(Bacsi bacsi);
	public Benhan findByBenhAnId(Long benhAnId) ;
}
