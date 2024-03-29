<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내글</title>

<script type="text/javascript"
	src=" https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../../../resources/js/mypagelist.js"></script>
<link rel="stylesheet"
	href="../../../resources/css/mypagemodify.css?version=2.0"
	type="text/css">
</head>
<body>
<%@ include file="../header/header.jsp"%>

	<div id="container">
	
		<h1 class="title">내 글 페이지</h1>
		<div class="nav">
			<ul id="mypagenav">
				<li><a href="/do/mypage">내정보</a></li>
				<li><a>내글</a></li>
				<li><a href="/do/favorite">회원탈퇴</a></li>
			</ul>
			<form id="searchForm" action="/memModify" method="get">
				<span>
					<div id="searchAll">
						<select class="search" name="period">
							<option value="total">전체기간</option>
							<option value="day">1일</option>
							<option value="week">1주</option>
							<option value="month">1개월</option>
							<option value="sixMonth">6개월</option>
							<option value="year">1년</option>
						</select> <select class="search" name="type">
							<option value="T">제목</option>
							<option value="W">글작성자</option>
							<option value="TC">제목 + 게시글</option>
						</select> <input type="text" name="keyword" class="search_bar"
							placeholder="검색어를 입력해주세요"> <input type="button"
							class="search_btn" value="검색">
					</div> 
					<div>
						<input type="hidden" name="pageNum" value="${paging.cri.pageNum}">
						<input type="hidden" name="amount" value="${paging.cri.amount}">
						<input type="hidden" name="category"
							value="${paging.cri.category}">
					</div>
				</span>

			</form>
		</div>
		<table class="list_table">
			<tr id="tr1">
				<td class="bno">글번호</td>
				<td class="title_1">제목</td>
				<td class="nick">게시판</td>
				<td class="regdate">작성일</td>
				<td class="good">추천</td>
				<td class="cnt">조회</td>
			</tr>
			<!--  for문 시작 -->
			<c:forEach items="${myboard}" var="myboard">
				<tr>
					<td class="bno">${myboard.bno}</td>
					<td class="title_1"><a
						href="../to/board_detail?bno=${myboard.bno}">${myboard.title}</a></td>
					<td class="nick">${myboard.category}</td>
					<td class="regdate">${myboard.regdate}</td>
					<td class="cnthno">${myboard.cnthno}</td>
					<td class="cnt">${myboard.cnt}</td>
				</tr>
			</c:forEach>
			<!--  for문 끝 -->
		</table>
	</div>
	<div id="search">
		<div id="pagingArea">
			<!-- prev(이전)이 true이면 이전버튼 활성화 -->
			<c:if test="${paging.prev}">
				<a
					href="/memModify?period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.startPage-1}&amount=${paging.cri.amount}">이전</a>
			</c:if>
			<!-- begin(1)이 end(10) 될 동안 반복(1이 10 될 동안 반복) -->
			<c:forEach begin="${paging.startPage}" end="${paging.endPage}"
				var="num">
				<a
					href="/memModify?period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${num}&amount=${paging.cri.amount}">${num}</a>
			</c:forEach>
			<!-- next(다음)이 true이면 다음버튼 활성화 -->
			<c:if test="${paging.next}">
				<a
					href="/memModify?period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.endPage+1}&amount=${paging.cri.amount}">다음</a>
			</c:if>
		</div>
	</div>
	

</body>
</html>