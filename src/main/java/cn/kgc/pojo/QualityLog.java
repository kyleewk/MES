package cn.kgc.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class QualityLog {
    private Integer id;

    private Integer orderid;

    private String machinetype;

    private String team;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date createdate;

    private Integer status;

    private Integer ismistake;

    private Integer isrepair;

    private String reason;

    private String result;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date date;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date modifytime;

    public Date getModifytime() {
        return modifytime;
    }

    public void setModifytime(Date modifytime) {
        this.modifytime = modifytime;
    }

    public QualityLog() {
    }

    public QualityLog(Integer id, Integer orderid, String machinetype, String team, Date createdate, Integer status, Integer ismistake, Integer isrepair, String reason, String result, Date date, Date modifytime) {
        this.id = id;
        this.orderid = orderid;
        this.machinetype = machinetype;
        this.team = team;
        this.createdate = createdate;
        this.status = status;
        this.ismistake = ismistake;
        this.isrepair = isrepair;
        this.reason = reason;
        this.result = result;
        this.date = date;
        this.modifytime = modifytime;
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

    public String getMachinetype() {
        return machinetype;
    }

    public void setMachinetype(String machinetype) {
        this.machinetype = machinetype == null ? null : machinetype.trim();
    }

    public String getTeam() {
        return team;
    }

    public void setTeam(String team) {
        this.team = team == null ? null : team.trim();
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getIsmistake() {
        return ismistake;
    }

    public void setIsmistake(Integer ismistake) {
        this.ismistake = ismistake;
    }

    public Integer getIsrepair() {
        return isrepair;
    }

    public void setIsrepair(Integer isrepair) {
        this.isrepair = isrepair;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason == null ? null : reason.trim();
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result == null ? null : result.trim();
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}