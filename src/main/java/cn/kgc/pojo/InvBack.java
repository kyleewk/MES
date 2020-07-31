package cn.kgc.pojo;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class InvBack implements Serializable {
    private static final long serialVersionUID = 5010349924368703658L;
    private Integer id;

    private String num;

    private String type;

    private String team;
    @DateTimeFormat(pattern="yyyy-MM-dd hh:mm:ss")
    private Date time;

    private String reason;

    private String response;

    public InvBack(Integer id, String num, String type, String team, Date time, String reason, String response) {
        this.id = id;
        this.num = num;
        this.type = type;
        this.team = team;
        this.time = time;
        this.reason = reason;
        this.response = response;
    }

    public InvBack() {
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

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
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

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason == null ? null : reason.trim();
    }

    public String getResponse() {
        return response;
    }

    public void setResponse(String response) {
        this.response = response == null ? null : response.trim();
    }
}