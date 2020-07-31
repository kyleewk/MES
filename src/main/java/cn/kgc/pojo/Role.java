package cn.kgc.pojo;

import java.io.Serializable;
import java.util.List;

public class Role implements Serializable {
    private static final long serialVersionUID = -3374569005759810761L;
    private Integer id;

    private Integer permid;

    private String rolename;

    //定义权限的集合
    private List<Perm> perms; //根据角色id拿到不同权限的集合

    public List<Perm> getPerms() {
        return perms;
    }

    public void setPerms(List<Perm> perms) {
        this.perms = perms;
    }

    public Role(Integer id, Integer permid, String rolename) {
        this.id = id;
        this.permid = permid;
        this.rolename = rolename;
    }

    public Role() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPermid() {
        return permid;
    }

    public void setPermid(Integer permid) {
        this.permid = permid;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename == null ? null : rolename.trim();
    }
}