package benhvien.persistence.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import benhvien.persistence.model.Benhnhan;
import benhvien.persistence.model.User;

public interface BenhnhanRepo extends JpaRepository<Benhnhan, Long> {
	public  Benhnhan findByUser(User user); 
	public  Benhnhan findByBenhnhanId(Long benhnhanId);
}
