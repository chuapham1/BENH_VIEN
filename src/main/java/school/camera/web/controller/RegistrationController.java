package school.camera.web.controller;

import java.util.Calendar;
import java.util.Locale;
import java.util.Random;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.context.MessageSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

//import school.camera.event.OnRegistrationCompleteEvent;
import school.camera.hashing.HashGenerator;
import school.camera.persistence.dao.UserRepository;
import school.camera.persistence.model.Role;
import school.camera.persistence.model.User;
import school.camera.persistence.service.IUserService;
import school.camera.persistence.service.UserDto;
import school.camera.validation.service.EmailExistsException;

@Controller
public class RegistrationController {

	private final Logger LOGGER = LoggerFactory.getLogger(getClass());

	// @Autowired
	// private IUserService service;

	@Autowired
	private MessageSource messages;

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private UserRepository repository;

    @Autowired
    private HashGenerator hashGenerator;
    
	/*
	 * @Autowired private ApplicationEventPublisher eventPublisher;
	 */

	public RegistrationController() {

	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}

	@RequestMapping(value = "/user/registration", method = RequestMethod.GET)
	public String showRegistrationForm(WebRequest request, Model model) {
		LOGGER.debug("Rendering registration page.");
		UserDto accountDto = new UserDto();
		model.addAttribute("user", accountDto);
		return "registration";
	}

	@RequestMapping(value = "/user/registration", method = RequestMethod.POST)
	public ModelAndView registerUserAccount(@ModelAttribute("user") @Valid UserDto accountDto, BindingResult result,
			WebRequest request, Errors errors) throws EmailExistsException {
		LOGGER.info("Registering user account with information: {}", accountDto);
		if (result.hasErrors()) {
			return new ModelAndView("registration", "user", accountDto);
		}

		User registered = createUserAccount(accountDto);
		if (registered == null) {
			result.rejectValue("email", "message.regError");
			return new ModelAndView("emailError", "user", accountDto);
		}
		return new ModelAndView("successRegister", "user", accountDto);
	}

	

	public User createUserAccount(UserDto accountDto) throws EmailExistsException {
		if (emailExist(accountDto.getEmail())) {
			throw new EmailExistsException("There is an account with that email adress: " + accountDto.getEmail());
		}
		User user = new User();
		//user.setFirstName(accountDto.getHo());
		//user.setLastName(accountDto.getTen());
		user.setEmail(accountDto.getEmail());
		user.setEnabled(true);
		user.setRole(new Role(Integer.valueOf(1), user));
		String hashedPassword = hashGenerator.getHashedPassword(accountDto.getPassword());
        user.setPassword(hashedPassword);
       /* user.setDiachi(" ");
        user.setGioitinh(true);
        user.setSdt(0);
        user.setSo_cmnd((long) 0);*/
    
		return repository.save(user);
	}

	private boolean emailExist(String email) {
		User user = repository.findByEmail(email);
		if (user != null) {
			return true;
		}
		return false;
	}
	// tao ma benh nhan
	private String generateAlias() {
		char[] chars = "1234567890abcdefghijklmnopqrstuvwxyz".toCharArray();
		StringBuilder sb = new StringBuilder();
		Random random = new Random();
		for (int i = 0; i < 13; i++) {
			char c = chars[random.nextInt(chars.length)];
			sb.append(c);
		}
		String result = sb.toString();
		return result;
	}

}
