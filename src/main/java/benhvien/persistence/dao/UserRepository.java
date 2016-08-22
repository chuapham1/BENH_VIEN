package benhvien.persistence.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import benhvien.persistence.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
    public User findByEmail(String email);

    public void delete(User user);
}
