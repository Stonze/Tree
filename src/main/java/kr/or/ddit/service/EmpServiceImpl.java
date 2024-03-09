package kr.or.ddit.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.IEmpMapper;
import kr.or.ddit.vo.Emp;

@Service
public class EmpServiceImpl implements IEmpService {
	
	@Inject
	private IEmpMapper mapper;

	@Override
	public List<Emp> getEmp(String dept) {
		return mapper.getEmp(dept);
	}

	
}
