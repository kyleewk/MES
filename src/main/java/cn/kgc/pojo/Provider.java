package cn.kgc.pojo;
import java.io.Serializable;

public class Provider implements Serializable {
    private static final long serialVersionUID = 4490266899750183313L;
    private Integer id;

    private String productname;

    private String manufacturer;

    private String address;

    private String phone;

    public Provider(Integer id, String productname, String manufacturer, String address, String phone) {
        this.id = id;
        this.productname = productname;
        this.manufacturer = manufacturer;
        this.address = address;
        this.phone = phone;
    }

    public Provider() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname == null ? null : productname.trim();
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer == null ? null : manufacturer.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}