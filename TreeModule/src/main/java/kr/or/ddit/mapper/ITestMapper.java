package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.vo.Test;

public interface ITestMapper {

	public List<Test> list();
	public List<Test> selectAll();
	public Test getDept(String dept);
	public int insertDept(Test test);
	public int updateDept(Test test);
	public int deleteDept(Test test);
	
}
