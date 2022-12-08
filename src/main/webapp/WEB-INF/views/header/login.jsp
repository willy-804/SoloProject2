<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 

<meta charset="UTF-8">
<!-- content에 자신의 OAuth2.0 클라이언트ID를 넣습니다. -->
<meta name ="google-signin-client_id" content="286730408484-5i95uu0otato7ei9ek8a7a9b3ebksucq.apps.googleusercontent.com">

<title>로그인</title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<link rel="stylesheet" href="../../../resources/css/login.css" type="text/css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://kit.fontawesome.com/e94ca5c1e6.js" crossorigin="anonymous"></script>

</head>
<body>

<%@ include file="../header/header.jsp"%>  

	<div id="container">
		
		<div class="loginsession">
						
			<h1 id="logincss">로그인</h1>
			<form action="/header/login" method="post">
				<input type="text" name="id" class="input" id="idchk"
					placeholder="아이디를 입력해주세요"> <input type="password"
					name="password" class="input" id="pwchk" placeholder="비밀번호를 입력해주세요"><br>
				<a href="../header/idsearch" class="signupbutton2">아이디/비밀번호 찾기</a> 	
				<a href="../header/signup" class="signupbutton">회원가입</a> <br>
				 <input type="submit" value="로그인" class="loginbutton"> <br>
			</form>

<br>
			<!-- 아래와같이 아이디를 꼭 써준다. -->
			<a id="naverIdLogin_loginButton" href="javascript: testPopUp(0)">
			    <i class="fa-solid fa-n" aria-hidden="true" class="apibutton"></i>
			</a>
			<!-- 네이버 스크립트 -->
	        <script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
		

			<!-- 카카오톡  -->
			<a href="javascript:kakaoLogin();"> 
				<i class="fa-solid fa-k" aria-hidden="true" class="apibutton"></i>
			</a>
			<!-- 카카오 스크립트 -->
			<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

			
			 <!-- 아래와같이 아이디를 꼭 써준다. -->
            <a id="GgCustomLogin" href="javascript:void(0)">
                <i class="fa-brands fa-google" aria-hidden="true" class="apibutton"></i>
            </a>
            <!-- 구글 api 사용을 위한 스크립트 -->
            <script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
            
			<br>
		
		</div>
	</div>
	<!-- API관련 JS연결 -->
			<script type="text/javascript" src="../../../resources/js/sign.js"></script>
	
</body>
</html>