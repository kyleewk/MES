package cn.kgc.pojo;
import java.io.Serializable;

import java.util.Date;

public class Equipment implements Serializable {
    private static final long serialVersionUID = -2556854338930520505L;
    private Integer id;

    private String devicename;

    private String unittype;

    private String equipmentuse;

    private String manufacturer;

    private Integer factorynumber;

    private Date acceptancedate;

    private Date commissioningdate;

    private String place;

    private String status;

    private String storeman;

    public Equipment(Integer id, String devicename, String unittype, String equipmentuse, String manufacturer, Integer factorynumber, Date acceptancedate, Date commissioningdate, String place, String status, String storeman) {
        this.id = id;
        this.devicename = devicename;
        this.unittype = unittype;
        this.equipmentuse = equipmentuse;
        this.manufacturer = manufacturer;
        this.factorynumber = factorynumber;
        this.acceptancedate = acceptancedate;
        this.commissioningdate = commissioningdate;
        this.place = place;
        this.status = status;
        this.storeman = storeman;
    }

    public Equipment() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDevicename() {
        return devicename;
    }

    public void setDevicename(String devicename) {
        this.devicename = devicename == null ? null : devicename.trim();
    }

    public String getUnittype() {
        return unittype;
    }

    public void setUnittype(String unittype) {
        this.unittype = unittype == null ? null : unittype.trim();
    }

    public String getEquipmentuse() {
        return equipmentuse;
    }

    public void setEquipmentuse(String equipmentuse) {
        this.equipmentuse = equipmentuse == null ? null : equipmentuse.trim();
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer == null ? null : manufacturer.trim();
    }

    public Integer getFactorynumber() {
        return factorynumber;
    }

    public void setFactorynumber(Integer factorynumber) {
        this.factorynumber = factorynumber;
    }

    public Date getAcceptancedate() {
        return acceptancedate;
    }

    public void setAcceptancedate(Date acceptancedate) {
        this.acceptancedate = acceptancedate;
    }

    public Date getCommissioningdate() {
        return commissioningdate;
    }

    public void setCommissioningdate(Date commissioningdate) {
        this.commissioningdate = commissioningdate;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place == null ? null : place.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getStoreman() {
        return storeman;
    }

    public void setStoreman(String storeman) {
        this.storeman = storeman == null ? null : storeman.trim();
    }
}