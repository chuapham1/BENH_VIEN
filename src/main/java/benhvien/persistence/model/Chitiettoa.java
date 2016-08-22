package benhvien.persistence.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Chitiettoa {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long chiTietToaId;
	String tenThuoc;
	String donVi;
	int soLuong;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "matoathuoc", nullable = false)
	private Toathuoc toathuoc;

	public Long getChiTietToaId() {
		return chiTietToaId;
	}

	public void setChiTietToaId(Long chiTietToaId) {
		this.chiTietToaId = chiTietToaId;
	}

	public String getTenThuoc() {
		return tenThuoc;
	}

	public void setTenThuoc(String tenThuoc) {
		this.tenThuoc = tenThuoc;
	}

	public String getDonVi() {
		return donVi;
	}

	public void setDonVi(String donVi) {
		this.donVi = donVi;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public Toathuoc getToathuoc() {
		return toathuoc;
	}

	public void setToathuoc(Toathuoc toathuoc) {
		this.toathuoc = toathuoc;
	}

	

}
