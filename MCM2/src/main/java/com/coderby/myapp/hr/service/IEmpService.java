package com.coderby.myapp.hr.service;

import java.util.List;
import java.util.Map;

import com.coderby.myapp.hr.model.EmpVO;
import com.coderby.myapp.hr.model.ProVO;

public interface IEmpService {
	int getEmpCount();
	int getEmpCount(int deptid);
	List<EmpVO> getEmpList();
	List<ProVO> getProList();
	List<ProVO> getProList2();
	EmpVO getEmpInfo(int empid);
	void updateEmp(EmpVO emp);
	void updateMenu(ProVO emp);
	void updateMenu2(ProVO emp);
	void insertEmp(EmpVO emp);
	void deleteEmp(int empid, String email);
	List<Map<String, Object>> getAllDeptId();
	List<Map<String, Object>> getAllJobId();
	List<Map<String, Object>> getAllManagerId();
	List<ProVO> getConfirmList(ProVO emp);
	List<ProVO> getAmountList(ProVO emp);
	List<ProVO> getCountList(ProVO emp);
	
	
	List<ProVO> getJanList(ProVO emp);
	List<ProVO> getFebList(ProVO emp);
	List<ProVO> getMarList(ProVO emp);
	List<ProVO> getAprList(ProVO emp);
	List<ProVO> getMayList(ProVO emp);
	List<ProVO> getJunList(ProVO emp);
	List<ProVO> getJulList(ProVO emp);
	List<ProVO> getAugList(ProVO emp);
	List<ProVO> getSepList(ProVO emp);
	List<ProVO> getOctList(ProVO emp);
	List<ProVO> getNovList(ProVO emp);
	List<ProVO> getDecList(ProVO emp);
	
	
}