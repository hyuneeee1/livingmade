package com.docmall.domain;

import java.util.Date;

import lombok.Data;

@Data //getter, setter 메소드, toString 자동생성 목적
/*테이블 컬럼:ㅣmem_name, mem_id, mem_pw, mem_phone, mem_email,
 mem_nickname, mem_update, mem_correctdate, mem_authcode */
public class MemberVO {

	private String mem_name;
	private String mem_id;
	private String mem_pw;
	private String mem_phone;
	private String mem_email;
	private String mem_nickname;
	private Date mem_update; //등록일
	private Date mem_correctdate; //수정일
	private String mem_authcode; //이메일인증
}
