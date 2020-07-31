package cn.kgc.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class OrderCheck {
    private Integer id;

    private Integer checkid;

    private Integer orderid;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date checkdate;

    private String result;

    private String comm;

    private String checksn;

    private Employee employee;

    public OrderCheck() {
    }

    public OrderCheck(Integer id, Integer checkid, Integer orderid, Date checkdate, String result, String comm, String checksn, Employee employee) {
        this.id = id;
        this.checkid = checkid;
        this.orderid = orderid;
        this.checkdate = checkdate;
        this.result = result;
        this.comm = comm;
        this.checksn = checksn;
        this.employee = employee;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public String getChecksn() {
        return checksn;
    }

    public void setChecksn(String checksn) {
        this.checksn = checksn;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCheckid() {
        return checkid;
    }

    public void setCheckid(Integer checkid) {
        this.checkid = checkid;
    }

    public Integer getOrderid() {
        return orderid;
    }

    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    public Date getCheckdate() {
        return checkdate;
    }

    public void setCheckdate(Date checkdate) {
        this.checkdate = checkdate;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result == null ? null : result.trim();
    }

    public String getComm() {
        return comm;
    }

    public void setComm(String comm) {
        this.comm = comm == null ? null : comm.trim();
    }
}