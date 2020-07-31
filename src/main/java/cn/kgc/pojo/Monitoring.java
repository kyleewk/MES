package cn.kgc.pojo;
import java.io.Serializable;

import java.util.Date;

public class Monitoring implements Serializable {
    private static final long serialVersionUID = -1532634000951541540L;
    private Integer id;

    private String devicename;

    private String checkpoint;

    private String detection;

    private String standard;

    private String record;

    private Date recorddate;

    public Monitoring(Integer id, String devicename, String checkpoint, String detection, String standard, String record, Date recorddate) {
        this.id = id;
        this.devicename = devicename;
        this.checkpoint = checkpoint;
        this.detection = detection;
        this.standard = standard;
        this.record = record;
        this.recorddate = recorddate;
    }

    public Monitoring() {
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

    public String getCheckpoint() {
        return checkpoint;
    }

    public void setCheckpoint(String checkpoint) {
        this.checkpoint = checkpoint == null ? null : checkpoint.trim();
    }

    public String getDetection() {
        return detection;
    }

    public void setDetection(String detection) {
        this.detection = detection == null ? null : detection.trim();
    }

    public String getStandard() {
        return standard;
    }

    public void setStandard(String standard) {
        this.standard = standard == null ? null : standard.trim();
    }

    public String getRecord() {
        return record;
    }

    public void setRecord(String record) {
        this.record = record == null ? null : record.trim();
    }

    public Date getRecorddate() {
        return recorddate;
    }

    public void setRecorddate(Date recorddate) {
        this.recorddate = recorddate;
    }
}