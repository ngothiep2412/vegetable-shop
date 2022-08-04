package data.dto;

/**
 *
 * @author Thiep Ngo
 */
public class UserDTO {

    private String email;
    private String fullName;
    private String password;
    private int roleID;
    private String address;
    private String birthday;
    private String phone;
    private int status;

    public UserDTO() {
        this.email = "";
        this.fullName = "";
        this.password = "";
        this.roleID = 0;
        this.address = "";
        this.birthday = "";
        this.phone = "";
        this.status = 0;
    }

    public UserDTO(String email, String fullName, String password, int roleID, String address, String birthday, String phone, int status) {
        this.email = email;
        this.fullName = fullName;
        this.password = password;
        this.roleID = roleID;
        this.address = address;
        this.birthday = birthday;
        this.phone = phone;
        this.status = status;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRoleID() {
        return roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

}
