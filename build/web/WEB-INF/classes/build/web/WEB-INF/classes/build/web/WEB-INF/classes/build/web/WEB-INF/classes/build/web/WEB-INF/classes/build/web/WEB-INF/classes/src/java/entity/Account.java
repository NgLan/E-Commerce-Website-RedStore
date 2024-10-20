package entity;

public class Account {
    private int id;
    private String user;
    private String password;
    private int roleID;
    private String image;
    private String fullName;

    public Account() {
    }

    public Account(int id, String user, String password, int roleID, String image, String fullName) {
        this.id = id;
        this.user = user;
        this.password = password;
        this.roleID = roleID;
        this.image = image;
        this.fullName = fullName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", user=" + user + ", password=" + password + ", roleID=" + roleID + ", image=" + image + ", fullName=" + fullName + '}';
    }
}
