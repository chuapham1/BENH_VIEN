package benhvien.persistence.model;

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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class ChitietBenhAn {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long ctBenhanId;
	
	private Date ngayKham;
	
	private String chanDoan;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "benhan_id", nullable = false)
	private Benhan benhan;
	
//	@OneToMany(fetch = FetchType.EAGER, mappedBy = "chitietBenhAn")
//	private Set<Toathuoc> toaThuocs = new HashSet<Toathuoc>(0);

	@OneToOne(mappedBy = "chitietBenhAn", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private Toathuoc toathuoc;
	
	public Long getCtBenhanId() {
		return ctBenhanId;
	}

	public void setCtBenhanId(Long ctBenhanId) {
		this.ctBenhanId = ctBenhanId;
	}

	public Date getNgayKham() {
		return ngayKham;
	}

	public void setNgayKham(Date ngayKham) {
		this.ngayKham = ngayKham;
	}

	public String getChanDoan() {
		return chanDoan;
	}

	public void setChanDoan(String chanDoan) {
		this.chanDoan = chanDoan;
	}

	public Benhan getBenhan() {
		return benhan;
	}

	public void setBenhan(Benhan benhan) {
		this.benhan = benhan;
	}

	public Toathuoc getToathuoc() {
		return toathuoc;
	}

	public void setToathuoc(Toathuoc toathuoc) {
		this.toathuoc = toathuoc;
	}


	
	
}
