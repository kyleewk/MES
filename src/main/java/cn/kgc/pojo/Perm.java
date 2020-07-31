package cn.kgc.pojo;

import java.io.Serializable;

public class Perm implements Serializable {
    private static final long serialVersionUID = -1724983182906666191L;
    private Integer id;

    private String permname;

    public Perm(Integer id, String permname) {
        this.id = id;
        this.permname = permname;
    }

    public Perm() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPermname() {
        return permname;
    }

    public void setPermname(String permname) {
        this.permname = permname == null ? null : permname.trim();
    }
}