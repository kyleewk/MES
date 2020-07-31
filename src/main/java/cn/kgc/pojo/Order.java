package cn.kgc.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Order {
    private Integer id;

    private Integer productline;

    private String device;

    private String materiel;

    private String team;

    private String leader;

    private Integer progress;

    private String machinetype;

    private Integer targetnum;

    
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date starttime;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date endtime;

    private Integer connectid;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date createtime;

    private String nextid;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date modifytime;

    private Integer status;

    private Integer isclosed;

    private String closereason;

    private Employee employee;

    private Employee employee2;

    public Employee getEmployee2() {
        return employee2;
    }

    public void setEmployee2(Employee employee2) {
        this.employee2 = employee2;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public Order(Integer id, Integer productline, String device, String materiel, String team, String leader, Integer progress, String machinetype, Integer targetnum, Date starttime, Date endtime, Integer connectid, Date createtime, String nextid, Date modifytime, Integer status, Integer isclosed, String closereason) {
        this.id = id;
        this.productline = productline;
        this.device = device;
        this.materiel = materiel;
        this.team = team;
        this.leader = leader;
        this.progress = progress;
        this.machinetype = machinetype;
        this.targetnum = targetnum;
        this.starttime = starttime;
        this.endtime = endtime;
        this.connectid = connectid;
        this.createtime = createtime;
        this.nextid = nextid;
        this.modifytime = modifytime;
        this.status = status;
        this.isclosed = isclosed;
        this.closereason = closereason;
    }

    public Order() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProductline() {
        return productline;
    }

    public void setProductline(Integer productline) {
        this.productline = productline;
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

    public String getTeam() {
        return team;
    }

    public void setTeam(String team) {
        this.team = team == null ? null : team.trim();
    }

    public String getLeader() {
        return leader;
    }

    public void setLeader(String leader) {
        this.leader = leader == null ? null : leader.trim();
    }

    public Integer getProgress() {
        return progress;
    }

    public void setProgress(Integer progress) {
        this.progress = progress;
    }

    public String getMachinetype() {
        return machinetype;
    }

    public void setMachinetype(String machinetype) {
        this.machinetype = machinetype == null ? null : machinetype.trim();
    }

    public Integer getTargetnum() {
        return targetnum;
    }

    public void setTargetnum(Integer targetnum) {
        this.targetnum = targetnum;
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public Integer getConnectid() {
        return connectid;
    }

    public void setConnectid(Integer connectid) {
        this.connectid = connectid;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getNextid() {
        return nextid;
    }

    public void setNextid(String nextid) {
        this.nextid = nextid;
    }

    public Date getModifytime() {
        return modifytime;
    }

    public void setModifytime(Date modifytime) {
        this.modifytime = modifytime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getIsclosed() {
        return isclosed;
    }

    public void setIsclosed(Integer isclosed) {
        this.isclosed = isclosed;
    }

    public String getClosereason() {
        return closereason;
    }

    public void setClosereason(String closereason) {
        this.closereason = closereason == null ? null : closereason.trim();
    }
}