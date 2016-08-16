package school.camera.persistence.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class DKKham {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long ma_dang_ky;
	
	Date ngay_dang_ky;
	
	String trieu_chung;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "benhnhan_id", nullable = false)
	private Benhnhan benhnhan;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "bacsi_id", nullable = false)
	private Bacsi bacsi ;

	public Long getMa_dang_ky() {
		return ma_dang_ky;
	}

	public void setMa_dang_ky(Long ma_dang_ky) {
		this.ma_dang_ky = ma_dang_ky;
	}

	public Date getNgay_dang_ky() {
		return ngay_dang_ky;
	}

	public void setNgay_dang_ky(Date ngay_dang_ky) {
		this.ngay_dang_ky = ngay_dang_ky;
	}

	public String getTrieu_chung() {
		return trieu_chung;
	}

	public void setTrieu_chung(String trieu_chung) {
		this.trieu_chung = trieu_chung;
	}

	public Benhnhan getBenhnhan() {
		return benhnhan;
	}

	public void setBenhnhan(Benhnhan benhnhan) {
		this.benhnhan = benhnhan;
	}

	public Bacsi getBacsi() {
		return bacsi;
	}

	public void setBacsi(Bacsi bacsi) {
		this.bacsi = bacsi;
	}
	
	
	
;
	
}
