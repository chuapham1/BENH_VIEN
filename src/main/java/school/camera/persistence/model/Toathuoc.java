package school.camera.persistence.model;

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
	private Long MaToa;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "benhAnId", nullable = false)
	private Benhan benhAn;
	
	public Long getMaToa() {
		return MaToa;
	}

	public void setMaToa(Long maToa) {
		MaToa = maToa;
	}

	public Benhan getBenhAn() {
		return benhAn;
	}

	public void setBenhAn(Benhan benhAn) {
		this.benhAn = benhAn;
	}

	


	
	
}
