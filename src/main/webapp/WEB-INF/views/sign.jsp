<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>

<link type="text/css" rel="stylesheet" href="/../../resources/css/sign.css" >

<script src="https://kit.fontawesome.com/e94ca5c1e6.js" crossorigin="anonymous"></script>

<!-- content에 자신의 OAuth2.0 클라이언트ID를 넣습니다. -->
<meta name ="google-signin-client_id" content="286730408484-5i95uu0otato7ei9ek8a7a9b3ebksucq.apps.googleusercontent.com">

<title>회원가입/로그인</title>

</head>
<body>

 <%@ include file="../views/header/header.jsp"%>    
 
<div class="wrapper">
  <div class="container">
    <div class="sign-up-container">
       <form action="/signup" method="post" onsubmit="return jsSubmit();">
        <h1>Create Account</h1>
        <br>     
        <input type="text" id="idchk" name="id" class="box" placeholder="Id">
        <button type="button" onclick="idCheck()" class="idbtn">아이디 중복확인</button>
        <input type="password" id="pwchk" name="password" class="box" placeholder="Password">
        <input type="password" id="rechk" class="box" placeholder="Password check">
        <span id="remsg" class="msg"></span>
        <input type="text" id="name" name="name" class="box" placeholder="Name">
        <input type="email" id="email" name="email" class="box" placeholder="Email">
        <span id="emmsg" class="msg"></span>
        <input type="text" id="nickname" name="nick" class="box" placeholder="nickname">
        <button type="submit" class="form_btn">Sign Up</button>
      </form>
    </div>
    <div class="sign-in-container">
      <form action="/signin" method="post">
        <h1>Sign In</h1>
        <div class="social-links">
          
          <div>
            <!-- 아래와같이 아이디를 꼭 써준다. -->
            <a id="GgCustomLogin" href="javascript:void(0)">
                <i class="fa-brands fa-google" aria-hidden="true" class="apibutton"></i>
            </a>
            <!-- 구글 api 사용을 위한 스크립트 -->
            <script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
          </div>
          <div>
            <a id="naverIdLogin_loginButton" href="javascript: testPopUp(0)">
                <i class="fa-solid fa-n" aria-hidden="true" class="apibutton"></i></a>
            <!-- 네이버 스크립트 -->
			<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
          </div>
          <div>
            <a href="javascript:kakaoLogin();">
                <i class="fa-solid fa-k" aria-hidden="true" class="apibutton"></i>
            </a>
            <!-- 카카오 스크립트 -->
			<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
          </div>
        </div>
        <span>or use your account</span>
        <input type="text" name="id" class="input" id="idchk" placeholder="id">
        <input type="password" name="password" class="input" id="pwchk" placeholder="password">
        <a href="../idsearch" class="signupbutton2">forgot your id or password?</a> 
        <button type="submit" class="form_btn" id="signin" class="loginbutton">Sign In</button>
      </form>
      
			
    </div>
    <div class="overlay-container">
      <div class="overlay-left">
        <h1>Welcome Back</h1>
        <p>To keep connected with us please login with your personal info</p>
        <button id="signIn" class="overlay_btn">Sign In</button>
      </div>
      <div class="overlay-right">
        <h1>Hello, Friend</h1>
        <p>Enter your personal details and start journey with us</p>
        <button id="signUp" class="overlay_btn">Sign Up</button>
      </div>
    </div>
  </div>
</div>
			
<script type="text/javascript" src="../../resources/js/sign.js"></script>

</body>
</html>
