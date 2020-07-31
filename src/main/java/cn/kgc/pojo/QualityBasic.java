package cn.kgc.pojo;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class QualityBasic implements Serializable {
    private static final long serialVersionUID = 2331312246851616566L;
    private Integer id;

    private String type;

    private String project;

    private String proportion;

    private String target;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date modifytime;

    public Date getModifytime() {
        return modifytime;
    }

    public void setModifytime(Date modifytime) {
        this.modifytime = modifytime;
    }

    public QualityBasic() {
    }

    public QualityBasic(Integer id, String type, String project, String proportion, String target, Date modifytime) {
        this.id = id;
        this.type = type;
        this.project = project;
        this.proportion = proportion;
        this.target = target;
        this.modifytime = modifytime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project == null ? null : project.trim();
    }

    public String getProportion() {
        return proportion;
    }

    public void setProportion(String proportion) {
        this.proportion = proportion == null ? null : proportion.trim();
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target == null ? null : target.trim();
    }
}