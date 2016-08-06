package school.camera.persistence.service;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

import school.camera.validation.service.PasswordMatches;
import school.camera.validation.service.ValidEmail;

@PasswordMatches
public class UserDto {
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
