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
    <title>Signin Template · Bootstrap v4.6</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/sign-in/">

    

    <!-- Bootstrap core CSS -->
<link href="/docs/4.6/dist/css/bootstrap.min.css" rel="stylesheet"  crossorigin="anonymous">




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
    <link href="/resources/css/signin.css" rel="stylesheet">
 
  </head>


  <body class="text-center">
<form class="form-signin">
  <a href="http://localhost:9090/"><img class="mb-4" src="/resources/image/pic.png" alt="" width="100" height="100"></a>
  <h1 class="h3 mb-3 font-weight-normal">로그인</h1>
  <label for="inputEmail" class="sr-only">아이디</label>
  <input type="email" id="inputEmail" class="form-control" placeholder="아이디" required autofocus>
  <label for="inputPassword" class="sr-only">비밀번호</label>
  <input type="password" id="inputPassword" class="form-control" placeholder="비밀번호" required>
  <button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button><br>
 <a href="#"  class="text-dark" >아이디/비밀번호 찾기</a>ㅣ
<a href="/member/join"  class="text-dark" >회원가입</a><br><br>
  <a href="https://www.instagram.com/accounts/login/?"><img class="mb-4" src="/resources/image/insta.png" alt="" width="50" height="50"></a>
  <a href="https://accounts.kakao.com/login?continue=https%3A%2F%2Fkauth.kakao.com%2Foauth%2Fauthorize%3Fproxy%3DeasyXDM_Kakao_sszj8ei50cn_provider%26ka%3Dsdk%252F1.43.0%2520os%252Fjavascript%2520sdk_type%252Fjavascript%2520lang%252Fko-KR%2520device%252FWin32%2520origin%252Fhttps%25253A%25252F%25252Fwww.epis.or.kr%26origin%3Dhttps%253A%252F%252Fwww.epis.or.kr%26response_type%3Dcode%26redirect_uri%3Dkakaojs%26state%3Djf6rakcg5bg5i4qcp9inj7%26client_id%3D950f3ae1f2f550e5ba7ff7d9fffc7781&talk_login=hidden"><img class="mb-4" src="/resources/image/kakaotalk.png" alt="" width="50" height="50"></a>
  <a href="https://ko-kr.facebook.com/login.php?next=https%3A%2F%2Fko-kr.facebook.com%2Fprivacy%2Fconsent%2Fpipa%2F%3Fparams%255Bpft_surface%255D%3Dfacebook_comet%26params%255Bis_new_user_blocking_flow%255D%3Dfalse%26params%255Bpft_session_key%255D%3Dcfba5dbc-9ac8-45ea-9541-ef754a0d6631%26params%255Bis_existing_user_blocking_flow%255D%26source%3Dpipa_blocking_flow"><img class="mb-4" src="/resources/image/facebook.png" alt="" width="50" height="50"></a>
  <p class="mt-5 mb-3 text-muted">&copy; livingmade</p>
</form>


<%@include file="/WEB-INF/views/include/common.jsp" %>

    
  </body>
</html>
