package cn.looip.jurisdiction.repository.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.looip.jurisdiction.repository.domain.Manager;

import cn.looip.jurisdiction.repository.domain.Programmer;
import cn.looip.jurisdiction.repository.domain.SysUser;


/**
 * 权限管理功能模块持久化接口定义
 * @author xuzhidong
 */
@Repository
public interface JurisdictionDAO {
	/**
	 * 登陆查询
	 * @param map 登陆参数 包含用户名密码
	 * @return 登陆用户对象
	 */
	public SysUser selectUserByLogin(Map<String,Object>map);

	
	//新增程序员
	public int insertProgrammer1(Programmer programmer);
	
	public int insertProgrammer2(Manager manager);
	
	//程序员集合
	public List<Programmer> getprogrammer();
	
	//按条件查询程序员
	public List<Programmer> searchprogrammer();
	
	//分页查询程序员
	public List<Programmer> getPageProgrammer(@Param("pagerIndex") int pagerIndex, @Param("pagerNum")int pagerNum);

	//程序员总条数
	public int getNum();
}

