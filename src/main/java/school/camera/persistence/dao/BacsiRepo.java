package school.camera.persistence.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import school.camera.persistence.model.Bacsi;

public interface BacsiRepo extends JpaRepository<Bacsi, Long> {
    //public Bacsi findByEmail(String email);

   // public void delete(Bacsi bacsi);
}
