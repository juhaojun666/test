package cdu.pojo;

public class User {
    private String id;
    private  String username;
    private double password;

    public User() {
    }

    public User(String username, double password) {
        this.username = username;
        this.password = password;
    }

    public User(String id, String username, double password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public double getPassword() {
        return password;
    }

    public void setPassword(double password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", username='" + username + '\'' +
                ", password=" + password +
                '}';
    }
}
