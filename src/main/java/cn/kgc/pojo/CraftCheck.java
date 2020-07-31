package cn.kgc.pojo;
import java.io.Serializable;

import java.util.Date;

public class CraftCheck implements Serializable {
    private static final long serialVersionUID = 3325680948699573926L;
    private Integer id;

    private String machinetype;

    private String modifyreason;

    private String modifycontent;

    private Date modifydate;

    private String applicantname;

    private Integer status;

    public CraftCheck(Integer id, String machinetype, String modifyreason, String modifycontent, Date modifydate, String applicantname, Integer status) {
        this.id = id;
        this.machinetype = machinetype;
        this.modifyreason = modifyreason;
        this.modifycontent = modifycontent;
        this.modifydate = modifydate;
        this.applicantname = applicantname;
        this.status = status;
    }

    public CraftCheck() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMachinetype() {
        return machinetype;
    }

    public void setMachinetype(String machinetype) {
        this.machinetype = machinetype == null ? null : machinetype.trim();
    }

    public String getModifyreason() {
        return modifyreason;
    }

    public void setModifyreason(String modifyreason) {
        this.modifyreason = modifyreason == null ? null : modifyreason.trim();
    }

    public String getModifycontent() {
        return modifycontent;
    }

    public void setModifycontent(String modifycontent) {
        this.modifycontent = modifycontent == null ? null : modifycontent.trim();
    }

    public Date getModifydate() {
        return modifydate;
    }

    public void setModifydate(Date modifydate) {
        this.modifydate = modifydate;
    }

    public String getApplicantname() {
        return applicantname;
    }

    public void setApplicantname(String applicantname) {
        this.applicantname = applicantname == null ? null : applicantname.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}