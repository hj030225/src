package cn.looip.jurisdiction.service.impl;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.looip.core.utils.GeneralTools;
import cn.looip.jurisdiction.repository.dao.JurisdictionDAO;
import cn.looip.jurisdiction.repository.domain.Manager;
import cn.looip.jurisdiction.repository.domain.Programmer;
import cn.looip.jurisdiction.repository.domain.SysUser;
import cn.looip.jurisdiction.service.interfaces.JurisdictionService;


/**
 * 权限管理功能模块业务接口实现
 * @author xuzhidong
 */
@Service
public class JurisdictionServiceImpl implements JurisdictionService {
	
	//持久化接口
	@Autowired
	private JurisdictionDAO jurisdictionDAO;
	
	//工具类
	@Autowired
	private GeneralTools iTools ;
	
	//================测试=======================
	
	//用户登陆
	public boolean checkLogin(String loginName, String loginPwd) {
		boolean isSuccess = false;
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("loginName", loginName);
		map.put("loginPwd", loginPwd);
		SysUser sysUser = jurisdictionDAO.selectUserByLogin(map);
		if(sysUser!=null)
		{
			isSuccess = true;
		}
		return isSuccess;
	}
	
	@Override
	public int insertProgrammer1(Programmer programmer) {
		
 	return jurisdictionDAO.insertProgrammer1(programmer);
			
			
		
		
		/*	boolean isSuccess = false;
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("department", department);
		map.put("programmerName", programmerName);
		map.put("programmerSex", programmerSex);
		map.put("programmerQq", programmerQq);
		map.put("programmerLevel", programmerLevel);
		map.put("programmerStatus",programmerStatus);
		int programmer1 = jurisdictionDAO.insertProgrammer1(map);
		return true;*/
	
	}
		
	@Override
	public void insertProgrammer2(Manager manager){
		
		/*manager.setLoginName(loginName);
		manager.setLoginPwd(loginPwd);
		manager.setUserMobile(userMobile);*/
		jurisdictionDAO.insertProgrammer2(manager);
		
	}
	/*@Override
	public boolean insertProgrammer2(String loginName, String loginPwd,
			String userMobile,String programmerName,String programmerQq) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("loginName", loginName);
		map.put("loginPwd", loginPwd);
		map.put("userMobile", userMobile);
		map.put("programmerName", programmerName);
		map.put("programmerQq", programmerQq);
		int programmer2 = jurisdictionDAO.insertProgrammer2(map);
		return true;
		
	}*/

	

	@Override
	public List<Programmer> getProgrammer(String beginIndex, int pagerNum) {
		int pagerIndex = 0;
		if (beginIndex != null) {
			pagerIndex = Integer.parseInt(beginIndex);// 将字符串转换为int型（整型）
		}
		return jurisdictionDAO.getPageProgrammer(pagerIndex, pagerNum);
	}

	@Override
	public int getNum() {
		// TODO Auto-generated method stub
		return jurisdictionDAO.getNum();
	}
//查询程序员
	@Override
	public List<Programmer> getprogrammer() {
		// TODO Auto-generated method stub
		return jurisdictionDAO.getprogrammer();
	}

//按条件查询程序员
	@Override
	public List<Programmer> searchprogrammer() {
		// TODO Auto-generated method stub
		return jurisdictionDAO.searchprogrammer();
	}


	
	
	}


