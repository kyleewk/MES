package cn.kgc.pojo;

import java.io.Serializable;
import java.util.List;

public class Department implements Serializable {
    private static final long serialVersionUID = 1500317510941705107L;
    private Integer id;

    private String name;

    //定义权限的集合
    private List<Perm> perms; //根据角色id拿到不同权限的集合

    public List<Perm> getPerms() {
        return perms;
    }

    public void setPerms(List<Perm> perms) {
        this.perms = perms;
    }

    public Department(Integer id, String name) {
        this.id = id;
        this.name = name;
    }

    public Department() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }
}