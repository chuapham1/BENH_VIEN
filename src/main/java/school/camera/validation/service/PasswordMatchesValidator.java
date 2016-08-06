package school.camera.validation.service;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import school.camera.persistence.service.UserDto;

public class PasswordMatchesValidator implements ConstraintValidator<PasswordMatches, Object> {

    @Override
    public void initialize(PasswordMatches constraintAnnotation) {
    }

    @Override
    public boolean isValid(Object obj, ConstraintValidatorContext context) {
        UserDto user = (UserDto) obj;
        return user.getPassword().equals(user.getRePassword());
    }
}
