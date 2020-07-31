package cn.kgc.pojo;
import java.io.Serializable;

import java.util.Date;

public class ProductLine implements Serializable {
    private static final long serialVersionUID = 7528506577779936442L;
    private Integer id;

    private String productdeparment;

    private String productname;

    private String producttype;

    private Integer productorder;

    private Integer peopletotal;

    private Integer outputplan;

    private Date comlpetiondate;

    public ProductLine(Integer id, String productdeparment, String productname, String producttype, Integer productorder, Integer peopletotal, Integer outputplan, Date comlpetiondate) {
        this.id = id;
        this.productdeparment = productdeparment;
        this.productname = productname;
        this.producttype = producttype;
        this.productorder = productorder;
        this.peopletotal = peopletotal;
        this.outputplan = outputplan;
        this.comlpetiondate = comlpetiondate;
    }

    public ProductLine() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProductdeparment() {
        return productdeparment;
    }

    public void setProductdeparment(String productdeparment) {
        this.productdeparment = productdeparment == null ? null : productdeparment.trim();
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname == null ? null : productname.trim();
    }

    public String getProducttype() {
        return producttype;
    }

    public void setProducttype(String producttype) {
        this.producttype = producttype == null ? null : producttype.trim();
    }

    public Integer getProductorder() {
        return productorder;
    }

    public void setProductorder(Integer productorder) {
        this.productorder = productorder;
    }

    public Integer getPeopletotal() {
        return peopletotal;
    }

    public void setPeopletotal(Integer peopletotal) {
        this.peopletotal = peopletotal;
    }

    public Integer getOutputplan() {
        return outputplan;
    }

    public void setOutputplan(Integer outputplan) {
        this.outputplan = outputplan;
    }

    public Date getComlpetiondate() {
        return comlpetiondate;
    }

    public void setComlpetiondate(Date comlpetiondate) {
        this.comlpetiondate = comlpetiondate;
    }
}