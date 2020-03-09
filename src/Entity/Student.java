package Entity;

public class Student
{
    private String Stu_number;
    private String Stu_name;
    private String Stu_sex;
    private String Stu_borndate;
    private String Stu_begindate;
    private String Stu_academy;
    private String Stu_department;
    private String Stu_class;
    private String Stu_password;



    public Student() {
    }
    public Student(String Stu_number,String Stu_name,String Stu_sex,String Stu_borndate,String Stu_academy,String Stu_department,String Stu_class,String Stu_password) {
        this.Stu_number = Stu_number;
        this.Stu_name = Stu_name;
        this.Stu_sex = Stu_sex;
        this.Stu_borndate = Stu_borndate;
        this.Stu_academy = Stu_academy;
        this.Stu_department  = Stu_department;
        this.Stu_class = Stu_class;
        this.Stu_password = Stu_password;
    }

    public Student(String Stu_number, String Stu_password)
    {
        this.Stu_password=Stu_password;
        this.Stu_number=Stu_number;
    }
    public void setStu_name(String n)
    {
        this.Stu_name=n;
    }
    public String getStu_name()
    {
        return this.Stu_name;
    }
    public void setStu_number(String m)
    {
        this.Stu_number=m;
    }public String getStu_number()
    {
        return this.Stu_number;
    }
    public void setStu_password(String p)
    {
        this.Stu_password=p;
    }
    public String getStu_password()
    {
        return this.Stu_password;
    }

    public void setStu_sex(String x)
    {
        this.Stu_sex=x;
    }public String getStu_sex()
{
    return this.Stu_sex;
}
    public void setStu_academy(String a)
    {
        this.Stu_academy=a;
    }
    public String getStu_academy()
    {
        return this.Stu_academy;
    }
    public void setStu_department(String d)
    {
        this.Stu_department=d;
    }
    public String getStu_department()
    {
        return this.Stu_department;
    }
    public void setStu_borndate(String b)
    {
        this.Stu_borndate=b;
    }
    public String getStu_borndate()
    {
        return this.Stu_borndate;
    }
    public void setStu_begindate(String b)
    {
        this.Stu_begindate=b;
    }
    public String getStu_begindate()
    {
        return this.Stu_begindate;
    }
    public void setStu_class(String c)
    {
        this.Stu_class=c;
    }
    public String getStu_class()
    {
        return this.Stu_class;
    }

}
