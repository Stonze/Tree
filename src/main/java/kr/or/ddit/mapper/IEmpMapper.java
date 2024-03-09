package kr.or.ddit.mapper;

import java.util.List;
import kr.or.ddit.vo.Emp;

public interface IEmpMapper {
	public List<Emp> getEmp(String dept);
}
