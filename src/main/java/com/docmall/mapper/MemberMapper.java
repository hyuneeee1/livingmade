package com.docmall.mapper;

import com.docmall.domain.MemberVO;

public interface MemberMapper {
	
	void join_ok(MemberVO vo);
	
	String idCheck(String mem_id);
}
