package Entity;

public class Teacher
{
    private String Tea_number;
    private String Tea_name;
    private String Tea_sex;
    private String Tea_borndate;
    private String Tea_begindate;
    private String Tea_academy;
    private String Tea_department;
    private String Tea_tittle;
    private String Tea_password;

    public Teacher() {
    }
    public Teacher(String Tea_number,String Tea_name,String Tea_sex,String Tea_borndate,String Tea_academy,String Tea_department,String Tea_tittle,String Tea_password) {
        this.Tea_number = Tea_number;
        this.Tea_name = Tea_name;
        this.Tea_sex = Tea_sex;
        this.Tea_borndate = Tea_borndate;
        this.Tea_academy = Tea_academy;
        this.Tea_department  = Tea_department;
        this.Tea_tittle = Tea_tittle;
        this.Tea_password = Tea_password;
    }

    public Teacher(String Tea_number, String Tea_password)
    {
        this.Tea_password=Tea_password;
        this.Tea_number=Tea_number;
    }
    public void setTea_name(String n)
    {
        this.Tea_name=n;
    }
    public String getTea_name()
    {
        return this.Tea_name;
    }
    public void setTea_number(String m)
    {
        this.Tea_number=m;
    }public String getTea_number()
{
    return this.Tea_number;
}
    public void setTea_password(String p)
    {
        this.Tea_password=p;
    }
    public String getTea_password()
    {
        return this.Tea_password;
    }

    public void setTea_sex(String x)
    {
        this.Tea_sex=x;
    }public String getTea_sex()
{
    return this.Tea_sex;
}
    public void setTea_academy(String a)
    {
        this.Tea_academy=a;
    }
    public String getTea_academy()
    {
        return this.Tea_academy;
    }
    public void setTea_department(String d)
    {
        this.Tea_department=d;
    }
    public String getTea_department()
    {
        return this.Tea_department;
    }
    public void setTea_borndate(String b)
    {
        this.Tea_borndate=b;
    }
    public String getTea_borndate()
    {
        return this.Tea_borndate;
    }
    public void setTea_begindate(String b)
    {
        this.Tea_begindate=b;
    }
    public String getTea_begindate()
    {
        return this.Tea_begindate;
    }
    public void setTea_tittle(String c)
    {
        this.Tea_tittle=c;
    }
    public String getTea_tittle()
    {
        return this.Tea_tittle;
    }

}
