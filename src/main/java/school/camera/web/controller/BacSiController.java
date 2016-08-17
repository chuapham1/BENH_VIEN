package school.camera.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import school.camera.persistence.dao.BacsiRepo;
import school.camera.persistence.dao.BenhnhanRepo;
import school.camera.persistence.dao.DKKhamRepo;
import school.camera.persistence.dao.UserRepository;
import school.camera.persistence.model.Bacsi;
import school.camera.persistence.model.Benhnhan;
import school.camera.persistence.model.DKKham;
import school.camera.persistence.model.User;
import school.camera.persistence.service.BenhNhanDto;
import school.camera.persistence.service.KhamBenhDto;
import school.camera.persistence.service.UserDto;

@Controller
public class BacSiController {

	@Autowired
	private UserRepository repository;
	
	@Autowired
	private DKKhamRepo dkKhamRepo;
	
	@Autowired
	private BacsiRepo bacsiRepo;
	
	@Autowired
	private BenhnhanRepo benhnhanRepo;
	
	private final Logger LOGGER = LoggerFactory.getLogger(getClass());
	
	@RequestMapping(value = "/bs_khambenh", method = RequestMethod.GET)
	public ModelAndView showKhamBenhForm(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession(false);
		LOGGER.debug("Rendering bs_khambenh page.");
		String email = (String) session.getAttribute("email");
		LOGGER.info("username {}", email);
		User user = repository.findByEmail(email);
		Bacsi bacsi = bacsiRepo.findByUser(user);
		List<DKKham> dsDkKham = dkKhamRepo.findByBacsi(bacsi);
		System.out.println("  " + dsDkKham.size());
		List<BenhNhanDto> BenhNhans = new ArrayList<BenhNhanDto>();
		for (DKKham dkKham : dsDkKham) {
			BenhNhanDto benhNhanDto = new BenhNhanDto();
			benhNhanDto.setBenhnhan_id(dkKham.getBenhnhan().getBenhnhan_id());
			benhNhanDto.setHo(dkKham.getBenhnhan().getHo());
			benhNhanDto.setTen(dkKham.getBenhnhan().getTen());
			BenhNhans.add(benhNhanDto);
			
		}
		ModelAndView mav = new ModelAndView("bs_khambenh");
		mav.addObject("benhNhans", BenhNhans);
		return mav;
		//return "bs_khambenh";
	}
	
	@RequestMapping(value = "/khambenh/{id}", method = RequestMethod.GET)
	public ModelAndView khamBenh(HttpServletRequest request, Model model,@PathVariable("id") Long benhNhanId) {
		HttpSession session = request.getSession(false);
		LOGGER.debug("Rendering bs_khambenh page.");
		String email = (String) session.getAttribute("email");
		LOGGER.info("username {}", email);
		User user = repository.findByEmail(email);
		
		Benhnhan benhNhan = benhnhanRepo.findByBenhnhanId(benhNhanId);
		
		
		KhamBenhDto khamBenhDto = new KhamBenhDto();
		khamBenhDto.setBenhnhan_id(benhNhan.getBenhnhan_id());
		khamBenhDto.setHo(benhNhan.getHo());
		khamBenhDto.setTen(benhNhan.getTen());
		
		List<DKKham> dkKhams = dkKhamRepo.findByBenhnhan(benhNhan);
		for (DKKham dkKham : dkKhams) {
			khamBenhDto.setTrieuchung(dkKham.getTrieu_chung());
			System.out.println(dkKham.getTrieu_chung());
			break;
		}
		//DKKham dkKham = dkKhams.get(0);
		
		
		
		ModelAndView mav = new ModelAndView("khambenh");
		mav.addObject("khamBenh", khamBenhDto);
		return mav;
		//return "bs_khambenh";
	}
	
	@RequestMapping(value = "/khambenh/{id}", method = RequestMethod.POST)
	public ModelAndView savekhamBenh(HttpServletRequest request, Model model, @PathVariable("id") Long benhNhanId,@ModelAttribute("khamBenh") KhamBenhDto khamBenhDto) {
		HttpSession session = request.getSession(false);
		LOGGER.debug("Rendering bs_khambenh page.");
		String email = (String) session.getAttribute("email");
		LOGGER.info("username {}", email);
		User user = repository.findByEmail(email);
		
		Benhnhan benhNhan = benhnhanRepo.findByBenhnhanId(benhNhanId);
		
		ModelAndView mav = new ModelAndView("khambenh");
		mav.addObject("khamBenh", khamBenhDto);
		return mav;		
	}
	
	
}
