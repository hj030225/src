package cn.looip.project.web;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.looip.project.repository.domain.Customer;
import cn.looip.project.repository.domain.Programmer;
import cn.looip.project.repository.domain.ProgrammerProject;
import cn.looip.project.repository.domain.Project;
import cn.looip.project.service.interfaces.ProjectService;

@Controller
@RequestMapping("/project")
public class ProjectController {

	@Autowired
	private ProjectService proservice;

	/**
	 * 1、SpringMVC不能直接接收user.username需要加前缀支持 如果不需要带前缀就不许用加
	 * 
	 * @param binder
	 */

	// @InitBinder
	// public void initBinder(WebDataBinder binder) {

	// binder.setFieldDefaultPrefix("projec.");
	// }

	/*
	 * 定义日期格式
	 */
	@InitBinder
	public void InitBinder(ServletRequestDataBinder bin) {
		bin.registerCustomEditor(Date.class, new CustomDateEditor(
				new SimpleDateFormat("yyyy-MM-dd"), true));
	}

	/**
	 * addPro get请求访问下面方法 向页面传集合customer
	 * 
	 * @return 添加页面
	 */
	@RequestMapping(value = "/addPro", method = RequestMethod.GET)
	public String addProject(Model model) {
		List<Customer> customer = proservice.getCustomer();

		// for(int i=0;i<customer.size();i++){
		// System.out.println(customer.get(i).getName());
		// }
		model.addAttribute("customer", customer);
		return "/project/AddProject";
	}

	/**
	 * 方法一：Sturts2一样，jsp用前缀。 首先第一步@InitBinder，定义前缀 name 前缀.属性名
	 * 也可以不用前缀，方法名（@ModelAttribute A a ,BindingResult result） jsp name与属性名相同
	 * 添加项目，form表单提交Post请求访问下面方法
	 * 
	 * @param project
	 * @return 项目页面
	 */
	// @RequestMapping(value = "/addPros", method = RequestMethod.POST)
	// public String addProjects(@ModelAttribute Project projec,
	// BindingResult result) {//2、 BindingResult result 接收带前缀的参数
	// System.out.println(projec.getProName());
	// System.out.println(projec.getBargainNo());
	// return "/project/PM"; // 前面加redirect:重定向 默认forward:
	//
	// }
	/**
	 * 方法二：普通类 直接用对象接收参数
	 * 
	 * @param projec页面参数传到对象
	 * @return 项目页面
	 */
	@RequestMapping("/addPros")
	public String addPros(Project projec) {
		// System.out.println(projec.getCustomer().getId());
		proservice.saveProject(projec);
		return "redirect:/PM";

	}

	/**
	 * 查询当前项目
	 * 
	 * @param model
	 * @param request
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value = "/projectManage", method = RequestMethod.GET)
	public String projectManage(Model model, HttpServletRequest request) {
		String beginIndex = request.getParameter("pager.offset");
		int pagerNum = Integer.parseInt(request.getServletContext()
				.getInitParameter("pagerNum"));

		int count = proservice.getNum();
		List<Project> projects = proservice.getProjects(beginIndex, pagerNum);
		// for(int i=0;i<projects.size();i++){
		// System.out.println(projects.get(i).getProName());
		// }
		// System.out.println(count);
		model.addAttribute("projects", projects);
		model.addAttribute("count", count);
		model.addAttribute("new1", "new1");
		return "project/projectManage";
	}

	/**
	 * 查询历史项目
	 * 
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/historyProjects", method = RequestMethod.GET)
	public String getHistoryProjects(Model model, HttpServletRequest request) {
		String beginIndex = request.getParameter("pager.offset");
		int pagerNum = Integer.parseInt(request.getServletContext()
				.getInitParameter("pagerNum"));
		int count = proservice.getNums();
		List<Project> projects = proservice.getProjectes(beginIndex, pagerNum);
		model.addAttribute("projects", projects);
		model.addAttribute("count", count);
		model.addAttribute("old1", "old1");
		return "project/projectManage";
	}

	/**
	 * 查询要修改的原有信息
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/updateProject", method = RequestMethod.GET)
	public String getProject(Model model, int id) {
		List<Customer> customer = proservice.getCustomer();
		Project project = proservice.getProject(id);
		model.addAttribute("customer", customer);
		model.addAttribute("project", project);
		return "/project/updateProject";

	}

	/**
	 * 修改项目
	 * 
	 * @param projec
	 * @return
	 */
	@RequestMapping("/updatePros")
	public String updatePros(Project projec) {
		proservice.updateProject(projec);
		return "redirect:/PM";// 重定向跳转到另一个方法

	}

