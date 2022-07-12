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
    <link href="pricing.css" rel="stylesheet">
  </head>
  <body>

<!-- header.jsp -->    
<%@include file="/WEB-INF/views/include/Header.jsp" %>

 <h3><div class="text-center">회원가입</div></h3><br><br><br>
<div class="container">
  <div class="text-center">
   <form>
	  <div class="form-group row">
	    <label for="staticEmail" class="col-sm-2 col-form-label">이름</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="staticEmail">
	    </div>
	  </div>
	  <div class="form-group row">
	    <label for="inputPassword" class="col-sm-2 col-form-label">아이디</label>
	    <div class="col-sm-7">
	      <input type="text" class="form-control" id="inputPassword" placeholder="아이디를 8~15이내로 입력해주세요.">
	    </div>
	    <div class="col-sm-3">
	     <button type="button" class="btn btn-primary">아이디 중복체크</button>
	    </div>
	  </div>
	  	  <div class="form-group row">
	    <label for="staticEmail" class="col-sm-2 col-form-label">비밀번호</label>
	    <div class="col-sm-10">
	      <input type="password" class="form-control" id="staticEmail" placeholder="비밀번호를 입력해주세요.">
	    </div>
	  </div>
	  <div class="form-group row">
	    <label for="inputPassword" class="col-sm-2 col-form-label">비밀번호 확인</label>
	    <div class="col-sm-10">
	      <input type="password" class="form-control" id="inputPassword" placeholder="비밀번호를  다시 입력해주세요.">
	    </div>
	  </div> 
	  <div class="form-group row">
	    <label for="staticEmail" class="col-sm-2 col-form-label">전화번호</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="staticEmail" placeholder="010-1111-2222">
	    </div> 
	  </div>
	  	  <div class="form-group row">
	    <label for="staticEmail" class="col-sm-2 col-form-label">닉네임</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="staticEmail">
	    </div> 
	  </div>
	  <div class="form-group row">
	    <label for="staticEmail" class="col-sm-2 col-form-label">이메일</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="staticEmail" placeholder="email@example.co.kr">
	    </div>
	  </div><br><br>
	  <button type="button" class="btn btn-primary">회원가입</button> 
	 </form>
    </div>

<!-- footer.jsp -->
<%@include file="/WEB-INF/views/include/Footer.jsp" %>
</div>

<%@include file="/WEB-INF/views/include/common.jsp" %>
  </body>
</html>
