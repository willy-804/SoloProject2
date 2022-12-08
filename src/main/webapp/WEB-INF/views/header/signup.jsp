<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>회원가입</title>

<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>

<link rel="stylesheet" href="../../resources/css/signup.css?version=1.4" type="text/css">

<script type="text/javascript" src="../../../resources/js/signup.js"></script>

<script type="text/javascript" src="../../../resources/js/effective.js?version=1.2"></script>

</head>
<body>
	
<%@ include file="../header/header.jsp"%>
			
	<div id="container">
				
		<h1 id="signupcss">회원가입</h1>
		<div id="top">
			회원 정보 입력 (필수 <span style="color: red;">*</span> )
		</div>
		<form action="/header/signup" method="post"
			onsubmit="return jsSubmit();">
			<div id="main">
				<table>
					<tr class="firstchild">
						<td>*</td>
						<td>NAME</td>
						<td><input type="text" id="name" name="name" maxlength='10'
							class="box"></td>
					</tr>
					<tr>
						<td>*</td>
						<td>ID</td>
						<td><input type="text" id="idchk" name="id" maxlength='20'
							class="box"></td>
						<td><input type="button" value="ID CHECK" onclick="idCheck()"
							class="idbtn"></td>
					</tr>
					<tr>

						<td></td>
						<td></td>
						<td colspan="2"><span id="idmsg" class="msg"></span></td>
					</tr>
					<tr>
						<td>*</td>
						<td>PASSWORD</td>
						<td><input type="password" id="pwchk" name="password"
							maxlength='20' class="box"></td>
					</tr>
					<tr>

						<td></td>
						<td></td> 
						<td colspan="2"><span id="pwmsg" class="msg"></span></td>
					</tr>
					<tr>
						<td>*</td>
						<td>PASSWORD CHECK</td>
						<td><input type="password" id="rechk" maxlength='20'
							class="box"></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td colspan="2"><span id="remsg" class="msg"></span></td>
					</tr>
					<tr>
						<td>*</td>
						<td>E-MAIL</td>
						<td colspan="2"><input type="text" id="email" name="email"
							maxlength='20' class="box"> @ <select name="email"
							class="emailselect">
								<option value="@naver.com">naver.com</option>
								<option value="@daum.net">daum.net</option>
								<option value="@google.com">gmail.com</option>
						</select></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td colspan="2"><span id="emmsg" class="msg"></span></td>
					</tr>
					<tr>
						<td>*</td>
						<td>PHONE</td>
						<td><select name="phone" class="emailselect">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="019">019</option>
						</select> - <input type="text" name="phone" id="numchk1" maxlength='4'
							class="shortbox" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');"> - <input type="text" name="phone"
							id="numchk2" maxlength='4' class="shortbox" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');"></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td colspan="2"><span id="nummsg" class="msg"></span></td>
					</tr>
					<tr>
						<td>*</td>
						<td>BIRTH</td>
						<td><input type="date" name="birth" id="bdchk" class="box"></td>
					</tr>
					<tr>
						<td>*</td>
						<td>NICKNAME</td>
						<td><input type="text" id="nickname" name="nick"
							maxlength='10' class="box"></td>
					</tr>
				
				</table>
				
				<input type="submit" value="가입" id="signup" class="button">
				<a href="../header/login" class="cancle"><input type="button"
					value="취소" class="button"></a>
			</div>
		</form>
		
	</div>
</body>
</html>