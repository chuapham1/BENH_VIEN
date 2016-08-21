package school.camera.web.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
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
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import school.camera.persistence.dao.BacsiRepo;
import school.camera.persistence.dao.BenhAnRepo;
import school.camera.persistence.dao.BenhnhanRepo;
import school.camera.persistence.dao.ChitiettoaRepo;
import school.camera.persistence.dao.DKKhamRepo;
import school.camera.persistence.dao.ToathuocRepo;
import school.camera.persistence.dao.UserRepository;
import school.camera.persistence.model.Bacsi;
import school.camera.persistence.model.Benhan;
import school.camera.persistence.model.Benhnhan;
import school.camera.persistence.model.Chitiettoa;
import school.camera.persistence.model.DKKham;
import school.camera.persistence.model.Toathuoc;
import school.camera.persistence.model.User;
import school.camera.persistence.service.BenhNhanDto;
import school.camera.persistence.service.DKKhamDto;
import school.camera.persistence.service.KhamBenhDto;
import school.camera.persistence.service.ThuocDto;
import school.camera.persistence.service.UserDto;

@Controller
public class BenhNhanController {

	private final Logger LOGGER = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private UserRepository repository;
	
	@Autowired
	private BenhAnRepo benhAnRepo;
	
	@Autowired
	private DKKhamRepo dkKhamRepo;
	
	@Autowired
	private BacsiRepo bacsiRepo;
	
	@Autowired
	private ToathuocRepo toathuocRepo;
	
	@Autowired
	private ChitiettoaRepo chitiettoaRepo;
	
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
	public ModelAndView showHosoSForm(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession(false);
		LOGGER.debug("Rendering xemhosobenhan page.");
		String email = (String) session.getAttribute("email");
		LOGGER.info("username {}", email);
		User user = repository.findByEmail(email);
//		UserDto userDto = new UserDto();
//		userDto.setUserId(user.getUserid());
		Benhnhan benhNhan = benhnhanRepo.findByUser(user);
		
		BenhNhanDto benhNhanDto = new BenhNhanDto();
		benhNhanDto.setBenhnhan_id(benhNhan.getBenhnhan_id());
		benhNhanDto.setHo(benhNhan.getHo());
		benhNhanDto.setTen(benhNhan.getTen());
		benhNhanDto.setDiachi(benhNhan.getDiachi());
		DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		
		benhNhanDto.setNgaysinh(dateFormat.format(benhNhan.getNgaysinh()));
		
		List<Benhan> dsbenhAn = benhAnRepo.findByBenhnhan(benhNhan);
		List<KhamBenhDto> dskhamBenhDto = new ArrayList<KhamBenhDto>();
		for (Benhan benhAn : dsbenhAn) {
			KhamBenhDto khambenhDto = new KhamBenhDto();
			khambenhDto.setBenhan_id(benhAn.getBenhAnId());
			khambenhDto.setNgayKham(dateFormat.format(benhAn.getNgayKham()));
			if (benhAn.getNgayXuatVien() != null) {
				khambenhDto.setNgayXuatVien(dateFormat.format(benhAn.getNgayXuatVien()));
			}
			khambenhDto.setMoTaBenh(benhAn.getMoTaBenh());
			khambenhDto.setChuanDoan(benhAn.getChuanDoan());
			khambenhDto.setTenBacSi(benhAn.getBacsi().getHo() + benhAn.getBacsi().getTen());
			dskhamBenhDto.add(khambenhDto);
		}
		ModelAndView mav = new ModelAndView("xemhosobenhan", "benhNhan", benhNhanDto);
		mav.addObject("dskhamBenhDto", dskhamBenhDto);
		return mav;
		
		
	}
	
