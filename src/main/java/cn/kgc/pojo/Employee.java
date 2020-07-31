package cn.kgc.pojo;

import java.io.Serializable;
import java.util.List;

public class Employee implements Serializable {
    private static final long serialVersionUID = 2854302467476192467L;
    private String sn;

    private Integer departmentId;

    private Integer positionId;

    private String name;

    private String password;

    private Integer roleid;

    //随机盐
    private String salt;

    //定义角色集合
    private List<Role> roles;

    //部门
    private List<Department> department;

    public List<Department> getDepartment() {
        return department;
    }

    public void setDepartment(List<Department> department) {
        this.department = department;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }

    public Employee(String sn, Integer departmentId, Integer positionId, String name, String password) {
        this.sn = sn;
        this.departmentId = departmentId;
        this.positionId = positionId;
        this.name = name;
        this.password = password;
    }

    public Employee() {
        super();
    }

    public String getSn() {
        return sn;
    }

    public void setSn(String sn) {
        this.sn = sn == null ? null : sn.trim();
    }

    public Integer getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }

    public Integer getPositionId() {
        return positionId;
    }

    public void setPositionId(Integer positionId) {
        this.positionId = positionId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }
}