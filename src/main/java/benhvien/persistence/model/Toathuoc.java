package benhvien.persistence.model;

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
public class Toathuoc {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long maToa;

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "toathuoc")
	private Set<Chitiettoa> chitiettoa = new HashSet<Chitiettoa>(0);

	@OneToOne(targetEntity = ChitietBenhAn.class, fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name = "chitietbenhan_id") // column cua bang role trong db ma
	private ChitietBenhAn chitietBenhAn;

	public Long getMaToa() {
		return maToa;
	}

	public void setMaToa(Long maToa) {
		this.maToa = maToa;
	}

	public ChitietBenhAn getChitietBenhAn() {
		return chitietBenhAn;
	}

	public void setChitietBenhAn(ChitietBenhAn chitietBenhAn) {
		this.chitietBenhAn = chitietBenhAn;
	}

	public Set<Chitiettoa> getChitiettoa() {
		return chitiettoa;
	}

	public void setChitiettoa(Set<Chitiettoa> chitiettoa) {
		this.chitiettoa = chitiettoa;
	}
	

}
