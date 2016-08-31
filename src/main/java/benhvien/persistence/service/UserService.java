package benhvien.persistence.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import benhvien.hashing.HashGenerator;
import benhvien.persistence.dao.UserRepository;
import benhvien.persistence.model.Role;
import benhvien.persistence.model.User;
import benhvien.validation.service.EmailExistsException;

@Service
@Transactional
public class UserService implements IUserService {
    @Autowired
    private UserRepository repository;

    @Autowired
    private HashGenerator hashGenerator;

    @Override
    public User registerNewUserAccount(UserDto accountDto) throws EmailExistsException {
        if (emailExist(accountDto.getEmail())) {
            throw new EmailExistsException("There is an account with that email adress: " + accountDto.getEmail());
        }
        User user = new User();
       // user.setFirstName(accountDto.getHo());
       // user.setLastName(accountDto.getTen());
        String hashedPassword = hashGenerator.getHashedPassword(accountDto.getPassword());
        user.setPassword(hashedPassword);
        user.setEmail(accountDto.getEmail());
        user.setRole(new Role(Integer.valueOf(1), user));
        return repository.save(user);
    }


    @Override
    public void saveRegisteredUser(User user) {
        repository.save(user);
    }

    @Override
    public void deleteUser(User user) {
        repository.delete(user);
    }

    private boolean emailExist(String email) {
        User user = repository.findByEmail(email);
        if (user != null) {
            return true;
        }
        return false;
    }

}
