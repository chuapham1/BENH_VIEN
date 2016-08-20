package school.camera.persistence.service;

public class ThuocDto {
 String tenThuoc;
 String donVi;
 int soLuong;
 
public ThuocDto(String tenThuoc, String donVi, int soLuong) {
	super();
	this.tenThuoc = tenThuoc;
	this.donVi = donVi;
	this.soLuong = soLuong;
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
 
}
