package cn.kgc.pojo;

public class Position {
    private Integer id;

    private String nameCn;

    private String nameEn;

    public Position(Integer id, String nameCn, String nameEn) {
        this.id = id;
        this.nameCn = nameCn;
        this.nameEn = nameEn;
    }

    public Position() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNameCn() {
        return nameCn;
    }

    public void setNameCn(String nameCn) {
        this.nameCn = nameCn == null ? null : nameCn.trim();
    }

    public String getNameEn() {
        return nameEn;
    }

    public void setNameEn(String nameEn) {
        this.nameEn = nameEn == null ? null : nameEn.trim();
    }
}