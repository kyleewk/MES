package cn.kgc.pojo;
import java.io.Serializable;

import java.util.Date;

public class ShowList implements Serializable {
    private static final long serialVersionUID = 5587248631004815124L;
    private Integer id;

    private Date date;

    private Integer num;

    private String type;

    private String total;

    private String acc;

    private String bad;

    public ShowList(Integer id, Date date, Integer num, String type, String total, String acc, String bad) {
        this.id = id;
        this.date = date;
        this.num = num;
        this.type = type;
        this.total = total;
        this.acc = acc;
        this.bad = bad;
    }

    public ShowList() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total == null ? null : total.trim();
    }

    public String getAcc() {
        return acc;
    }

    public void setAcc(String acc) {
        this.acc = acc == null ? null : acc.trim();
    }

    public String getBad() {
        return bad;
    }

    public void setBad(String bad) {
        this.bad = bad == null ? null : bad.trim();
    }
}