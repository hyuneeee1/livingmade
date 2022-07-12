<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>LivingMade</title>

<meta name="theme-color" content="#563d7c">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="/resources/css/pricing.css" rel="stylesheet">
  </head>
  <body>

<!-- header.jsp -->    
<%@include file="/WEB-INF/views/include/Header.jsp" %><br>
<a href="http://localhost:9090/"><div align="center"><img src=/resources/image/pic.png  alt="" width="100" height="100"></div></a><br>
 <h3><div class="text-center" >회원가입</div></h3><br><br>
<div class="container" align="center">
  <div class="text-center">
   <form id="joinForm" action="join_ok" method="post">
	  <div class="form-group" align="center">
	    <label for="mem_name" class="col-sm-2 col-form-label">이름</label>
	    <div class="col-sm-5">
	      <input type="text" class="form-control" id="mem_name" name="mem_name">
	    </div>
	  </div>
	  <div class="form-group" align="center">
	    <label for="mem_id" class="col-sm-2 col-form-label">아이디</label>
	    <div class="col-sm-5">
	      <input type="text" class="form-control" id="mem_id" name="mem_id" placeholder="아이디를 8~15이내로 입력해주세요.">
	    </div>
	    <div class="col-sm-5">
	     <button type="button" class="btn btn-link" id="btnIDcheck">아이디 중복체크</button>
	    </div>
		<label for="hidden" class="col-sm-2" id="idCheckStatus">중복체크 결과</label>
	  </div>
	  	  <div class="form-group" align="center">
	    <label for="mem_pw" class="col-sm-2 col-form-label">비밀번호</label>
	    <div class="col-sm-5">
	      <input type="password" class="form-control" id="mem_pw" name="mem_pw" placeholder="비밀번호를 입력해주세요.">
	    </div>
	  </div>
	  <div class="form-group" align="center">
	    <label for="mem_pw_2" class="col-sm-2 col-form-label">비밀번호 확인</label>
	    <div class="col-sm-5">
	      <input type="password" class="form-control" id="mem_pw_2"  placeholder="비밀번호를  다시 입력해주세요.">
	    </div>
	  </div> 
	  <div class="form-group" align="center">
	    <label for="mem_phone" class="col-sm-2 col-form-label">전화번호</label>
	    <div class="col-sm-5">
	      <input type="text" class="form-control" id="mem_phone" name="mem_phone" placeholder="010-1111-2222">
	    </div> 
	  </div>
	  	  <div class="form-group" align="center">
	    <label for="mem_nickname" class="col-sm-2 col-form-label">닉네임</label>
	    <div class="col-sm-5">
	      <input type="text" class="form-control" id="mem_nickname" name="mem_nickname">
	    </div> 
	  </div>
	  <div class="form-group" align="center">
	    <label for="mem_email" class="col-sm-2 col-form-label">이메일</label>
	    <div class="col-sm-5">
	      <input type="text" class="form-control" id="mem_email" name="mem_email" placeholder="email@example.co.kr">
	    </div>
	  </div>
	   <div class="form-group" align="center">
	    <label for="mem_authcode" class="col-sm-4 col-form-label">이메일 인증코드</label>
	    <div class="col-sm-5">
	      <input type="text" class="form-control" id="mem_authcode" name="mem_authcode">
	    </div>
	  </div><br><br>
	  <button type="button" class="btn btn-primary" id="joinSend">회원가입</button> 
	</form>
   </div>

<!-- footer.jsp -->
<%@include file="/WEB-INF/views/include/Footer.jsp"%>
</div>
<%@include file="/WEB-INF/views/include/common.jsp"%>


<!--  <script type="/js/member/join.js"></script>-->

<script>
 $(document).ready(function(){

	let joinForm = $("#joinForm");

   //회원정보 저장하기
   $("#joinSend").on("click", function(){
	   
	   console.log("회원정보 저장");

	   //회원가입의 타입이 버튼성격을 갖고 있어야 한다.(submit x)
	   //유효성 검사작업을 해야 한다.
	   joinForm.submit();
   });

	let isIDCheck = false;
	
	//아이디 중복체크
	$("#btnIDcheck").on("click",function(){

		if($("#mem_id").val() =="") {
			alert("아이디를 입력하세요.");
			$("#mem_id").focus();
			return; //return을 넣으면 그 밑으로 진행 안됨.

		}

		$.ajax({
			url: '/member/idCheck',
			type: "get",
			dataType: 'text',
			data: {mem_id : $("#mem_id").val()},
			success: function(result) {
				
				//console.log(result);

				if(result == "yes"){
					$("#idCheckStatus").css({'display' : 'inline', 'color':'blue'});
					$("#idCheckStatus").html("<b>" + $("#mem_id").val() +" 사용 가능</b>");
					isIDCheck = true;
				}else{
					$("#idCheckStatus").css({'display' : 'inline', 'color':'red'});
					$("#idCheckStatus").html("<b>" + $("#mem_id").val() +" 사용 불가능</b>");
					isIDCheck = false;
				}
			}

		});
	});
});
</script>
</body>
</html>