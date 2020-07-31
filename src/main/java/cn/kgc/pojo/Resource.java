package cn.kgc.pojo;

import java.util.Date;

public class Resource {
    private Integer id;

    private Integer num;

    private Date time;

    private String response;

    public Resource(Integer id, Integer num, Date time, String response) {
        this.id = id;
        this.num = num;
        this.time = time;
        this.response = response;
    }

    public Resource() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getResponse() {
        return response;
    }

    public void setResponse(String response) {
        this.response = response;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}