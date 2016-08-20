package school.camera.persistence.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Benhan {


	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long benhAnId;
	
	private Date ngayKham;
	
	private String moTaBenh;
	
	private String chuanDoan;
	
	private boolean loaiDieuTri;
	
	private Date ngayXuatVien;
	
	private String danDo;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "benhnhan_id", nullable = false)
	private Benhnhan benhnhan;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "bacsi_id", nullable = false)
	private Bacsi bacsi;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "Benhan")
	private Set<Toathuoc> toaThuocs = new HashSet<Toathuoc>(0);
	
	


	public Set<Toathuoc> getToaThuocs() {
		return toaThuocs;
	}

	public void setToaThuocs(Set<Toathuoc> toaThuocs) {
		this.toaThuocs = toaThuocs;
	}

	public Long getBenhAnId() {
		return benhAnId;
	}

	public void setBenhAnId(Long benhAnId) {
		this.benhAnId = benhAnId;
	}

	public Date getNgayKham() {
		return ngayKham;
	}

	public void setNgayKham(Date ngayKham) {
		this.ngayKham = ngayKham;
	}

	public String getMoTaBenh() {
		return moTaBenh;
	}

	public void setMoTaBenh(String moTaBenh) {
		this.moTaBenh = moTaBenh;
	}

	public String getChuanDoan() {
		return chuanDoan;
	}

	public void setChuanDoan(String chuanDoan) {
		this.chuanDoan = chuanDoan;
	}

	public boolean isLoaiDieuTri() {
		return loaiDieuTri;
	}

	public void setLoaiDieuTri(boolean loaiDieuTri) {
		this.loaiDieuTri = loaiDieuTri;
	}

	public Date getNgayXuatVien() {
		return ngayXuatVien;
	}

	public void setNgayXuatVien(Date ngayXuatVien) {
		this.ngayXuatVien = ngayXuatVien;
	}

	public String getDanDo() {
		return danDo;
	}

	public void setDanDo(String danDo) {
		this.danDo = danDo;
	}

	public Benhnhan getBenhnhan() {
		return benhnhan;
	}

	public void setBenhnhan(Benhnhan benhnhan) {
		this.benhnhan = benhnhan;
	}

	public Bacsi getBacsi() {
		return bacsi;
	}

	public void setBacsi(Bacsi bacsi) {
		this.bacsi = bacsi;
	}
	
	
}
