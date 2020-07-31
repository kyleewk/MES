package cn.kgc.pojo;
import java.io.Serializable;

import java.util.Date;

public class Team implements Serializable {
    private static final long serialVersionUID = 6555065354611481545L;
    private Integer id;

    private String productdepartment;

    private String productname;

    private String productteam;

    private Integer teamtotal;

    private Integer completetotalplan;

    private Date completetime;

    public Team(Integer id, String productdepartment, String productname, String productteam, Integer teamtotal, Integer completetotalplan, Date completetime) {
        this.id = id;
        this.productdepartment = productdepartment;
        this.productname = productname;
        this.productteam = productteam;
        this.teamtotal = teamtotal;
        this.completetotalplan = completetotalplan;
        this.completetime = completetime;
    }

    public Team() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProductdepartment() {
        return productdepartment;
    }

    public void setProductdepartment(String productdepartment) {
        this.productdepartment = productdepartment == null ? null : productdepartment.trim();
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname == null ? null : productname.trim();
    }

    public String getProductteam() {
        return productteam;
    }

    public void setProductteam(String productteam) {
        this.productteam = productteam == null ? null : productteam.trim();
    }

    public Integer getTeamtotal() {
        return teamtotal;
    }

    public void setTeamtotal(Integer teamtotal) {
        this.teamtotal = teamtotal;
    }

    public Integer getCompletetotalplan() {
        return completetotalplan;
    }

    public void setCompletetotalplan(Integer completetotalplan) {
        this.completetotalplan = completetotalplan;
    }

    public Date getCompletetime() {
        return completetime;
    }

    public void setCompletetime(Date completetime) {
        this.completetime = completetime;
    }
}