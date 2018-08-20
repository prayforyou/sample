package com.coderby.myapp.hr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.coderby.myapp.hr.model.EmpVO;
import com.coderby.myapp.hr.model.ProVO;
import com.coderby.myapp.hr.service.IEmpService;

@Controller
public class EmpController {
	
	@Autowired
	IEmpService empService;

	@RequestMapping(value="/hr/count")
	public String empCount(
			@RequestParam(value="deptid", required=false, defaultValue="0") int deptid, 
			Model model) {
		if(deptid==0) {
			model.addAttribute("count", empService.getEmpCount());
		}else {
			model.addAttribute("count", empService.getEmpCount(deptid));
		}
		return "hr/count";
	}
	

	@RequestMapping(value={"/hr", "/hr/list"})
	public String getAllEmps(Model model) {
		List<EmpVO> empList = empService.getEmpList();
		model.addAttribute("empList", empList);
		return "hr/list";
	}
	
	@RequestMapping(value="/icons")
	public String getIcon() {
		return "icons";
	}
	
	@RequestMapping(value="/map")
	public String getMap() {
		return "map";
	}
	
	@RequestMapping(value="/dashboard")
	public String getDashboard() {
		return "dashboard";
	}
	
	@RequestMapping(value="/notifications")
	public String getNotification() {
		return "notifications";
	}
	
	@RequestMapping(value="/tables")
	public String getTable() {
		return "tables";
	}
	
	@RequestMapping(value="/typography")
	public String getTypography() {
		return "typography";
	}
	
	@RequestMapping(value="/upgrade")
	public String getUpgrade() {
		return "upgrade";
	}
	
	@RequestMapping(value="/user")
	public String getUser() {
		return "user";
	}
	
	@RequestMapping(value="/mapDraw")
	public String getMapDraw() {
		return "mapDraw";
	}

	@RequestMapping(value="/hr/MenuSet2", method=RequestMethod.GET)
	public String updateMenu(ProVO emp, Model model) {
		empService.updateMenu(emp);
		return "redirect:/hr/MenuSet";
	}

	@RequestMapping(value="/hr/MenuSet3", method=RequestMethod.GET)
	public String updateMenu2(ProVO emp, Model model) {
		empService.updateMenu2(emp);
		return "redirect:/hr/MenuSet";
	}

	@RequestMapping(value="/hr/{employeeId}")
	public String getEmpInfo(@PathVariable int employeeId, Model model) {
		EmpVO emp = empService.getEmpInfo(employeeId);
		model.addAttribute("emp", emp);
		return "hr/view";
	}

	@RequestMapping(value="/hr/insert", method=RequestMethod.GET)
	public String insertEmp(Model model) {
		model.addAttribute("deptList", empService.getAllDeptId());
		model.addAttribute("jobList", empService.getAllJobId());
		model.addAttribute("managerList", empService.getAllManagerId());
		return "hr/insertform";
	}

	@RequestMapping(value="/hr/insert", method=RequestMethod.POST)
	public String insertEmp(EmpVO emp, Model model) {
		empService.insertEmp(emp);
		return "redirect:/hr";
	}

	@RequestMapping(value="/hr/update", method=RequestMethod.GET)
	public String updateEmp(int empid, Model model) {
		model.addAttribute("emp", empService.getEmpInfo(empid));
		model.addAttribute("deptList", empService.getAllDeptId());
		model.addAttribute("jobList", empService.getAllJobId());
		model.addAttribute("managerList", empService.getAllManagerId());
		return "hr/updateform";
	}

	@RequestMapping(value="/hr/update", method=RequestMethod.POST)
	public String updateEmp(EmpVO emp, Model model) {
		empService.updateEmp(emp);
		return "redirect:/hr/"+emp.getEmployeeId();
	}

	@RequestMapping(value="/hr/delete", method=RequestMethod.GET)
	public String deleteEmp(int empid, Model model) {
		model.addAttribute("emp", empService.getEmpInfo(empid));
		return "hr/deleteform";
	}

	@RequestMapping(value="/hr/delete", method=RequestMethod.POST)
	public String deleteEmp(int empid, String email, Model model) {
		empService.deleteEmp(empid, email);
		return "redirect:/hr";
	}
	
	@RequestMapping(value="/hr/confirm", method=RequestMethod.GET)
	public String confirm(ProVO emp, Model model) {
		List<ProVO> confirmList = empService.getConfirmList(emp);
		model.addAttribute("confirmList", confirmList);
		return "/hr/recommend";
	}
	
	@RequestMapping(value="/hr/Statistics", method=RequestMethod.GET)
	public String amount(ProVO emp, Model model) {
		List<ProVO> AmountList = empService.getAmountList(emp);
		model.addAttribute("AmountList", AmountList);
		List<ProVO> CountList = empService.getCountList(emp);
		model.addAttribute("CountList", CountList);
		
		
		
		List<ProVO> JanList = empService.getJanList(emp);
		model.addAttribute("JanList", JanList);
		List<ProVO> FebList = empService.getFebList(emp);
		model.addAttribute("FebList", FebList);
		List<ProVO> MarList = empService.getMarList(emp);
		model.addAttribute("MarList", MarList);
		List<ProVO> AprList = empService.getAprList(emp);
		model.addAttribute("AprList", AprList);
		List<ProVO> MayList = empService.getMayList(emp);
		model.addAttribute("MayList", MayList);
		List<ProVO> JunList = empService.getJunList(emp);
		model.addAttribute("JunList", JunList);
		List<ProVO> JulList = empService.getJulList(emp);
		model.addAttribute("JulList", JulList);
		List<ProVO> AugList = empService.getAugList(emp);
		model.addAttribute("AugList", AugList);
		List<ProVO> SepList = empService.getSepList(emp);
		model.addAttribute("SepList", SepList);
		List<ProVO> OctList = empService.getOctList(emp);
		model.addAttribute("OctList", OctList);
		List<ProVO> NovList = empService.getNovList(emp);
		model.addAttribute("NovList", NovList);
		List<ProVO> DecList = empService.getDecList(emp);
		model.addAttribute("DecList", DecList);
		
		
		
		
		return "/hr/Statistics";
	}

}//end class