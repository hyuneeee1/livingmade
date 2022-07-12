package com.docmall.service;

import com.docmall.domain.MemberVO;

//interface에는 어노테이션 사용하지 않음.
//mapper에서 만든 메소드를 service에서 부른다. (이름 똑같이 안해도 됨. 호출하기만 하면 됨.)
public interface MemberService {

	void join_ok(MemberVO vo);
	
	String idCheck(String mem_id);
}
