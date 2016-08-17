package school.camera.persistence.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Benhnhan {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long benhnhanId;
	
	private String ho;

	private String ten;	
	
	private String diachi;
	
	private long sdt;
	
	private boolean gioitinh;
	
	private Date ngaysinh;
	
	private long soCmnd;

	 @OneToOne(targetEntity = User.class, fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	 @JoinColumn(name = "user_id") //column cua bang bn trong db ma no chua cai userid cua user
	 private User user;
	 
	 @OneToMany(fetch = FetchType.EAGER , mappedBy = "benhnhan")
	 private Set<DKKham> DKKhams = new HashSet<DKKham>(0);
	 
	 @OneToMany(fetch = FetchType.EAGER , mappedBy = "benhnhan")
	 private Set<BenhAn> benhAns = new HashSet<BenhAn>(0);
	
	 
	public Set<BenhAn> getBenhAns() {
		return benhAns;
	}

	public void setBenhAns(Set<BenhAn> benhAns) {
		this.benhAns = benhAns;
	}

	public Set<DKKham> getDKKhams() {
		return DKKhams;
	}

	public void setDKKhams(Set<DKKham> dKKhams) {
		DKKhams = dKKhams;
	}

	public boolean isGioitinh() {
		return gioitinh;
	}

	public void setGioitinh(boolean gioitinh) {
		this.gioitinh = gioitinh;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Long getBenhnhan_id() {
		return benhnhanId;
	}

	public void setBenhnhan_id(Long benhnhan_id) {
		this.benhnhanId = benhnhan_id;
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

	public Date getNgaysinh() {
		return ngaysinh;
	}

	public void setNgaysinh(Date ngaysinh) {
		this.ngaysinh = ngaysinh;
	}

	public long getSo_cmnd() {
		return soCmnd;
	}

	public void setSo_cmnd(long so_cmnd) {
		this.soCmnd = so_cmnd;
	}

	
	
	
}
