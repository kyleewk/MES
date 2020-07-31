package cn.kgc.pojo;
import java.io.Serializable;

import java.io.Serializable;

public class Bom implements Serializable {


    private static final long serialVersionUID = -9166987006468282915L;

    private Integer id;

    private Integer materialid;

    private String materialname;

    private String specification;

    private String manufacturer;

    private String note;

    private Integer status;

    public Bom(Integer id, Integer materialid, String materialname, String specification, String manufacturer, String note, Integer status) {
        this.id = id;
        this.materialid = materialid;
        this.materialname = materialname;
        this.specification = specification;
        this.manufacturer = manufacturer;
        this.note = note;
        this.status = status;
    }

    public Bom() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMaterialid() {
        return materialid;
    }

    public void setMaterialid(Integer materialid) {
        this.materialid = materialid;
    }

    public String getMaterialname() {
        return materialname;
    }

    public void setMaterialname(String materialname) {
        this.materialname = materialname == null ? null : materialname.trim();
    }

    public String getSpecification() {
        return specification;
    }

    public void setSpecification(String specification) {
        this.specification = specification == null ? null : specification.trim();
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer == null ? null : manufacturer.trim();
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}