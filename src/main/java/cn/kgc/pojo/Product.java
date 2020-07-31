package cn.kgc.pojo;
import java.io.Serializable;

public class Product implements Serializable {
    private static final long serialVersionUID = -5326503523455598675L;
    private Integer id;

    private String producttype;

    private String productname;

    private String specification;

    private String unit;

    public Product(Integer id, String producttype, String productname, String specification, String unit) {
        this.id = id;
        this.producttype = producttype;
        this.productname = productname;
        this.specification = specification;
        this.unit = unit;
    }

    public Product() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProducttype() {
        return producttype;
    }

    public void setProducttype(String producttype) {
        this.producttype = producttype == null ? null : producttype.trim();
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname == null ? null : productname.trim();
    }

    public String getSpecification() {
        return specification;
    }

    public void setSpecification(String specification) {
        this.specification = specification;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit == null ? null : unit.trim();
    }
}