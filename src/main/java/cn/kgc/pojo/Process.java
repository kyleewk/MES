package cn.kgc.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Process {
    private Integer id;

    private Integer orderid;

    private Integer ngnum;

    private Integer realnum;

    private Integer status;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date modifydate;

    private Integer isclosed;

    private Order order;

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public Process(Integer id, Integer orderid, Integer ngnum, Integer realnum, Integer status, Date modifydate, Integer isclosed) {
        this.id = id;
        this.orderid = orderid;
        this.ngnum = ngnum;
        this.realnum = realnum;
        this.status = status;
        this.modifydate = modifydate;
        this.isclosed = isclosed;
    }

    public Process() {
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

    public Integer getNgnum() {
        return ngnum;
    }

    public void setNgnum(Integer ngnum) {
        this.ngnum = ngnum;
    }

    public Integer getRealnum() {
        return realnum;
    }

    public void setRealnum(Integer realnum) {
        this.realnum = realnum;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getModifydate() {
        return modifydate;
    }

    public void setModifydate(Date modifydate) {
        this.modifydate = modifydate;
    }

    public Integer getIsclosed() {
        return isclosed;
    }

    public void setIsclosed(Integer isclosed) {
        this.isclosed = isclosed;
    }
}