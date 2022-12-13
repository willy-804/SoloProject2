<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>글쓰기</title>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>


<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<link rel="stylesheet" href="../../../resources/css/write.css?version=1.5" type="text/css">

<script type="text/javascript" src="../../../resources/js/uploadAjax.js"></script>

<script type="text/javascript" src="../../../resources/js/writeAttach.js?version=1.6"></script>

</head> 
<body>

<%@ include file="../header/header.jsp"%>
		
	<div id="container">
		

		<form action="/to/write" id="form" method="post">
			<div id="top">
		
			</div>  
			<div id="mid"> 
				<table>
					<tr>
						<td>
							<div id="select">
								<select name="category">
									<option value="게시판">게시판</option>
						
								<!--  아이디가 매니저인 경우 보이게끔  -->
								 <%

      if(id.equals("manager")){    
      %> 
									<option value="공지">공지</option>
						   <%
     }
     %>
						
						
								</select>
							</div>
						</td>
						<td><input type="text" name="title" id="uploadtitle"
							placeholder="제목을 입력하세요" maxlength="40"></td>
					</tr>
				</table>
					
						<div id="uploadResult" contentEditable = "true" style="min-height:500px; height:auto;">
						</div>
					
				<table>
					<tr>
						<td><label> 파일첨부 <input type="file" name="uploadFile"
								id="uploadFile" hidden="" multiple>
						</label></td>
						<td style="text-align: left"><div id="uploadResult2"></div></td>
					</tr>
				</table>
				<div id="button">
					<input type="button" id="uploadBtn" value="작성" class="button">
					<a href="/to/board"><input type="button" value="취소" class="button"></a>
				</div>
			</div>
			<div id="bottom"></div>
		</form>
		
	</div>
</body>
</html>