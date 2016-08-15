package school.camera.web.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import school.camera.persistence.dao.BenhnhanRepo;
import school.camera.persistence.dao.UserRepository;
import school.camera.persistence.model.Benhnhan;
import school.camera.persistence.model.User;
import school.camera.persistence.service.BenhNhanDto;
import school.camera.persistence.service.UserDto;

@Controller
public class BenhNhanController {

	private final Logger LOGGER = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private UserRepository repository;
	
	@Autowired
	private BenhnhanRepo benhnhanRepo;
	
	@RequestMapping(value = "/thongtinbenhnhan", method = RequestMethod.GET)
	public ModelAndView showThongTinBenhNhan(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession(false);
		LOGGER.debug("Rendering thongtinbenhnhan page.");
		String email = (String) session.getAttribute("email");
		LOGGER.info("username {}", email);
		User user = repository.findByEmail(email);
		Benhnhan benhNhan = benhnhanRepo.findByUser(user);
		BenhNhanDto benhnhanDto = new BenhNhanDto();
		benhnhanDto.setBenhnhan_id(benhNhan.getBenhnhan_id());
		benhnhanDto.setDiachi(benhNhan.getDiachi());
		benhnhanDto.setHo(benhNhan.getHo());
		benhnhanDto.setNgaysinh(new SimpleDateFormat("dd-MM-yyyy").format(benhNhan.getNgaysinh()));
		benhnhanDto.setSdt(benhNhan.getSdt());
		benhnhanDto.setSo_cmnd(Long.toString(benhNhan.getSo_cmnd()));
		benhnhanDto.setTen(benhNhan.getTen());
		benhnhanDto.setGioitinh(benhNhan.isGioitinh());
		model.addAttribute("benhNhan", benhnhanDto);
		
		ModelAndView mav = new ModelAndView("thongtinbenhnhan", "benhNhan", benhnhanDto);
		
		return mav;
	}
	

	@RequestMapping(value = "/thongtinbenhnhan", method = RequestMethod.POST)
	public ModelAndView saveThongTinBenhNhan(HttpServletRequest request, Model model, @ModelAttribute("benhNhan") BenhNhanDto benhnhanDto) throws ParseException {
		HttpSession session = request.getSession(false);
		LOGGER.debug("Rendering thongtinbenhnhan page.");
		String email = (String) session.getAttribute("email");
		LOGGER.info("username {}", email);
		User user = repository.findByEmail(email);
		Benhnhan benhNhan = benhnhanRepo.findByUser(user);		
		//benhnhanDto.setBenhnhan_id(benhNhan.getBenhnhan_id());
		benhNhan.setDiachi(benhnhanDto.getDiachi());
		benhNhan.setHo(benhnhanDto.getHo());
	    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
	    Date ngaysinh = simpleDateFormat.parse(benhnhanDto.getNgaysinh());
		benhNhan.setNgaysinh(ngaysinh);
		benhNhan.setSdt(benhnhanDto.getSdt());
		benhNhan.setSo_cmnd(Long.parseLong(benhnhanDto.getSo_cmnd()));
		benhNhan.setTen(benhnhanDto.getTen());
		benhNhan.setGioitinh(benhnhanDto.isGioitinh());
		
		benhnhanRepo.save(benhNhan);
		
		model.addAttribute("benhNhan", benhnhanDto);		
		ModelAndView mav = new ModelAndView("thongtinbenhnhan", "benhNhan", benhnhanDto);
		
		return mav;
		
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
	public String showViewDKForm(HttpServletRequest request, Model model) {
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
