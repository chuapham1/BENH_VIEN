package benhvien.web.controller;

import java.util.Date;
import java.util.Random;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import benhvien.hashing.HashGenerator;
import benhvien.persistence.dao.BenhnhanRepo;
import benhvien.persistence.dao.UserRepository;
import benhvien.persistence.model.Bacsi;
import benhvien.persistence.model.Benhnhan;
import benhvien.persistence.model.Role;
import benhvien.persistence.model.User;
import benhvien.persistence.service.BenhNhanDto;
import benhvien.persistence.service.IUserService;
import benhvien.persistence.service.UserDto;
import benhvien.validation.service.EmailExistsException;

@Controller
public class RegistrationController {

	private final Logger LOGGER = LoggerFactory.getLogger(getClass());

	// @Autowired
	// private IUserService service;

	@Autowired
	private UserRepository repository;

	@Autowired
	private HashGenerator hashGenerator;

	@Autowired
	private BenhnhanRepo benhnhanRepo;

	/*
	 * @Autowired private ApplicationEventPublisher eventPublisher;
	 */

	public RegistrationController() {

	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView showAdmin(WebRequest request, Model model) {
		LOGGER.debug("Rendering registration page.");
		UserDto accountDto = new UserDto();
		model.addAttribute("user", accountDto);
		ModelAndView mav = new ModelAndView("admin", "user", accountDto);
		return mav;

	}

	@RequestMapping(value = "/admin", method = RequestMethod.POST)
	public ModelAndView createBacsi(@ModelAttribute("user")  UserDto accountDto, BindingResult result,
			WebRequest request, Errors errors) {
		LOGGER.info("Registering user bac si account with information: {}", accountDto);

		String mess = "";
		try {
			User registered = createBacsiAccount(accountDto);
		
			mess = "Dang ky thanh cong";
			ModelAndView mav = new ModelAndView("admin", "user", accountDto);
			mav.addObject("mess", mess);
			LOGGER.info("thanh cong");
			return mav;
			// return new ModelAndView("admin", "user", accountDto);
		} catch (Exception e) {
			mess = "Du lieu khong hop le!";
			ModelAndView mav = new ModelAndView("admin", "user", accountDto);
			mav.addObject("mess", mess);

		
			return mav;
		}catch (EmailExistsException e) {
			result.rejectValue("email", "message.regError");
			return new ModelAndView("emailError", "user", accountDto);
		}

	}

	public User createBacsiAccount(UserDto accountDto) throws EmailExistsException {
		if (emailExist(accountDto.getEmail())) {
			throw new EmailExistsException("There is an account with that email adress: " + accountDto.getEmail());
		}
		User user = new User();

		user.setEmail(accountDto.getEmail());
		user.setEnabled(true);
		user.setRole(new Role(Integer.valueOf(3), user));
		String hashedPassword = hashGenerator.getHashedPassword(accountDto.getPassword());
		user.setPassword(hashedPassword);

		Bacsi bacsi = new Bacsi();
		bacsi.setDiachi(accountDto.getDiachi());
		bacsi.setHo(accountDto.getHo());
		bacsi.setSdt(accountDto.getSdt());
		bacsi.setTen(accountDto.getTen());
		bacsi.setUser(user);

		user.setBacsi(bacsi);
		return repository.save(user);
	}

	@RequestMapping(value = "/user/registration", method = RequestMethod.GET)
	public String showRegistrationForm(WebRequest request, Model model) {
		LOGGER.debug("Rendering registration page.");
		UserDto accountDto = new UserDto();
		model.addAttribute("user", accountDto);
		return "registration";
	}

	@RequestMapping(value = "/user/registration", method = RequestMethod.POST)
	public ModelAndView registerUserAccount(@ModelAttribute("user")  UserDto accountDto, BindingResult result,
			WebRequest request, Errors errors) {
		LOGGER.info("Registering user account with information: {}", accountDto);

		String mess = "";
		try {
			User registered = createUserAccount(accountDto);
		
			//mess = "Dang ky thanh cong";
			ModelAndView mav = new ModelAndView("successRegister", "user", accountDto);
			//mav.addObject("mess", mess);
			LOGGER.info("thanh cong");
			return mav;
			// return new ModelAndView("admin", "user", accountDto);
		} catch (Exception e) {
			mess = "Du lieu khong hop le!";
			ModelAndView mav = new ModelAndView("registration", "user", accountDto);
			mav.addObject("mess", mess);
			return mav;
		}catch (EmailExistsException e) {
			result.rejectValue("email", "message.regError");
			return new ModelAndView("emailError", "user", accountDto);
		}
		
		/*if (result.hasErrors()) {
			return new ModelAndView("registration", "user", accountDto);
		}

		User registered = createUserAccount(accountDto);
		if (registered == null) {
			result.rejectValue("email", "message.regError");
			return new ModelAndView("emailError", "user", accountDto);
		}

		return new ModelAndView("successRegister", "user", accountDto);*/
	}

	public User createUserAccount(UserDto accountDto) throws EmailExistsException {
		if (emailExist(accountDto.getEmail())) {
			throw new EmailExistsException("There is an account with that email adress: " + accountDto.getEmail());
		}
		User user = new User();
		// user.setFirstName(accountDto.getHo());
		// user.setLastName(accountDto.getTen());
		user.setEmail(accountDto.getEmail());
		user.setEnabled(true);
		user.setRole(new Role(Integer.valueOf(1), user));
		String hashedPassword = hashGenerator.getHashedPassword(accountDto.getPassword());
		user.setPassword(hashedPassword);

		Benhnhan benhNhan = new Benhnhan();
		benhNhan.setDiachi(" ");
		benhNhan.setHo(accountDto.getHo());
		benhNhan.setNgaysinh(new Date());
		benhNhan.setSdt(0);
		benhNhan.setTen(accountDto.getTen());
		benhNhan.setSo_cmnd(0);
		benhNhan.setUser(user);
		benhNhan.setGioitinh(true);

		/// ??????
		user.setBenhnhan(benhNhan);
		// benhnhanRepo.save(benhNhan);

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
