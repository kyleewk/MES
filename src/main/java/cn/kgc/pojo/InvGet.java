package cn.kgc.pojo;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

import java.util.Date;

public class InvGet implements Serializable {
    private static final long serialVersionUID = 8667528712744103380L;
    private Integer id;

    private String num;

    private String type;

    private String leader;

    private String team;
    @DateTimeFormat(pattern="yyyy-MM-dd hh:mm:ss")
    private Date time;

    private String response;

    public InvGet(Integer id, String num, String type, String leader, String team, Date time, String response) {
        this.id = id;
        this.num = num;
        this.type = type;
        this.leader = leader;
        this.team = team;
        this.time = time;
        this.response = response;
    }

    public InvGet() {
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

    public String getLeader() {
        return leader;
    }

    public void setLeader(String leader) {
        this.leader = leader == null ? null : leader.trim();
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
}