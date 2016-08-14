package school.camera.persistence.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Benhnhan {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long benhnhan_id;
	
	private String ho;

	private String ten;	
	
	private String diachi;
	
	private long sdt;
	
	private Date ngaysinh;
	
	private String so_cmnd;

	 @OneToOne(targetEntity = User.class, fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	 @JoinColumn(name = "user_id") //column cua bang role trong db ma no chua cai userid cua user
	 private User user;
	 
	 
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
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

	public Date getNgaysinh() {
		return ngaysinh;
	}

	public void setNgaysinh(Date ngaysinh) {
		this.ngaysinh = ngaysinh;
	}

	public String getSo_cmnd() {
		return so_cmnd;
	}

	public void setSo_cmnd(String so_cmnd) {
		this.so_cmnd = so_cmnd;
	}
	
	
}