	/**
	 * 删除项目
	 * 
	 * @param projec
	 * @return
	 */
	@RequestMapping(value = "/delectPros", method = RequestMethod.GET)
	public String delectPros(int id) {
		proservice.delectProject(id);
		return "redirect:/PM";// 重定向跳转到另一个方法

	}

	/**
	 * 根据项目名查询
	 * 
	 * @param proName
	 * @return
	 */
	@RequestMapping("/seachPros")
	public String seach(Model model, HttpServletRequest request, String proName) {
		String beginIndex = request.getParameter("pager.offset");
		int pagerNum = Integer.parseInt(request.getServletContext()
				.getInitParameter("pagerNum"));
		int count = proservice.getNumes(proName);
		List<Project> projects = proservice.getSeach(beginIndex, pagerNum,
				proName);
		model.addAttribute("projects", projects);
		model.addAttribute("count", count);
		model.addAttribute("seach", "seach");
		return "/project/PM";
	}

	/**
	 * 项目详情
	 * 
	 * @param id项目ID
	 * @return
	 */
	@RequestMapping(value = "/ProjectInfo", method = RequestMethod.GET)
	public String ProjectInfo(int id, Model model, HttpServletRequest request) {
		String beginIndex = request.getParameter("pager.offset");
		int pagerNum = Integer.parseInt(request.getServletContext()
				.getInitParameter("pagerNums"));

		Project project = proservice.getProject(id);// 项目信息
		List<ProgrammerProject> Pprojects = proservice.getPproject(beginIndex,
				pagerNum, id); // 项目程序员信息
		int count = proservice.getNumber(id);// 条数
		 
		 for (int i = 0; i < Pprojects.size(); i++) {
		    String Name=Pprojects.get(i).getProgrammer().getProgrammerName();
		  
		    System.out.println(Name+"--"+ Pprojects.get(i).getProgrammer().getId()+"--"+Pprojects.get(i).getId());

		 }

		model.addAttribute("project", project);
		model.addAttribute("count", count);
		model.addAttribute("Pprojects", Pprojects);
		return "/project/ProjectInfo";

	}

	/**
	 * 
	 * @param id    项目ID
	 * @param model 人员集合
	 * @return 项目分配人员
	 */
	@RequestMapping(value = "/AddProgrammer", method = RequestMethod.GET)
	public String AddProgrammer(int id, Model model) {
		/*  待开发
		 * 1查询所有结束工作的人员
		 * 2根据人员ID查询最后一个项目结束时间与系统时间比较
		 * 3最后时间确实结束则修改状态为‘闲置’
		 * 4、增加手动修改状态功能，同时删除参与项目的人员信息
		 */
		
		

		/*
		 * 项目信息
		 */
		Project project = proservice.getProject(id);
		/*
		 * 人员集合
		 */
		List<Programmer> programmers = proservice.programmer();
		model.addAttribute("project", project);

		if (programmers.size() > 0) {
			model.addAttribute("programmers", programmers);
		} else {
			model.addAttribute("message", "没有闲置的人员！请手动踢出在工作人员后再来添加！");
		}

		return "/project/AddProjects";
	}

	/**
	 * 
	 * @param Pprojec程序员项目类
	 * @return
	 */
	@RequestMapping("/AddProgrammers")
	public String AddProgrammers(ProgrammerProject Pprojec) {
		/*
		 * 添加
		 */
		proservice.saveProgrammers(Pprojec);
		/*
		 * 修改状态为0 忙碌
		 */
		proservice.updateState(Pprojec.getProgrammer().getId());
		/*
		 * 传递项目ID返回
		 */
		return "redirect:/AddProgrammer?id=" + Pprojec.getProject().getId()
				+ "";

	}
	
	
	/**
	 * 程序员登录后的项目信息
	 * @param model
	 * @param request
	 * @param session 登录人
	 * @return
	 */
	
	@RequestMapping(value = "/ProM", method = RequestMethod.GET)
	public String addProM(Model model, HttpServletRequest request,HttpSession session) {
		
		/**
		 * 后续添加登录人session等验证，目前当程序员已登录
		 */
		
		
		String beginIndex = request.getParameter("pager.offset");
		int pagerNum = Integer.parseInt(request.getServletContext()
				.getInitParameter("pagerNum"));

		int count = proservice.getNum();
		List<Project> projects = proservice.getProjects(beginIndex, pagerNum);
		// for(int i=0;i<projects.size();i++){
		// System.out.println(projects.get(i).getProName());
		// }
		// System.out.println(count);
		model.addAttribute("projects", projects);
		model.addAttribute("count", count);
		model.addAttribute("new1", "new1");
		return "/project/PMs";
	}
	
	

}
