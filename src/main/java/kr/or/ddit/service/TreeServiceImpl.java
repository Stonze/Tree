package kr.or.ddit.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.ITestMapper;
import kr.or.ddit.vo.Board;
import kr.or.ddit.vo.Test;

@Service
public class TreeServiceImpl implements ITreeServiec {
	
	@Inject
	private ITestMapper mapper;

	@Override
	public List<Test> list() {
		return mapper.list();
	}

	@Override
	public List<Test> selectAll() {
		return mapper.selectAll();
	}

	@Override
	public List<Board> board() {
		return mapper.board();
	}

	@Override
	public Test getDept(String dept) {
		return mapper.getDept(dept);
	}

}
