package cn.kgc.pojo;
import java.io.Serializable;

import java.util.Date;

public class Repair implements Serializable {
    private static final long serialVersionUID = -695376628777003654L;
    private Integer id;

    private Integer orderid;

    private String repairtype;

    private String modifyreason;

    private Date modifydate;

    private String repairteam;

    private String applicantname;

    public Repair(Integer id, Integer orderid, String repairtype, String modifyreason, Date modifydate, String repairteam, String applicantname) {
        this.id = id;
        this.orderid = orderid;
        this.repairtype = repairtype;
        this.modifyreason = modifyreason;
        this.modifydate = modifydate;
        this.repairteam = repairteam;
        this.applicantname = applicantname;
    }

    public Repair() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOrderid() {
        return orderid;
    }

    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    public String getRepairtype() {
        return repairtype;
    }

    public void setRepairtype(String repairtype) {
        this.repairtype = repairtype == null ? null : repairtype.trim();
    }

    public String getModifyreason() {
        return modifyreason;
    }

    public void setModifyreason(String modifyreason) {
        this.modifyreason = modifyreason == null ? null : modifyreason.trim();
    }

    public Date getModifydate() {
        return modifydate;
    }

    public void setModifydate(Date modifydate) {
        this.modifydate = modifydate;
    }

    public String getRepairteam() {
        return repairteam;
    }

    public void setRepairteam(String repairteam) {
        this.repairteam = repairteam == null ? null : repairteam.trim();
    }

    public String getApplicantname() {
        return applicantname;
    }

    public void setApplicantname(String applicantname) {
        this.applicantname = applicantname == null ? null : applicantname.trim();
    }
}