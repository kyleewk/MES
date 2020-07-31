package cn.kgc.pojo;
import java.io.Serializable;

import java.util.Date;

public class Maintain implements Serializable {
    private static final long serialVersionUID = -5531384381354068710L;
    private Integer id;

    private String devicename;

    private String specification;

    private String fault;

    private String maintanence;

    private String maintainer;

    private Date maintanencedate;

    public Maintain(Integer id, String devicename, String specification, String fault, String maintanence, String maintainer, Date maintanencedate) {
        this.id = id;
        this.devicename = devicename;
        this.specification = specification;
        this.fault = fault;
        this.maintanence = maintanence;
        this.maintainer = maintainer;
        this.maintanencedate = maintanencedate;
    }

    public Maintain() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDevicename() {
        return devicename;
    }

    public void setDevicename(String devicename) {
        this.devicename = devicename == null ? null : devicename.trim();
    }

    public String getSpecification() {
        return specification;
    }

    public void setSpecification(String specification) {
        this.specification = specification == null ? null : specification.trim();
    }

    public String getFault() {
        return fault;
    }

    public void setFault(String fault) {
        this.fault = fault == null ? null : fault.trim();
    }

    public String getMaintanence() {
        return maintanence;
    }

    public void setMaintanence(String maintanence) {
        this.maintanence = maintanence == null ? null : maintanence.trim();
    }

    public String getMaintainer() {
        return maintainer;
    }

    public void setMaintainer(String maintainer) {
        this.maintainer = maintainer == null ? null : maintainer.trim();
    }

    public Date getMaintanencedate() {
        return maintanencedate;
    }

    public void setMaintanencedate(Date maintanencedate) {
        this.maintanencedate = maintanencedate;
    }
}