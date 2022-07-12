package com.docmall.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.docmall.domain.MemberVO;
import com.docmall.mapper.MemberMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MemberServiceimpl implements MemberService {
	
	@Autowired
	private MemberMapper mapper;

	@Override
	public void join_ok(MemberVO vo) {
		
		mapper.join_ok(vo);
	}

	@Override
	public String idCheck(String mem_id) {
	
		return mapper.idCheck(mem_id);
	}

}
