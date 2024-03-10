package kr.or.ddit.service;

import java.util.List;

import kr.or.ddit.vo.Emp;
import kr.or.ddit.vo.Test;

public interface IEmpService {
	public List<Emp> getEmp(String empName);
	public List<Emp> getAllEmp();
	public int insertEmp(Emp emp);
	public int updateEmp(Emp emp);
	public int deleteEmp(Emp emp);

}
