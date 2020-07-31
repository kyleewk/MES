package cn.kgc.pojo;

public class CraftCheckRes {
    private Integer id;

    private Integer checkid;

    private String opinion;

    private String operation;

    public CraftCheckRes(Integer id, Integer checkid, String opinion, String operation) {
        this.id = id;
        this.checkid = checkid;
        this.opinion = opinion;
        this.operation = operation;
    }

    public CraftCheckRes() {
        super();
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

    public String getOpinion() {
        return opinion;
    }

    public void setOpinion(String opinion) {
        this.opinion = opinion == null ? null : opinion.trim();
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation == null ? null : operation.trim();
    }
}