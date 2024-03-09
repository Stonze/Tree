package kr.or.ddit.service;

import java.util.List;

import kr.or.ddit.vo.Emp;

public interface IEmpService {
	public List<Emp> getEmp(String dept);

}
