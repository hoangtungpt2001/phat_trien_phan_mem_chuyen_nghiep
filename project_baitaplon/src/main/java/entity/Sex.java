package entity;

public class Sex {
	private int sexid;
    private String sex;

    public Sex() {
    }

    public Sex(int sexid, String sex) {
        this.sexid = sexid;
        this.sex = sex;
    }

    public int getSexid() {
        return sexid;
    }

    public void setSexid(int sexid) {
        this.sexid = sexid;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "Sex{" + "sexid=" + sexid + ", sex=" + sex + '}';
    }
}
