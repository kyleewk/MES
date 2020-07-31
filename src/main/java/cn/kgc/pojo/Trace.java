package cn.kgc.pojo;

import java.io.Serializable;

public class Trace implements Serializable {
    private static final long serialVersionUID = -7225257284505475508L;

    private Integer id;

    private Integer orderid;

    private String craftid;

    private Integer productid;

    private Integer teamid;

    private Integer invgetid;

    private Integer invsaveid;

    private Integer invbackid;

    private Order order;

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public Trace() {
    }

    public Trace(Integer orderid, String craftid, Integer productid, Integer teamid, Integer invgetid, Integer invsaveid, Integer invbackid) {
        this.orderid = orderid;
        this.craftid = craftid;
        this.productid = productid;
        this.teamid = teamid;
        this.invgetid = invgetid;
        this.invsaveid = invsaveid;
        this.invbackid = invbackid;
    }

    public Trace(Integer id, Integer orderid, String craftid, Integer productid, Integer teamid, Integer invgetid, Integer invsaveid, Integer invbackid) {
        this.id = id;
        this.orderid = orderid;
        this.craftid = craftid;
        this.productid = productid;
        this.teamid = teamid;
        this.invgetid = invgetid;
        this.invsaveid = invsaveid;
        this.invbackid = invbackid;
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

    public String getCraftid() {
        return craftid;
    }

    public void setCraftid(String craftid) {
        this.craftid = craftid;
    }

    public Integer getProductid() {
        return productid;
    }

    public void setProductid(Integer productid) {
        this.productid = productid;
    }

    public Integer getTeamid() {
        return teamid;
    }

    public void setTeamid(Integer teamid) {
        this.teamid = teamid;
    }

    public Integer getInvgetid() {
        return invgetid;
    }

    public void setInvgetid(Integer invgetid) {
        this.invgetid = invgetid;
    }

    public Integer getInvsaveid() {
        return invsaveid;
    }

    public void setInvsaveid(Integer invsaveid) {
        this.invsaveid = invsaveid;
    }

    public Integer getInvbackid() {
        return invbackid;
    }

    public void setInvbackid(Integer invbackid) {
        this.invbackid = invbackid;
    }
}