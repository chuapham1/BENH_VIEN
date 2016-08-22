package benhvien.persistence.service;

import benhvien.persistence.model.User;
import benhvien.validation.service.EmailExistsException;

public interface IUserService {

    User registerNewUserAccount(UserDto accountDto) throws EmailExistsException;

   // User getUser(String verificationToken);

    void saveRegisteredUser(User user);

    void deleteUser(User user);

   // void createVerificationTokenForUser(User user, String token);

    //VerificationToken getVerificationToken(String VerificationToken);

}
