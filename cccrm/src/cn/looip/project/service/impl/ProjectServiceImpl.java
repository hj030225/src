package cn.looip.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.looip.core.utils.GeneralTools;
import cn.looip.project.repository.dao.ProjectDao;
import cn.looip.project.repository.domain.Customer;
import cn.looip.project.repository.domain.Log;
import cn.looip.project.repository.domain.Programmer;
import cn.looip.project.repository.domain.ProgrammerProject;
import cn.looip.project.repository.domain.Project;
import cn.looip.project.service.interfaces.ProjectService;

@Service
public class ProjectServiceImpl implements ProjectService {

	// 持久化接口
	@Autowired
	private ProjectDao projectdao;
	// 工具类
	@Autowired
	private GeneralTools iTools;

	@Override
	public void saveProject(Project project) {
		projectdao.saveProject(project);
	}

	@Override
	public List<Customer> getCustomer() {
		return projectdao.getCustomer();
	}

	/**
	 * 查询当前项目
	 */
	@Override
	public List<Project> getProjects(String beginIndex, int pagerNum) {
		int index = 0;
		if (beginIndex != null) {
			index = Integer.parseInt(beginIndex);// 将字符串转换为int型（整型）
		}
		return projectdao.getProjects(index, pagerNum);
	}

	/**
	 * 查询历史项目
	 */
	@Override
	public List<Project> getProjectes(String beginIndex, int pagerNum) {
		int index = 0;
		if (beginIndex != null) {
			index = Integer.parseInt(beginIndex);// 将字符串转换为int型（整型）
		}
		return projectdao.getProjectes(index, pagerNum);
	}

	/**
	 * 当前项目总条数
	 */
	@Override
	public int getNum() {
		return projectdao.getNum();
	}

	/**
	 * 历史项目总条数
	 */
	@Override
	public int getNums() {

		return projectdao.getNums();
	}

	@Override
	public void updateProject(Project project) {
		projectdao.updateProject(project);
	}

	@Override
	public Project getProject(int id) {

		return projectdao.getProject(id);
	}

	/**
	 * 删除某项目
	 */
	@Override
	public void delectProject(int id) {
		projectdao.delectProject(id);
	}

	@Override
	public List<Project> getSeach(String beginIndex, int pagerNum,
			String proName) {
		int index = 0;
		if (beginIndex != null) {
			index = Integer.parseInt(beginIndex);// 将字符串转换为int型（整型）
		}
		return projectdao.getSeach(index, pagerNum, proName);
	}

	@Override
	public int getNumes(String proName) {
		
		return projectdao.getNumes(proName);
	}
     /**
      * 查询闲置程序员
      */
	@Override
	public List<Programmer> programmer() {
		
		return projectdao.getProgrammer();
	}

	
	@Override
	public void saveProgrammers(ProgrammerProject Pproject) {
		projectdao.saveProgrammers(Pproject);
	}
    
	@Override
	public void updateState(int id) {
		projectdao.updateState(id);
	}

	@Override
	public List<ProgrammerProject> getPproject(String beginIndex, int pagerNum,
			int id) {
		int index = 0;
		if (beginIndex != null) {
			index = Integer.parseInt(beginIndex);// 将字符串转换为int型（整型）
		}
		return projectdao.getPproject(index, pagerNum, id);
	}

	@Override
	public int getNumber(int id) {
		
		return projectdao.getNumber(id);
	}

	@Override
	public Log getLogs(int id, int pid) {
		return projectdao.getLogs(id, pid);
	}


}
