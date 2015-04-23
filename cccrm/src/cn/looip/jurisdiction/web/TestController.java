package cn.looip.jurisdiction.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cn.looip.jurisdiction.repository.domain.Manager;
import cn.looip.jurisdiction.repository.domain.Programmer;
import cn.looip.jurisdiction.service.interfaces.JurisdictionService;

@Controller
@RequestMapping("/test")
public class TestController
{
	// 权限业务接口
	@Autowired
	private JurisdictionService jurisdictionService;

	@RequestMapping(value = "/home")
	public ModelAndView home()
	{
		Map<String, Object> map = new HashMap<String, Object>();

		return new ModelAndView("home", map);
	}

	@RequestMapping("/login")
	public ModelAndView doLogin(@RequestParam("loginname") String loginName,
			@RequestParam("loginpwd") String loginPwd)
	{
		Map<String, Object> map = new HashMap<String, Object>();
		boolean result = jurisdictionService.checkLogin(loginName, loginPwd);
		if (result)
		{
			map.put("mes", loginName);
		}
		else
		{
			map.put("mes", "用户名密码错误");
		}

		return new ModelAndView("success", map);
	}

	// 新增程序员

	@RequestMapping("addprogrammer")
	public ModelAndView createprogrammer()
	{
		Map<String, Object> map = new HashMap<String, Object>();

		return new ModelAndView("addprogrammer", map);
	}

	@RequestMapping("xzprogrammer")
	public ModelAndView doLogin(Programmer programmer, Manager manager)
	{
		int count = jurisdictionService.insertProgrammer1(programmer);
		Integer id = programmer.getId();
		manager.setUserMessage(id);
		// System.out.println("id="+id);
		jurisdictionService.insertProgrammer2(manager);
		return new ModelAndView("programmeraddsuccess");
	}

	// 查询程序员
	@RequestMapping("resourcemanage")
	public ModelAndView doresourcemanage(Model model)
	{
		// Map<String,Object> map = new HashMap<String, Object>();
		List<Programmer> programmer = jurisdictionService.getprogrammer();
		// List<Manager> programmers=jurisdictionService.getprogrammers();
		// map.put("programmer", programmer);
		model.addAttribute("programmer", programmer);
		// model.addAttribute("programmer", programmers);
		// System.out.println(programmer.get(0).getUserMobile());
		return new ModelAndView("resourcemanage");
	}

	/*
	 * @RequestMapping(value = "/resourcemanage", method = RequestMethod.GET)
	 * public ModelAndView addProgrammer(HttpServletRequest request) {
	 * Map<String,Object> map = new HashMap<String, Object>(); String
	 * beginIndex= request.getParameter("pager.offset"); int pagerNum =
	 * Integer.parseInt
	 * (request.getServletContext().getInitParameter("pagerNum")); int
	 * count=jurisdictionService.getNum(); List<Programmer> programmer=
	 * jurisdictionService.getProgrammer(beginIndex, pagerNum); // for(int
	 * i=0;i<projects.size();i++){ //
	 * System.out.println(projects.get(i).getProName()); // } //
	 * System.out.println(count);
	 * 
	 * map.put("programmer", programmer); map.put("count", count); return new
	 * ModelAndView("resourcemanage"); }
	 */

	// 按条件查询程序员
	@RequestMapping("programmersearch")
	public ModelAndView doprogrammersearch(Model model,
			@RequestParam(value = "searchdepartment") Integer searchdepartment)
	{
		List<Programmer> programmersearch = jurisdictionService.searchprogrammer();
		model.addAttribute("programmersearch", programmersearch);
		return new ModelAndView("programmersearch");
	}

	// 新增客户
	@RequestMapping("addcustomer")
	public ModelAndView createcustomer()
	{
		Map<String, Object> map = new HashMap<String, Object>();

		return new ModelAndView("addcustomer", map);
	}

	// 新增管理员
	@RequestMapping("addmanager")
	public ModelAndView createmanager()
	{
		Map<String, Object> map = new HashMap<String, Object>();

		return new ModelAndView("addmanager", map);
	}

	// 客户管理
	@RequestMapping("customermanage")
	public ModelAndView creatrecustomermanage()
	{
		Map<String, Object> map = new HashMap<String, Object>();

		return new ModelAndView("customermanage", map);
	}

}