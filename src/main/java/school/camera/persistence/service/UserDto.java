package school.camera.persistence.service;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

import school.camera.validation.service.PasswordMatches;
import school.camera.validation.service.ValidEmail;

@PasswordMatches
public class UserDto {
	
	private Long userId;
    @NotNull
    @NotEmpty
    private String ho;

    @NotNull
    @NotEmpty
    private String ten;
    
    @ValidEmail
    @NotNull
    @NotEmpty
    private String email;
    
    @NotNull
    @NotEmpty
    private String password;

    @NotNull
    @NotEmpty
    private String rePassword;

    private boolean gioitinh;
    
    private String diachi;
	
	private String so_cmnd;
	
	private long sdt;
	
	private String ngaysinh;
	
	
    public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public boolean isGioitinh() {
		return gioitinh;
	}

	public void setGioitinh(boolean gioitinh) {
		this.gioitinh = gioitinh;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public String getSo_cmnd() {
		return so_cmnd;
	}

	public void setSo_cmnd(String so_cmnd) {
		this.so_cmnd = so_cmnd;
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

	public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    private Integer role;

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRePassword() {
		return rePassword;
	}

	public void setRePassword(String rePassword) {
		this.rePassword = rePassword;
	}

	@Override
    public String toString() {
        final StringBuilder builder = new StringBuilder();
        builder.append("User [firstName=").append(ho).append("]").append("[lastName=").append(ten).append("]").append("[email").append(email).append("]").append("[password").append(password).append("]");
        return builder.toString();
    }
}
