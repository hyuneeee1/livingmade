package com.docmall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.docmall.domain.MemberVO;
import com.docmall.service.MemberService;
import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("member/*")
@Controller
public class MemberController {
	
	@Autowired
	//롬복으로 쓸 때 @Setter( onMethod_= {@Autowired})
	private MemberService service;
	
	//회원가입 폼
	@GetMapping("/join")
	public void join() {
		
	}
	//주소가 같아도 주소요청방식(post,get)다르기 때문에 이름 같아도 상관 없음(만약 join으로 했을 시)
	@PostMapping("/join_ok") //memberVO vo = new memberVO(); 스프링이 객체생성 자동으로 해줌.
	public String join(MemberVO vo, RedirectAttributes rttr) throws Exception {
			
	//	log.info(vo.toString()); //원래는 vo.toString()가 출력됨.
		
		service.join_ok(vo);
		
		return "redirect:/member/http://localhost:9090/"; //회원가입 후 이동할 주소
	}
	//아이디 체크
	@ResponseBody
	@GetMapping("/idCheck")
		//String 클래스는 참조타입 -> 기본값 null       requestparam을 통해 String mem_id로 값을 전달한다.
	public ResponseEntity<String> idCheck(@RequestParam("mem_id") String mem_id) {
		
		ResponseEntity<String> entity = null;
		
		//아이디 존재여부작업
		String isUseID="";
		
		if(service.idCheck(mem_id) != null) {
			isUseID="no"; //아이디가 존재하여 사용이 불가능
		} else {
			isUseID="yes";//아이디가 존재하지 않아서, 사용이 가능
		}
		entity = new ResponseEntity<String>(isUseID, HttpStatus.OK);
		
		return entity;
	}
	
	//로그인 폼
	@GetMapping("/login")
	public void login() {
		
	}
	

}
