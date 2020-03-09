package Entity;

public class Manage {
    private int id;
    private String uname;
    private String upwd;

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

    public Manage(){}

    public String getUname() {
        return uname;
    }

    public int getId() {
        return id;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUpwd() {
        return upwd;
    }

    public Manage(String uname, String upwd){
        this.uname = uname;
        this.upwd = upwd;
    }
    public Manage(int id,String uname,String upwd){
        this.id = id;
        this.uname = uname;
        this.upwd = upwd;
    }


}
