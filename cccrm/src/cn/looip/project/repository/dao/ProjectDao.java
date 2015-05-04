package cn.looip.project.repository.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.looip.project.repository.domain.Customer;
import cn.looip.project.repository.domain.Log;
import cn.looip.project.repository.domain.Programmer;
import cn.looip.project.repository.domain.ProgrammerProject;
import cn.looip.project.repository.domain.Project;

@Repository
public interface ProjectDao {
   /**
    * 添加项目
    * @param project
    */
	public void saveProject(Project project);
	/**
	 * 
	 * @return 客户集合
	 */
	public List<Customer> getCustomer();
	/**
	 * 分页查询项目
	 * @param pagerIndex
	 * @param pagerNum
	 * @return
	 */
	public List<Project> getProjects(@Param("pagerIndex") int pagerIndex, @Param("pagerNum")int pagerNum);
	
	/**
	 * 查询历史项目
	 * @param pagerIndex
	 * @param pagerNum
	 * @return
	 */
	public List<Project> getProjectes(@Param("pagerIndex") int pagerIndex, @Param("pagerNum")int pagerNum);
	
	/**
	 * 模糊查询项目
	 * @param beginIndex
	 * @param pagerNum
	 * @param proName
	 * @return
	 */
	public List<Project> getSeach(@Param("pagerIndex") int pagerIndex, @Param("pagerNum")int pagerNum,@Param("proName") String proName);
	/**
	 * 当前项目总条数
	 */
	public int getNum();
	/**
	 * 历史项目总条数
	 * @return
	 */
	public int getNums();
	
	/**
	 * 条件查询总数
	 * @return
	 */
	public int getNumes(@Param("proName")String proName);
	/**
	 * 修改项目
	 * @param project
	 */
	public void updateProject(Project project);
	/**
	 * 查询项目
	 * @param 主键id
	 * @return
	 */
	public Project getProject(int id);
	/**
	 * 删除项目
	 * @param 根据id主键
	 */
	public void delectProject(int id);
	
	/**
	 * 查询闲置程序员
	 * @return
	 */
	public List<Programmer> getProgrammer();
	
	/**
	 * 项目分配程序员
	 * @param Pproject
	 * @param ids
	 */
	public void saveProgrammers(ProgrammerProject Pproject);
	/**
	 * 添加进项目后修改状态
	 * @param id
	 */
	public void updateState(int id);
	
	
	/**
	 * 项目成员
	 * @param beginIndex
	 * @param pagerNum
	 * @param id
	 * @return
	 */
	public List<ProgrammerProject> getPproject(@Param("pagerIndex")int pagerIndex, @Param("pagerNum")int pagerNum,
			 @Param("id")int id);
	/**
	 * 项目成员数
	 * @param id
	 * @return
	 */
	public int getNumber(int id);
	
	/**
	 * 查询程序员的项目报告
	 * @param id项目ID
	 * @param pid程序员ID
	 * @return
	 */
	public Log getLogs(int id, int pid);

}
