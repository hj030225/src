package cn.looip.jurisdiction.service.interfaces;

import java.util.List;

import cn.looip.jurisdiction.repository.domain.Manager;
import cn.looip.jurisdiction.repository.domain.Programmer;

/**
 * 权限管理功能模块业务接口定义
 * @author xuzhidong
 */
public interface JurisdictionService {
	//================系统功能=======================
	
	public boolean checkLogin(String loginName,String loginPwd);
	

	//增加程序员
	
	public int insertProgrammer1(Programmer programmer);
	
	public void insertProgrammer2(Manager manager);


	//查询程序员
	
	public List<Programmer> getprogrammer();
	
	//按条件查询程序员
	public List<Programmer> searchprogrammer();

	//beginIndex第几页开始 			pagerNum
	
	public List<Programmer> getProgrammer(String beginIndex, int pagerNum);
	
	//总条数
	
	public int getNum();
}
