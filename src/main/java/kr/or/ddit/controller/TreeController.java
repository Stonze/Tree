package kr.or.ddit.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.ddit.service.ITreeServiec;
import kr.or.ddit.vo.Board;
import kr.or.ddit.vo.Test;
import lombok.extern.slf4j.Slf4j;
import net.sf.json.JSONArray;

@Controller
@RequestMapping("/tree")
@Slf4j
public class TreeController {
	
	@Inject
	private ITreeServiec service;
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String treeTest() {
		log.info("treeTest() 실행...............");
		List<Test> list = service.list();
		if (list != null) {
			log.info("size : " + list.size());
			for (int i = 0; i < list.size(); i++) {
				Test test = list.get(i);
				log.info("LEVEL : " + test.getLevel());
				log.info("dept : " + test.getDept());
				log.info("par_dept_cd : " + test.getParDept());
				log.info("dept_name : " + test.getDeptNm());
				log.info("leaf : " + test.getLeaf());
			}
		}
		return "success";
	}
	
	@RequestMapping(value = "/all", method = RequestMethod.GET)
	public String selectAll() {
		log.info("selectAll() 실행...........");
		List<Test> listAll = service.selectAll();
		if (listAll != null) {
			log.info("size : " + listAll.size());
			for (int i = 0; i < listAll.size(); i++) {
				Test test = listAll.get(i);
				log.info("dept : " + test.getDept());
				log.info("par_dept_cd : " + test.getParDept());
				log.info("dept_name : " + test.getDeptNm());
			}
		}
		return "success";
	}
	
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String boardTest() {
		log.info("boardTest() 실행.....................");
		List<Board> boardList = service.board();
		log.info("boardList.size() : " + boardList.size());
		return "success";
	}
	
	@RequestMapping(value = "/treeView", method = RequestMethod.GET)
	public String treeView(Model model) {
		List<Test> list = service.list();
		model.addAttribute("list", list);
		return "treeView";
	}
	
	@RequestMapping(value = "/treeViewTest", method = RequestMethod.POST)
	public ResponseEntity<JSONArray> treeViewTest() {
		List<Test> list = service.list();
		JSONArray jsonArray = new JSONArray().fromObject(list);
		return new ResponseEntity<JSONArray>(jsonArray, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/getDept", method = RequestMethod.POST, produces = "application/text; charset=utf-8")
	public ResponseEntity<String> getDept(@RequestBody String dept) throws Exception {
		Test test = service.getDept(dept);
		ObjectMapper mapper = new ObjectMapper();
		String jsonString = mapper.writeValueAsString(test);
		return new ResponseEntity<String>(jsonString, HttpStatus.OK);
	}
	
	
	
}
