package school.camera.web.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

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
import org.springframework.web.bind.annotation.RequestParam;
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
import school.camera.persistence.service.KhamBenhDto;
import school.camera.persistence.service.ThuocDto;
import school.camera.persistence.service.UserDto;

@Controller
public class BacSiController {

	@Autowired
	private UserRepository repository;

	@Autowired
	private DKKhamRepo dkKhamRepo;

	@Autowired
	private ToathuocRepo toathuocRepo;
	
	@Autowired
	private ChitiettoaRepo chitiettoaRepo;
	
	@Autowired
	private BenhAnRepo benhAnRepo;

	@Autowired
	private BacsiRepo bacsiRepo;

	@Autowired
	private BenhnhanRepo benhnhanRepo;

	private final Logger LOGGER = LoggerFactory.getLogger(getClass());
	private static List<ThuocDto> dsThuoc = new ArrayList<ThuocDto>();
	// themthuoc
	@RequestMapping(value = "/khambenh/themthuoc", method = RequestMethod.GET)
	public String themthuoc(HttpServletRequest request, Model model, @RequestParam("tenthuoc") String tenthuoc,
			@RequestParam("soluong") int soluong, @RequestParam("donvi") String donvi) {
		ThuocDto thuoc = new ThuocDto(tenthuoc, donvi, soluong);
		HttpSession session = request.getSession(false);		
		dsThuoc.add(thuoc);		
		for (ThuocDto thuocDto : dsThuoc) {
			LOGGER.info(thuocDto.getDonVi() + " " + thuocDto.getSoLuong() + " " + thuocDto.getTenThuoc());
		}
		LOGGER.info("Rthem thuoc page." + tenthuoc + " " + soluong + " " + donvi);
		String email = (String) session.getAttribute("email");
		LOGGER.info("username {}", email);
		return "ok";

	}

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
		// return "bs_khambenh";
	}

	@RequestMapping(value = "/khambenh/{id}", method = RequestMethod.GET)
	public ModelAndView khamBenh(HttpServletRequest request, Model model, @PathVariable("id") Long benhNhanId) {
		HttpSession session = request.getSession(false);
		LOGGER.debug("Rendering bs_khambenh page.");
		String email = (String) session.getAttribute("email");
		LOGGER.info("username {}", email);
		User user = repository.findByEmail(email);

		Benhnhan benhNhan = benhnhanRepo.findByBenhnhanId(benhNhanId);

		KhamBenhDto khamBenhDto = new KhamBenhDto();
		khamBenhDto.setBenhnhan_id(benhNhan.getBenhnhan_id());
		khamBenhDto.setHoTen(benhNhan.getHo() + " " + benhNhan.getTen());

		List<DKKham> dkKhams = dkKhamRepo.findByBenhnhan(benhNhan);
		for (DKKham dkKham : dkKhams) {
			khamBenhDto.setTrieuchung(dkKham.getTrieu_chung());
			System.out.println(dkKham.getTrieu_chung());
			break;
		}
		// DKKham dkKham = dkKhams.get(0);

		ModelAndView mav = new ModelAndView("khambenh");
		mav.addObject("khamBenh", khamBenhDto);
		return mav;
		// return "bs_khambenh";
	}

	private boolean xoaDangKyKham(Benhnhan benhNhan) {

		List<DKKham> dkKhams = dkKhamRepo.findByBenhnhan(benhNhan);
		for (DKKham dkKham : dkKhams) {
			dkKhamRepo.delete(dkKham);
		}
		return true;
	}

	@RequestMapping(value = "/khambenh/{id}", method = RequestMethod.POST)
	public ModelAndView savekhamBenh(HttpServletRequest request, Model model, @PathVariable("id") Long benhNhanId,
			@ModelAttribute("khamBenh") KhamBenhDto khamBenhDto) {
		HttpSession session = request.getSession(false);
		LOGGER.debug("Rendering bs_khambenh page.");
		String email = (String) session.getAttribute("email");
		LOGGER.info("username {}", email);
		User user = repository.findByEmail(email);
		Benhnhan benhNhan = benhnhanRepo.findByBenhnhanId(benhNhanId);
		Benhan benhAn = new Benhan();
		benhAn.setChuanDoan(khamBenhDto.getChuanDoan());
		benhAn.setDanDo(khamBenhDto.getDanDo());
		benhAn.setLoaiDieuTri(khamBenhDto.isLoaiDieuTri());
		benhAn.setMoTaBenh(khamBenhDto.getMoTaBenh());
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
		if (!khamBenhDto.isLoaiDieuTri()) {
			// neu ngoai tru thi ngay kham - ngay xuat va coa khoi ds benh nhan.
			benhAn.setNgayKham(new Date());
			benhAn.setNgayXuatVien(new Date());
			xoaDangKyKham(benhNhan);
		} else {
			try {
				Date ngayKham = simpleDateFormat.parse(khamBenhDto.getNgayKham());
				benhAn.setNgayKham(ngayKham);
			} catch (Exception e) {
				benhAn.setNgayKham(new Date());
			}

			try {
				Date ngayXuatVien = simpleDateFormat.parse(khamBenhDto.getNgayXuatVien());
				benhAn.setNgayXuatVien(ngayXuatVien);
				// neu xuat xoa khoi danh sach benh nhan
				LOGGER.info("xoa dang ky kham");
				xoaDangKyKham(benhNhan);
			} catch (Exception e) {
				benhAn.setNgayXuatVien(null);
			}
		}

		Bacsi bacsi = bacsiRepo.findByUser(user);

		benhAn.setBenhnhan(benhNhan);
		benhAn.setBacsi(bacsi);
		benhAnRepo.save(benhAn);
		
		// save thuoc to db
		Toathuoc toaThuoc = new Toathuoc();
		//toaThuoc.setChitiettoa(dschitiettoa);
		toaThuoc.setBenhan(benhAn);
		//save toa thuoc to db.
		toathuocRepo.save(toaThuoc);
		//Set<Chitiettoa> dschitiettoa = new HashSet<Chitiettoa>(0);
		for (ThuocDto thuocDto : dsThuoc) {
			Chitiettoa chiTietToa = new Chitiettoa();
			chiTietToa.setTenThuoc(thuocDto.getTenThuoc());
			chiTietToa.setDonVi(thuocDto.getDonVi());
			chiTietToa.setSoLuong(thuocDto.getSoLuong());
			chiTietToa.setToathuoc(toaThuoc);
			//save chit tiet  toa thuoc to db
			chitiettoaRepo.save(chiTietToa);
		}

		ModelAndView mav = new ModelAndView("khambenh");
		mav.addObject("khamBenh", khamBenhDto);
		return mav;
	}

}
