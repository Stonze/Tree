package kr.or.ddit.service;

import java.util.List;

import kr.or.ddit.vo.Board;
import kr.or.ddit.vo.Test;

public interface ITreeServiec {

	public List<Test> list();
	public List<Test> selectAll();
	public List<Board> board();
	public Test getDept(String dept);
	public int insertDept(Test test);
	public int updateDept(Test test);
	public int deleteDept(Test test);

}
