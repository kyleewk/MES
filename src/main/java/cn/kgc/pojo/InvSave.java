package cn.kgc.pojo;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

import java.util.Date;

public class InvSave implements Serializable {
    private static final long serialVersionUID = 1881775409214464555L;
    private Integer id;

    private String num;

    private String type;

    private String team;
    @DateTimeFormat(pattern="yyyy-MM-dd hh:mm:ss")
    private Date time;

    private String response;

    private String sresponse;

    public InvSave(Integer id, String num, String type, String team, Date time, String response, String sresponse) {
        this.id = id;
        this.num = num;
        this.type = type;
        this.team = team;
        this.time = time;
        this.response = response;
        this.sresponse = sresponse;
    }

    public InvSave() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num == null ? null : num.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getTeam() {
        return team;
    }

    public void setTeam(String team) {
        this.team = team == null ? null : team.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getResponse() {
        return response;
    }

    public void setResponse(String response) {
        this.response = response;
    }

    public String getSresponse() {
        return sresponse;
    }

    public void setSresponse(String sresponse) {
        this.sresponse = sresponse;
    }
}