package cn.kgc.pojo;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

import java.util.Date;

public class Client implements Serializable {
    private static final long serialVersionUID = 6178409612041892535L;
    private Integer id;

    private String customername;

    private String address;

    private String productname;

    private Integer quantity;
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date orderstartdate;

    private Date orderstopdate;

    public Client(Integer id, String customername, String address, String productname, Integer quantity, Date orderstartdate, Date orderstopdate) {
        this.id = id;
        this.customername = customername;
        this.address = address;
        this.productname = productname;
        this.quantity = quantity;
        this.orderstartdate = orderstartdate;
        this.orderstopdate = orderstopdate;
    }

    public Client() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCustomername() {
        return customername;
    }

    public void setCustomername(String customername) {
        this.customername = customername == null ? null : customername.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname == null ? null : productname.trim();
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Date getOrderstartdate() {
        return orderstartdate;
    }

    public void setOrderstartdate(Date orderstartdate) {
        this.orderstartdate = orderstartdate;
    }

    public Date getOrderstopdate() {
        return orderstopdate;
    }

    public void setOrderstopdate(Date orderstopdate) {
        this.orderstopdate = orderstopdate;
    }
}