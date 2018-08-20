package com.coderby.myapp.hr.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.coderby.myapp.hr.dao.IEmpRepository;
import com.coderby.myapp.hr.model.EmpVO;
import com.coderby.myapp.hr.model.ProVO;

@Service
public class EmpService implements IEmpService {

	@Autowired
	@Qualifier("IEmpRepository")
	IEmpRepository empRepository;
	
	@Override
	public int getEmpCount() {
		return empRepository.getEmpCount();
	}

	@Override
	public int getEmpCount(int deptid) {
		return empRepository.getEmpCount(deptid);
	}

	@Override
	public List<EmpVO> getEmpList() {
		return empRepository.getEmpList();
	}
	
	
	@Override
	public List<ProVO> getProList() {
		return empRepository.getProList();
	}
	
	@Override
	public List<ProVO> getProList2() {
		return empRepository.getProList2();
	}

	@Override
	public EmpVO getEmpInfo(int empid) {
		return empRepository.getEmpInfo(empid);
	}

	@Override
	public void updateEmp(EmpVO emp) {
		empRepository.updateEmp(emp);
	}
	

	
	@Override
	public void updateMenu(ProVO emp) {
		empRepository.updateMenu(emp);
	}
	
	@Override
	public void updateMenu2(ProVO emp) {
		empRepository.updateMenu2(emp);
	}


	@Override
	public void insertEmp(EmpVO emp) {
		empRepository.insertEmp(emp);
	}

	@Override
	public void deleteEmp(int empid, String email) {
		empRepository.deleteJobHistory(empid);
		empRepository.deleteEmp(empid, email);
	}

	@Override
	public List<Map<String, Object>> getAllDeptId() {
		return empRepository.getAllDeptId();
	}
	
	@Override
	public List<Map<String, Object>> getAllJobId() {
		return empRepository.getAllJobId();
	}

	@Override
	public List<Map<String, Object>> getAllManagerId() {
		return empRepository.getAllManagerId();
	}

	@Override
	public List<ProVO> getConfirmList(ProVO emp) {
		// TODO Auto-generated method stub
		return empRepository.getConfirmList(emp);
	}
	

	
	@Override
	public List<ProVO> getAmountList(ProVO emp) {
		// TODO Auto-generated method stub
		return empRepository.getAmountList(emp);
	}

	@Override
	public List<ProVO> getCountList(ProVO emp) {
		// TODO Auto-generated method stub
		return empRepository.getCountList(emp);
	}

	
	
	
	
	@Override
	public List<ProVO> getJanList(ProVO emp) {
		// TODO Auto-generated method stub
		return empRepository.getJanList(emp);
	}

	@Override
	public List<ProVO> getFebList(ProVO emp) {
		// TODO Auto-generated method stub
		return empRepository.getFebList(emp);
	}

	@Override
	public List<ProVO> getMarList(ProVO emp) {
		// TODO Auto-generated method stub
		return empRepository.getMarList(emp);
	}

	@Override
	public List<ProVO> getAprList(ProVO emp) {
		// TODO Auto-generated method stub
		return empRepository.getAprList(emp);
	}

	@Override
	public List<ProVO> getMayList(ProVO emp) {
		// TODO Auto-generated method stub
		return empRepository.getMayList(emp);
	}

	@Override
	public List<ProVO> getJunList(ProVO emp) {
		// TODO Auto-generated method stub
		return empRepository.getJunList(emp);
	}

	@Override
	public List<ProVO> getJulList(ProVO emp) {
		// TODO Auto-generated method stub
		return empRepository.getJulList(emp);
	}

	@Override
	public List<ProVO> getAugList(ProVO emp) {
		// TODO Auto-generated method stub
		return empRepository.getAugList(emp);
	}

	@Override
	public List<ProVO> getSepList(ProVO emp) {
		// TODO Auto-generated method stub
		return empRepository.getSepList(emp);
	}

	@Override
	public List<ProVO> getOctList(ProVO emp) {
		// TODO Auto-generated method stub
		return empRepository.getOctList(emp);
	}

	@Override
	public List<ProVO> getNovList(ProVO emp) {
		// TODO Auto-generated method stub
		return empRepository.getNovList(emp);
	}

	@Override
	public List<ProVO> getDecList(ProVO emp) {
		// TODO Auto-generated method stub
		return empRepository.getDecList(emp);
	}



	

}