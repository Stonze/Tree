package kr.or.ddit.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.IEmpMapper;
import kr.or.ddit.vo.Emp;
import kr.or.ddit.vo.Test;

@Service
public class EmpServiceImpl implements IEmpService {
	
	@Inject
	private IEmpMapper mapper;

	@Override
	public List<Emp> getEmp(String empName) {
		return mapper.getEmp(empName);
	}

	@Override
	public List<Emp> getAllEmp() {
		return mapper.getAllEmp();
	}

	@Override
	public int insertEmp(Emp emp) {
		return mapper.insertEmp(emp);
	}

	@Override
	public int updateEmp(Emp emp) {
		return mapper.updateEmp(emp);
	}

	@Override
	public int deleteEmp(Emp emp) {
		return mapper.deleteEmp(emp);
	}

	
}
