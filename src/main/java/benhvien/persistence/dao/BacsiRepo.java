package benhvien.persistence.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import benhvien.persistence.model.Bacsi;
import benhvien.persistence.model.Benhnhan;
import benhvien.persistence.model.DKKham;
import benhvien.persistence.model.User;

public interface BacsiRepo extends JpaRepository<Bacsi, Long> {
    //public Bacsi findByEmail(String email);
	public Bacsi findByUser(User user);
	public Bacsi findByBacsiId(Long bacsy_id);
	public List<Bacsi> findAll();
}
