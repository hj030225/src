package cn.looip.project.service.interfaces;

import java.util.List;

import cn.looip.project.repository.domain.Customer;
import cn.looip.project.repository.domain.Log;
import cn.looip.project.repository.domain.Programmer;
import cn.looip.project.repository.domain.ProgrammerProject;
import cn.looip.project.repository.domain.Project;

/**
 * 项目service接口
 * @author gaoxiang
 *
 */
public interface ProjectService {
   /**
    * 添加项目
    */
	public void saveProject(Project project);
	/**
	 * 所有客户
	 * @return
	 */
	public List<Customer> getCustomer();
	/**
	 * 查询当前项目
	 * @param beginIndex第几页开始
	 * @param pagerNum
	 * @return
	 */
	public List<Project> getProjects(String beginIndex, int pagerNum);
	/**
	 * 查询历史项目
	 * @param beginIndex
	 * @param pagerNum
	 * @return
	 */
	public List<Project> getProjectes(String beginIndex, int pagerNum);
	
	/**
	 * 模糊查询项目
	 * @param beginIndex
	 * @param pagerNum
	 * @param proName
	 * @return
	 */
	public List<Project> getSeach(String beginIndex, int pagerNum,String proName);
	/**
	 * 当前项目总条数
	 * @return
	 */
	public int getNum();
	/**历史项目
	 * 总条数
	 * @return
	 */
	public int getNums();
	/**
	 * 模糊查询的总条数
	 */
	public int getNumes(String proName);
	/**
	 * 修改项目
	 * @param project
	 */
	public void updateProject(Project project);
	
	/**
	 * 查询要修改的项目信息
	 * @param project
	 */
	public Project getProject(int id); 
     /**
      * 删除项目
      * @param id主键
      */
	public void delectProject(int id);
	
	/**
	 * 待分配程序员
	 * @return
	 */
	public List<Programmer> programmer();
	
	/**
	 * 项目分配程序员
	 * @param Pproject程序员信息
	 */
	public void saveProgrammers(ProgrammerProject Pproject);
	
	/**
	 * 
	 * @param id
	 */
	public void updateState(int id);
	
	/**
	 * 项目成员
	 * @param beginIndex
	 * @param pagerNum
	 * @param id项目ID
	 * @return
	 */
	public List<ProgrammerProject> getPproject(String beginIndex, int pagerNum,int id);
	/**
	 * 项目成员数
	 * @param id
	 * @return
	 */
    public int getNumber(int id);
    
    /**
     * 查询报告
     * @param id项目ID
     * @param pid程序员ID
     * @return
     */
    public Log getLogs(int id,int pid);
    
    
    
    
}
