package Model;

public class Account {
    private int id;
    private String userName;
    private String pass;
    private String fullName;
    private String gmail;
    private String address;
    private String phone;
    private int role;

    public Account() {
    }

    public Account(int id, String userName, String pass, String fullName, String gmail, String address, String phone, int role) {
        this.id = id;
        this.userName = userName;
        this.pass = pass;
        this.fullName = fullName;
        this.gmail = gmail;
        this.address = address;
        this.phone = phone;
        this.role = role;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Account{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", pass='" + pass + '\'' +
                ", fullName='" + fullName + '\'' +
                ", gmail='" + gmail + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", role=" + role +
                '}';
    }
}
