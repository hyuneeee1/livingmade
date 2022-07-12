package com.docmall.dto;

import lombok.Data;

@Data
public class EmailDTO {

	private String senderName; //발신자 이름
	private String senderMail; //발신자 메일 주소
	private String receiveMail; //수신자 메일 주소. 회원 메일주소 사용
	private String subject; // 제목
	private String message; // 본문
	
	public EmailDTO() {
		this.senderName = "livingmade";
		this.senderMail = "livingmade"; //GMail로 사용(SMTP메일서버 이용. 현업에서는 회사 메일서버 정보를 이용해야 함.
		this.subject = "livingmade 회원가입 메일인증코드입니다.";
		this.message = "인증코드를 확인하시고 인증코드를 이메일 인증코드란에 입력하시기 바랍니다.";
		
		
		
	}
}
