package cn.looip.resource.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cn.looip.jurisdiction.repository.domain.SysUser;
import cn.looip.jurisdiction.service.interfaces.JurisdictionService;
import cn.looip.resource.repository.domain.Programmer;
import cn.looip.resource.service.interfaces.ResourceService;

@Controller
@RequestMapping("/resource")
public class ResourceController
{
	// 权限业务接口
	@Autowired
	private ResourceService resourceService;
	
	@Autowired
	private JurisdictionService jurisdictionService;

	// 新增程序员
	@RequestMapping("addprogrammer")
	public ModelAndView addProgrammer()
	{
		Map<String, Object> map = new HashMap<String, Object>();

		return new ModelAndView("addprogrammer", map);
	}

	// 查看程序员
	@RequestMapping("viewProgrammer")
	public ModelAndView viewProgrammer(Model model,int id)
	{
		Programmer programmer=resourceService.getProgrammer(id);
		model.addAttribute("programmer", programmer);
		model.addAttribute("type",1); //查看
//		Map<String, Object> map = new HashMap<String, Object>();

		return new ModelAndView("addprogrammer");
	}
	
	// 编辑程序员
	@RequestMapping("editProgrammer")
	public ModelAndView editProgrammer(Model model,int id)
	{
		Programmer programmer=resourceService.getProgrammer(id);
		model.addAttribute("programmer", programmer);
		model.addAttribute("type","2"); //编辑
		model.addAttribute("id",id); //编辑
//		Map<String, Object> map = new HashMap<String, Object>();

		return new ModelAndView("addprogrammer");
	}
	
	@RequestMapping("editProgrammerResult")
	public String doEditProgrammerResult(Model model,Programmer programmer)
	{
		//。。。rollback
		int count=resourceService.updateProgrammer(programmer);
		int count1=jurisdictionService.updateSysUserByProgrammer(programmer);
		
		return "redirect:resourcemanage";
//		return response.sendredirect("http://www.foo.com/path/error.html");
//		return doResourceManage(model);
	}
	/*新增程序员结果
	 * 
	@RequestParam(value = "loginName") String loginName,
	@RequestParam(value = "loginPwd") String loginPwd,
	@RequestParam(value = "department") int department,
	@RequestParam(value = "programmerName") String programmerName,
	@RequestParam(value = "programmerSex") int programmerSex,
	@RequestParam(value = "userMobile") String userMobile,
	@RequestParam(value = "programmerQq") String programmerQq,
	@RequestParam(value = "programmerLevel") int programmerLevel
	 * */
	@RequestMapping("addProgrammerResult")
	public ModelAndView doAddProgrammerResult(Programmer programmer)
	{
//		Programmer programmer=new Programmer();
//		programmer.setLoginName(loginName);
		
		//。。。登录用户名必须不存在
		
		int count = resourceService.insertProgrammer(programmer);
//		Programmer programmerNew=resourceService.getprogrammer();
		SysUser sysuser=(SysUser)programmer;
		sysuser.setUserEmail(programmer.getLoginName());
		sysuser.setUserId(programmer.getId());
		sysuser.setUserType((short)1);//1:程序员
		int count1=jurisdictionService.insertSysUser(sysuser);
//		boolean f=jurisdictionService.checkLogin("autumnhu@looip.cn", "123456");
		return new ModelAndView("programmeraddsuccess");
	}

	// 查询程序员列表
	@RequestMapping("resourcemanage")
	public ModelAndView doResourceManage(Model model)
	{
		// Map<String,Object> map = new HashMap<String, Object>();
		List<Programmer> programmers = resourceService.getprogrammers();
		// List<Manager> programmers=jurisdictionService.getprogrammers();
		// map.put("programmer", programmer);
		model.addAttribute("programmers", programmers);
		model.addAttribute("department", "-1");
		model.addAttribute("status", "-1");
		// model.addAttribute("programmer", programmers);
		// System.out.println(programmer.get(0).getUserMobile());
		return new ModelAndView("resourcemanage");
	}

	// 按条件查询程序员
	@RequestMapping("programmersearch")
	public ModelAndView doProgrammerSearch(Model model,
			@RequestParam(value = "department") int department,
			@RequestParam(value = "status") int status)
	{
//		String department = request.getParameter("department");
//		String status = request.getParameter("status");
//		System.out.print("[resourceController]doprogrammersearch department,status:"+department+","+status);
//		System.out.print("[resourceController]doprogrammersearch department,status:"+department+",");
		List<Programmer> programmers = resourceService.searchprogrammer(department,status);
//		model.addAttribute("programmersearch", programmersearch);
		model.addAttribute("programmers", programmers);
		model.addAttribute("department", department);
		model.addAttribute("status", status);
		return new ModelAndView("resourcemanage");
//		return new ModelAndView("programmersearch");
	}

//	@RequestMapping("programmersearch")
//	public ModelAndView doprogrammersearch(Model model,
//			@RequestParam(value = "searchdepartment") Integer searchdepartment)
//	{
//		List<Programmer> programmersearch = jurisdictionService.searchprogrammer();
//		model.addAttribute("programmersearch", programmersearch);
//		return new ModelAndView("programmersearch");
//	}
}