<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/list_icon.js"></script>
<script type="text/javascript" src="/resources/js/idClickEvent.js"></script>
<link rel="stylesheet" href="../../../resources/css/list_icon2.css?version=1.0" type="text/css">
<link rel="stylesheet" href="../../../resources/css/idClickEvent_icon2.css" type="text/css">
</head>
<body>
	<%@ include file="../header/header.jsp"%>
	<div id="content">
		<div id="middle">
			<c:choose>
				<c:when
					test="${paging.cri.category == null or paging.cri.category == ''}">
					<p id="categorylist"></p>
				</c:when>
				<c:otherwise>
					<p id="categorylist">${paging.cri.category}</p>
				</c:otherwise>
			</c:choose>
			<div id="search">
				<form action="/to/list_icon2" method="get" id="searchform">
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
							<option value="N">글작성자</option>
							<option value="TC">제목+게시글</option>
						</select> <input type="text" class="search" id="query" name="keyword"
							placeholder="검색어를 입력해주세요">
						<button type="button" class="search" id="searchbtn">검색</button>
					</div>
					<div>
						<input type="hidden" name="pageNum" value="${paging.cri.pageNum}">
						<input type="hidden" name="amount" value="${paging.cri.amount}">
						<input type="hidden" name="category"
							value="${paging.cri.category}">
					</div>
				</form>
			</div>
			<div class="align">
				<div class="sort">
					<ul>
						<li><a
							href="/to/list_icon3?category=${paging.cri.category}&pageNum=1&amount=20&orderby=최신순"><img
								src="/resources/image/align_icon3.png" class="sortimg"></a></li>
						<li><a
							href="/to/list_icon2?category=${paging.cri.category}&pageNum=1&amount=10&orderby=최신순"><img
								src="/resources/image/align_icon2.png" class="sortimg_1"></a></li>
						<li><a
							href="/to/board?category=${paging.cri.category}&pageNum=1&amount=10"><img
								src="/resources/image/align_icon1.png" class="sortimg"></a></li>
					</ul>
				</div>
				<div class="sortby">
					<a href="/to/list_icon2?category=${paging.cri.category}&period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=1&amount=10" class="listcount">${paging.cri.orderby}</a>
					<ul>
						<li><a href="/to/list_icon2?category=${paging.cri.category}&period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=1&amount=${paging.cri.amount}&orderby=최신순" class="orderBy" id="byReg">최신순</a></li>
						<li><a href="/to/list_icon2?category=${paging.cri.category}&period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=1&amount=${paging.cri.amount}&orderby=추천순" class="orderBy" id="byCntHno">추천순</a></li>
						<li><a href="/to/list_icon2?category=${paging.cri.category}&period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=1&amount=${paging.cri.amount}&orderby=조회순" class="orderBy" id="byCnt">조회순</a></li>
					</ul>
				</div>
			</div>
			<table>
				<!-- 이미지 게시글 목록 for문 시작 -->
				<c:forEach items="${list}" var="boardlist">
					<tr>
						<td rowspan="3" id="uploadResult"><a href="../to/board_detail?bno=${boardlist.bno}"><img
							src="/display?fileName=${boardlist.filePath}"></a></td>
						<td><a href="../to/board_detail?bno=${boardlist.bno}">${boardlist.title}</a></td>
					</tr>
					<tr>
						<td class="contentTd"><a href="/to/board_detail?bno=${boardlist.bno}" class="contentA">${boardlist.content}</a></td>
					</tr>
					<tr class="tr_last">
						<td class="td_last">
							${boardlist.regdate} / 
							<span class="nick">${boardlist.nick}  
								<ul class="idul">
									<li><a href="/to/board?period=total&type=N&keyword=${boardlist.nick}&pageNum=1&amount=10">게시글 보기</a></li>
								</ul>
							</span>
							<a href="/to/board?period=total&type=N&keyword=${boardlist.nick}&pageNum=1&amount=10"></a> 
							/ 👍 ${boardlist.cnthno} / 💬 ${boardlist.cntrno}
						</td>
					</tr>
				</c:forEach>
				<!-- 이미지 게시글 for문 끝 -->
			</table>
			<c:if test="${paging.total == 0}">
				<div id="nodata">
					<p id="nodatah">등록된 게시글이 없습니다</p>
				</div>
			</c:if>
		</div>
		<div id="search">
			<div id="pagingArea">
				<!-- prev(이전)이 true이면 이전버튼 활성화 -->
				<c:if test="${paging.prev}">
					<a href="/to/list_icon2?category=${paging.cri.category}&period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.startPage-1}&amount=${paging.cri.amount}&orderby=${paging.cri.orderby}" class="pageBtn">이전</a>
				</c:if>

				<!-- begin(1)이 end(10) 될 동안 반복(1이 10 될 동안 반복) -->
				<c:forEach begin="${paging.startPage}" end="${paging.endPage}"
					var="num">
					<a href="/to/list_icon2?category=${paging.cri.category}&period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${num}&amount=${paging.cri.amount}&orderby=${paging.cri.orderby}" id="pageNum"
						<c:if test="${paging.cri.pageNum==num}">
							style="font-weight:bold; color:red;"
						</c:if>
					>${num}</a>
				</c:forEach>

				<!-- next(다음)이 true이면 다음버튼 활성화 -->
				<c:if test="${paging.next}">
					<a href="/to/list_icon2?category=${paging.cri.category}&period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.endPage+1}&amount=${paging.cri.amount}&orderby=${paging.cri.orderby}" class="pageBtn">다음</a>
				</c:if>
			</div>
		</div>
	</div>

</body>
</html>