	@RequestMapping(value = "/chitiet/{id}", method = RequestMethod.GET)
	public ModelAndView chiTiet(HttpServletRequest request, Model model, @PathVariable("id") Long benhAnId) {
		LOGGER.info("chitiet page controller ");
		Benhan benhAn = benhAnRepo.findByBenhAnId(benhAnId);
		DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		KhamBenhDto khambenhDto = new KhamBenhDto();
		khambenhDto.setBenhan_id(benhAn.getBenhAnId());
		khambenhDto.setNgayKham(dateFormat.format(benhAn.getNgayKham()));
		if (benhAn.getNgayXuatVien() != null) {
			khambenhDto.setNgayXuatVien(dateFormat.format(benhAn.getNgayXuatVien()));
		}
		khambenhDto.setMoTaBenh(benhAn.getMoTaBenh());
		khambenhDto.setChuanDoan(benhAn.getChuanDoan());
		khambenhDto.setTenBacSi(benhAn.getBacsi().getHo() + benhAn.getBacsi().getTen());
		LOGGER.info("toathuoc {}", toathuocRepo.findByBenhan(benhAn).size());
		Toathuoc toathuoc = toathuocRepo.findByBenhan(benhAn).get(0);
		List<Chitiettoa> dsChiTietToa = chitiettoaRepo.findByToathuoc(toathuoc);
		
		List<ThuocDto> dsChiTietToaDto = new ArrayList<ThuocDto>();
		for (Chitiettoa chitiettoa : dsChiTietToa) {
			ThuocDto thuocDto = new ThuocDto(chitiettoa.getTenThuoc(), chitiettoa.getDonVi(), chitiettoa.getSoLuong());
			dsChiTietToaDto.add(thuocDto);
		}
		String matoa = toathuoc.getMaToa().toString();
		ModelAndView mav = new ModelAndView("chitiet", "benhAn", khambenhDto);
		mav.addObject("dsChiTietToa", dsChiTietToaDto);
		mav.addObject("matoa", matoa);
		return mav;
	}
	
	@RequestMapping(value = "/dangkykham", method = RequestMethod.GET)
	public ModelAndView showViewDKForm(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession(false);
		LOGGER.debug("Rendering dangkykham page.");
		String email = (String) session.getAttribute("email");
		LOGGER.info("username {}", email);
		
		User user = repository.findByEmail(email);
		
		DKKhamDto dkKhamDto = new DKKhamDto();
		Benhnhan benhNhan = benhnhanRepo.findByUser(user);		
		dkKhamDto.setMaBenhNhan(benhNhan.getBenhnhan_id());
		LinkedHashMap<Long, String> bacsi = new LinkedHashMap<Long, String>();
		
		List<Bacsi> bacsis= bacsiRepo.findAll();
		for (Bacsi bacsi2 : bacsis) {
			LOGGER.info("bacsi {}", bacsi2.getBacsiId());
			bacsi.put(bacsi2.getBacsiId(), bacsi2.getHo() + " " + bacsi2.getTen());
		}
		
		
		ModelAndView mav = new ModelAndView("dangkykham", "dkKham", dkKhamDto);
		mav.addObject("bacsi", bacsi);
		return mav;
	}
	
	@RequestMapping(value = "/dangkykham", method = RequestMethod.POST)
	public ModelAndView saveDKForm(HttpServletRequest request, Model model, @ModelAttribute("dkKham") DKKhamDto dkKhamDto) throws ParseException {
		HttpSession session = request.getSession(false);
		LOGGER.debug("Rendering dangkykham page.");
		String email = (String) session.getAttribute("email");
		LOGGER.info("username {}", email);
		User user = repository.findByEmail(email);
		
		Benhnhan benhNhan = benhnhanRepo.findByUser(user);		
		
		Bacsi bacsiKham = bacsiRepo.findByBacsiId(dkKhamDto.getBacsiId());
		
		DKKham dkKham = new DKKham();
		dkKham.setBacsi(bacsiKham);
		dkKham.setBenhnhan(benhNhan);
		 SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
		 Date ngayKham = simpleDateFormat.parse(dkKhamDto.getNgayKham()+ " " + dkKhamDto.getGioKham());
		    
		dkKham.setNgay_dang_ky(ngayKham);
		dkKham.setTrieu_chung(dkKhamDto.getTrieuChung());
		dkKhamRepo.save(dkKham);
		
		LinkedHashMap<Long, String> bacsi = new LinkedHashMap<Long, String>();
		
		List<Bacsi> bacsis= bacsiRepo.findAll();
		for (Bacsi bacsi2 : bacsis) {
			LOGGER.info("bacsi {}", bacsi2.getBacsiId());
			bacsi.put(bacsi2.getBacsiId(), bacsi2.getHo() + " " + bacsi2.getTen());
		}
		
		ModelAndView mav = new ModelAndView("dangkykham", "dkKham", dkKhamDto);
		mav.addObject("bacsi", bacsi);
		return mav;
	}
	
	
	
}
