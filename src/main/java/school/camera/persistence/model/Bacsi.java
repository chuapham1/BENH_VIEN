package school.camera.persistence.model;

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
public class Bacsi {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long bacsiId;
	
	private String ho;

	private String ten;	
	
	private String diachi;
	
	private long sdt;

	@OneToOne(targetEntity = User.class, fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name = "user_id")
	private User user;
	 
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "bacsi")
	private Set<DKKham> DKKhams = new HashSet<DKKham>(0);
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "bacsi")
	private Set<BenhAn> benhAns = new HashSet<BenhAn>(0);
	
	
	public Set<BenhAn> getBenhAns() {
		return benhAns;
	}

	public void setBenhAns(Set<BenhAn> benhAns) {
		this.benhAns = benhAns;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	
	public Long getBacsiId() {
		return bacsiId;
	}

	public void setBacsiId(Long bacsiId) {
		this.bacsiId = bacsiId;
	}

	public Set<DKKham> getDKKhams() {
		return DKKhams;
	}

	public void setDKKhams(Set<DKKham> dKKhams) {
		DKKhams = dKKhams;
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
	

}