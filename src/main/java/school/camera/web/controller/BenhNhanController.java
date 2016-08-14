package school.camera.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;

import school.camera.persistence.dao.UserRepository;
import school.camera.persistence.model.User;
import school.camera.persistence.service.UserDto;

@Controller
public class BenhNhanController {

	private final Logger LOGGER = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private UserRepository repository;
	
	@RequestMapping(value = "/thongtinbenhnhan", method = RequestMethod.GET)
	public String showRegistrationForm(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession(false);
		LOGGER.debug("Rendering thongtinbenhnhan page.");
		String email = (String) session.getAttribute("email");
		LOGGER.info("username {}", email);
		User user = repository.findByEmail(email);
		UserDto userDto = new UserDto();
		/*userDto.setUserId(user.getUserid());
		userDto.setDiachi(user.getDiachi());
		userDto.setEmail(user.getEmail());
		userDto.setGioitinh(user.isGioitinh());
		userDto.setHo(user.getFirstName());
		userDto.setTen(user.getLastName());
		//userDto.setNgaysinh(user.get);
		userDto.setSdt(user.getSdt());
		userDto.setSo_cmnd(user.getSo_cmnd().toString());*/
		model.addAttribute("user", userDto);
		return "thongtinbenhnhan";
	}
	
	@RequestMapping(value = "/xemhosobenhan", method = RequestMethod.GET)
	public String showViewHSForm(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession(false);
		LOGGER.debug("Rendering xemhosobenhan page.");
		String email = (String) session.getAttribute("email");
		LOGGER.info("username {}", email);
		User user = repository.findByEmail(email);
		UserDto userDto = new UserDto();
		userDto.setUserId(user.getUserid());
		/*userDto.setDiachi(user.getDiachi());
		//userDto.setEmail(user.getEmail());
		userDto.setGioitinh(user.isGioitinh());
		userDto.setHo(user.getFirstName());
		userDto.setTen(user.getLastName());
		//userDto.setNgaysinh(user.get);
		userDto.setSdt(user.getSdt());*/
		//userDto.setSo_cmnd(user.getSo_cmnd().toString());
		model.addAttribute("user", userDto);
		return "xemhosobenhan";
	}
	
	@RequestMapping(value = "/dangkykham", method = RequestMethod.GET)
	public String showViewTDForm(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession(false);
		LOGGER.debug("Rendering dangkykham page.");
		String email = (String) session.getAttribute("email");
		LOGGER.info("username {}", email);
		User user = repository.findByEmail(email);
		UserDto userDto = new UserDto();
		userDto.setUserId(user.getUserid());
		//userDto.setDiachi(user.getDiachi());
		//userDto.setEmail(user.getEmail());
		//userDto.setGioitinh(user.isGioitinh());
		//userDto.setHo(user.getFirstName());
		//userDto.setTen(user.getLastName());
		//userDto.setNgaysinh(user.get);
		//userDto.setSdt(user.getSdt());
		//userDto.setSo_cmnd(user.getSo_cmnd().toString());
		model.addAttribute("user", userDto);
		return "dangkykham";
	}
	
}
