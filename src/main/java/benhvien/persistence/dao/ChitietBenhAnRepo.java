package benhvien.persistence.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import benhvien.persistence.model.Benhan;
import benhvien.persistence.model.ChitietBenhAn;

public interface ChitietBenhAnRepo  extends JpaRepository<ChitietBenhAn, Long> {
	public List<ChitietBenhAn> findByBenhan(Benhan benhan);
	public ChitietBenhAn findByCtBenhanId(Long ctBenhanId);
}
