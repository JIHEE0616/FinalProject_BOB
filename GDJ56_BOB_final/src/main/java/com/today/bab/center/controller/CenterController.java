package com.today.bab.center.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.today.bab.admin.model.vo.ClientQNA;
import com.today.bab.center.model.service.CenterService;
import com.today.bab.center.model.vo.Notice;
import com.today.bab.common.Market2PageBar;

@Controller
@RequestMapping("/center/")
public class CenterController {
	
	private CenterService service;
	
	@Autowired
	public CenterController(CenterService service) {
		this.service = service;
	}

	//공지사항 리스트 출력
	@RequestMapping("/noticeList")
	public ModelAndView noticeList(ModelAndView mv,
			@RequestParam(value="cPage", defaultValue="1") int cPage,
			@RequestParam(value="numPerpage", defaultValue="5") int numPerpage) {
		
		Map<String, Integer> page=Map.of("cPage", cPage, "numPerpage", numPerpage);
		List<Notice> list=service.selectNoticeList(page);
		mv.addObject("list", list);
		
		int totalData=service.selectNoticeCount();
		mv.addObject("pageBar", Market2PageBar.getPage(cPage, numPerpage, totalData, "noticeList"));
		mv.addObject("totalContents", totalData);
		
		mv.setViewName("center/noticeList");
		
		return mv;
	}

	//1:1 문의 리스트 출력
	@RequestMapping("/clientQnaList")
	public ModelAndView clientQnaList(ModelAndView mv,
			@RequestParam(value="cPage", defaultValue="1") int cPage,
			@RequestParam(value="numPerpage", defaultValue="5") int numPerpage) {

		Map<String, Integer> page=Map.of("cPage", cPage, "numPerpage", numPerpage);
		List<ClientQNA> list=service.selectCqList(page);
		mv.addObject("list", list);
		
		int totalData=service.selectCqCount();
		mv.addObject("pageBar", Market2PageBar.getPage(cPage, numPerpage, totalData, "clientQnaList"));
		mv.addObject("totalContents", totalData);
		
		mv.setViewName("center/clientQnaList");
		
		return mv;
	}

	//공지사항 상세화면 출력
	@RequestMapping("/noticeView")
	public String noticeView(int noticeNo, Model model) {
		
		Notice n=service.selectNotice(noticeNo);
		
		model.addAttribute("n", n);
		
		return "center/noticeView";
	}

	//1:1 문의 상세화면 출력
	@RequestMapping("/clientQnaView")
	public String clientQnaView(int cqNo, Model model) {
		
		ClientQNA cq=service.selectClientQna(cqNo);
		
		model.addAttribute("cq", cq);
		
		return "center/clientQnaView";
	}

	//1:1 문의 답변 등록
	@ResponseBody
	@RequestMapping("/answerEnroll")
	public boolean answerEnroll(@RequestParam(value="args[]") List<String> args) {
		int no=Integer.parseInt(args.get(0));
		String answer=args.get(1);
		Map<String, Object> param=Map.of("no", no, "answer", answer);
		
		int result=service.answerEnroll(param);
		
		boolean data=false;
		if(result>0) {
			data=true;
		}
		return data;
	}

	//1:1 문의 답변 수정
	@ResponseBody
	@RequestMapping("/answerUpdate")
	public boolean answerUpdate(@RequestParam(value="args[]") List<String> args) {
		int no=Integer.parseInt(args.get(0));
		String answer=args.get(1);
		Map<String, Object> param=Map.of("no", no, "answer", answer);
		
		int result=service.answerUpdate(param);
		
		boolean data=false;
		if(result>0) {
			data=true;
		}
		return data;
	}
	
	//공지사항 작성 페이지로 이동
	@RequestMapping("/noticeWrite")
	public String noticeWrite() {
		return "center/noticeWrite";
	}
	
	//공지사항 작성
	@ResponseBody
	@RequestMapping("/noticeWriteEnd")
	public boolean noticeWriteEnd(@RequestParam(value="input[]") List<String> input) {
		String title=input.get(0);
		String content=input.get(1);
		Map<String, Object> param=Map.of("title", title, "content", content);
		
		int result=service.noticeWriteEnd(param);
		
		boolean data=false;
		if(result>0) {
			data=true;
		}
		return data;
	}

	//공지사항 수정
	@ResponseBody
	@RequestMapping("/noticeUpdate")
	public boolean noticeUpdate(@RequestParam(value="input[]") List<String> input) {
		String title=input.get(0);
		String content=input.get(1);
		int no=Integer.parseInt(input.get(2));
		Map<String, Object> param=Map.of("title", title, "content", content, "no", no);
		
		int result=service.noticeUpdate(param);
		
		boolean data=false;
		if(result>0) {
			data=true;
		}
		return data;
	}

	//공지사항 삭제
	@ResponseBody
	@RequestMapping("/noticeDelete")
	public boolean noticeDelete(int no) {
		
		int result=service.noticeDelete(no);
		
		boolean data=false;
		if(result>0) {
			data=true;
		}
		return data;
	}

	//1:1 문의 작성 페이지로 이동
	@RequestMapping("/cqWrite")
	public String cqWrite() {
		return "center/clientQnaWrite";
	}
	
	//1:1 문의 작성
	@ResponseBody
	@RequestMapping("/cqWriteEnd")
	public boolean cqWriteEnd(@RequestParam(value="input[]") List<String> input) {
		String title=input.get(0);
		String writer=input.get(1);
		String category=input.get(2);
		String secret=input.get(3);
		String content=input.get(4);
		
		System.out.println(secret);
		if(secret.equals("true")) {
			secret="Y";
		}else {
			secret="N";
		}
		System.out.println(secret);
		
		Map<String, Object> param=Map.of("title", title, "writer", writer, "category", category, "secret", secret, "content", content);
		
		int result=service.cqWriteEnd(param);
		
		boolean data=false;
		if(result>0) {
			data=true;
		}
		return data;
	}
	
	//1:1 문의 수정
	@ResponseBody
	@RequestMapping("/cqUpdate")
	public boolean cqUpdate(@RequestParam(value="input[]") List<String> input) {
		int no=Integer.valueOf(input.get(0));
		String category=input.get(1);
		String title=input.get(2);
		String content=input.get(3);
		String secret=input.get(4);
		
		if(secret.equals("true")) {
			secret="Y";
		}else {
			secret="N";
		}
		System.out.println(secret);
		
		Map<String, Object> param=Map.of("no", no, "category", category, "title", title, "content", content, "secret", secret);
		
		int result=service.cqUpdate(param);
		
		boolean data=false;
		if(result>0) {
			data=true;
		}
		return data;
	}
	
	//1:1 문의 삭제
	@ResponseBody
	@RequestMapping("/cqDelete")
	public boolean cqDelete(int no) {
		
		int result=service.cqDelete(no);
		
		boolean data=false;
		if(result>0) {
			data=true;
		}
		return data;
	}

}
