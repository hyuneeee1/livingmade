/* 회원가입  */

//html문서와 내용을 브라우저가 읽고 난 이후에 동작되는 특징.
 $(document).ready(function(){

	 let joinForm = $("#joinForm");

	//회원정보 저장하기
	$("#joinSend").on("click", function (){
		
		console.log("회원정보 저장");

		//회원가입의 타입이 버튼성격을 갖고 있어야 한다.(submit x)
		//유효성 검사작업을 해야 한다.
		joinForm.submit();
	});

	//아이디 중복체크
	$("#btnIDcheck").on("click",function(){

		if($("#mem_id").val() =="") {
			alert("아이디를 입력하세요.");
			$("#mem_id").focus();
			return; //return을 넣으면 그 밑으로 진행 안됨.
		}

	
	});
});