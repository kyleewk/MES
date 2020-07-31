package cn.kgc.pojo;
import java.io.Serializable;

import java.util.Date;

public class CraftList implements Serializable {
    private static final long serialVersionUID = 7226903702497012059L;
    private Integer id;

    private String machineType;

    private String craftName;

    private String steps;

    private String device;

    private String materiel;

    private Date createDate;

    private String designer;

    public CraftList(Integer id, String machineType, String craftName, String steps, String device, String materiel, Date createDate, String designer) {
        this.id = id;
        this.machineType = machineType;
        this.craftName = craftName;
        this.steps = steps;
        this.device = device;
        this.materiel = materiel;
        this.createDate = createDate;
        this.designer = designer;
    }

    public CraftList() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMachineType() {
        return machineType;
    }

    public void setMachineType(String machineType) {
        this.machineType = machineType == null ? null : machineType.trim();
    }

    public String getCraftName() {
        return craftName;
    }

    public void setCraftName(String craftName) {
        this.craftName = craftName == null ? null : craftName.trim();
    }

    public String getSteps() {
        return steps;
    }

    public void setSteps(String steps) {
        this.steps = steps == null ? null : steps.trim();
    }

    public String getDevice() {
        return device;
    }

    public void setDevice(String device) {
        this.device = device == null ? null : device.trim();
    }

    public String getMateriel() {
        return materiel;
    }

    public void setMateriel(String materiel) {
        this.materiel = materiel == null ? null : materiel.trim();
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getDesigner() {
        return designer;
    }

    public void setDesigner(String designer) {
        this.designer = designer == null ? null : designer.trim();
    }
}