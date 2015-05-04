package cn.looip.project.repository.domain;

import java.io.Serializable;
import java.util.Date;
/**
 * 程序员和项目关联关系
 * @author gaoxiang
 *
 */
public class ProgrammerProject  implements Serializable{
	private static final long serialVersionUID = -3905342877239644954L;
	private int id;
	private Programmer programmer;
	private Project project;
	private Date beginTime;
	private Date endTime;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Programmer getProgrammer() {
		return programmer;
	}
	public void setProgrammer(Programmer programmer) {
		this.programmer = programmer;
	}
	public Project getProject() {
		return project;
	}
	public void setProject(Project project) {
		this.project = project;
	}
	public Date getBeginTime() {
		return beginTime;
	}
	public void setBeginTime(Date beginTime) {
		this.beginTime = beginTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	
	
	
	
}
