package benhvien.persistence.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import benhvien.persistence.model.Bacsi;
import benhvien.persistence.model.Benhnhan;
import benhvien.persistence.model.DKKham;

public interface DKKhamRepo extends JpaRepository<DKKham, Long>{
	public List<DKKham> findByBenhnhan(Benhnhan benhnhan);
	public List<DKKham> findByBacsi(Bacsi bacsi);
}
