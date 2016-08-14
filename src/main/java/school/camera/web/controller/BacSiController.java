package school.camera.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import school.camera.persistence.model.User;
import school.camera.persistence.service.UserDto;

@Controller
public class BacSiController {

	private final Logger LOGGER = LoggerFactory.getLogger(getClass());
	
	@RequestMapping(value = "/bs_khambenh", method = RequestMethod.GET)
	public String showRegistrationForm(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession(false);
		LOGGER.debug("Rendering bs_khambenh page.");
		String email = (String) session.getAttribute("email");
		LOGGER.info("username {}", email);
		
		return "bs_khambenh";
	}
}
