package school.camera.persistence.service;

import java.util.Date;

public class BenhNhanDto {

	private Long benhnhan_id;
	
	private String ho;

	private String ten;	
	
	private String diachi;
	
	private long sdt;
	
	private String ngaysinh;
	
	private String so_cmnd;

	private boolean gioitinh;
	
	public boolean isGioitinh() {
		return gioitinh;
	}

	public void setGioitinh(boolean gioitinh) {
		this.gioitinh = gioitinh;
	}

	public Long getBenhnhan_id() {
		return benhnhan_id;
	}

	public void setBenhnhan_id(Long benhnhan_id) {
		this.benhnhan_id = benhnhan_id;
	}

	public String getHo() {
		return ho;
	}

	public void setHo(String ho) {
		this.ho = ho;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public long getSdt() {
		return sdt;
	}

	public void setSdt(long sdt) {
		this.sdt = sdt;
	}

	public String getNgaysinh() {
		return ngaysinh;
	}

	public void setNgaysinh(String ngaysinh) {
		this.ngaysinh = ngaysinh;
	}

	public String getSo_cmnd() {
		return so_cmnd;
	}

	public void setSo_cmnd(String so_cmnd) {
		this.so_cmnd = so_cmnd;
	}
	
	
}
