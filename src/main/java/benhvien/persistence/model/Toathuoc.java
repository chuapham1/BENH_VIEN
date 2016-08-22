package benhvien.persistence.model;

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
public class Toathuoc {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long maToa;
	
	@OneToMany(fetch = FetchType.EAGER , mappedBy = "toathuoc")
	private Set<Chitiettoa> chitiettoa = new HashSet<Chitiettoa>(0);
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "benhan_id", nullable = false)
	private Benhan benhan;
	
	public Long getMaToa() {
		return maToa;
	}

	public void setMaToa(Long maToa) {
		maToa = maToa;
	}

	public Benhan getBenhan() {
		return benhan;
	}

	public void setBenhan(Benhan benhan) {
		this.benhan = benhan;
	}

	public Set<Chitiettoa> getChitiettoa() {
		return chitiettoa;
	}

	public void setChitiettoa(Set<Chitiettoa> chitiettoa) {
		this.chitiettoa = chitiettoa;
	}



	


	
	
}
