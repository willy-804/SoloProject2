<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>DO</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<link rel="stylesheet" href="../../../resources/css/board.css" type="text/css">

<script type="text/javascript" src="../../../resources/js/board.js"></script>

<script type="text/javascript" src="../../../resources/js/uploadAjax.js"></script>

    <link href="https://fonts.googleapis.com/css2?family=Epilogue:wght@500&display=swap" rel="stylesheet">
    
    <script src="https://kit.fontawesome.com/c92986acdf.js" crossorigin="anonymous"></script>
        
    <script src="https://kit.fontawesome.com/e94ca5c1e6.js" crossorigin="anonymous"></script>

</head>
<body>

<%@ include file="../header/header.jsp"%>

<div id="content">

	
	  <%
      if(id==null){
      %> <!-- 로그인 안 한 사용자면 -->	
	     <!--  글쓰기 버튼 없지롱 -->
      <%
      }else if(id.equals("manager")){   
      %>  <!--  id가 manager로 로그인 했으면 -->
          <a href="../to/write"><button type="button" class="writebtn">글쓰기</button></a>   
     <%
      }else{  
     %>  <!-- 로그인 했으면 -->
         <a href="../to/write"><button type="button" class="writebtn" >글쓰기</button></a>   
     <%
     }
     %>
     
  <div id="middle">
         <c:choose>
            <c:when test="${paging.cri.category == null or paging.cri.category == ''}">
               <p id="categorylist">IDONNO</p>
            </c:when>
            <c:otherwise>
               <p id="categorylist">${paging.cri.category}</p>
            </c:otherwise>
         </c:choose>
         
         <div id="search">
            <form action="/to/board" method="get" id="searchform">
               <div id="searchAll">             
                  <select class="search" name="period">
                     <option value="total">전체기간</option>
                     <option value="day">1일</option>
                     <option value="week">1주</option>
                     <option value="month">1개월</option>
                     <option value="sixMonth">6개월</option>
                     <option value="year">1년</option>
                  </select> 
                  <select class="search" name="type">
                     <option value="T">제목</option>
                     <option value="N">글작성자</option>
                     <option value="TC">제목+게시글</option>
                  </select> 
                  <input type="text" class="search" id="query" name="keyword" placeholder="검색어를 입력해주세요">
                  <button type="button" class="search" id="searchbtn">검색</button>
               </div>
               <div>   
                  <input type="hidden" name="pageNum" value="${paging.cri.pageNum}">
                   <input type="hidden" name="amount" value="${paging.cri.amount}">
                  <input type="hidden" name="category" value="${paging.cri.category}">
                  <input type="hidden" id="orderBy" value="${paging.cri.orderby}">
               </div>
            </form>
         </div>
         <div class="align">
            <div class="sort">
               <ul>
                  <li><a href="/to/list_icon3?category=${paging.cri.category}&pageNum=1&amount=20&orderby=최신순"><img src="/resources/image/align_icon3.png" class="sortimg"></a></li>
                  <li><a href="/to/list_icon2?category=${paging.cri.category}&pageNum=1&amount=10&orderby=최신순"><img src="/resources/image/align_icon2.png" class="sortimg"></a></li>
                  <li><a href="/to/board?category=${paging.cri.category}&pageNum=1&amount=10"><img src="/resources/image/align_icon1.png" class="sortimg_1"></a></li>
               </ul>
            </div>
            <div class="sortby">
               <a href="/to/board?category=${paging.cri.category}&period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=1&amount=10" id="pageNum" class="listcount">${paging.cri.amount}개씩</a>
               <ul>
                  <li><a href="/to/board?category=${paging.cri.category}&period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=1&amount=5" id="pageNum" class="listnum">5개씩</a></li>
                  <li><a href="/to/board?category=${paging.cri.category}&period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=1&amount=10" id="pageNum" class="listnum">10개씩</a></li>
                  <li><a href="/to/board?category=${paging.cri.category}&period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=1&amount=15" id="pageNum" class="listnum">15개씩</a></li>
                  <li><a href="/to/board?category=${paging.cri.category}&period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=1&amount=20" id="pageNum" class="listnum">20개씩</a></li>
               </ul>
            </div>
         </div>
      
         <table>
            <tr id="tr1">
               <td class="bno"><span>게시판</span></td>
               <td class="title"><span>제목</span></td>
               <td class="nick"><span>글쓴이</span></td>
               <td class="regdate"><span><a href="/to/board?category=${paging.cri.category}&period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=1&amount=${paging.cri.amount}&orderby=최신순" class="orderBy"  id="byReg">작성일▽</a></span></td>
               <td class="cnt"><span><a href="/to/board?category=${paging.cri.category}&period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=1&amount=${paging.cri.amount}&orderby=추천순" class="orderBy" id="byCntHno">추천▽</a></span></td>
               <td class="good"><span><a href="/to/board?category=${paging.cri.category}&period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=1&amount=${paging.cri.amount}&orderby=조회순" class="orderBy" id="byCnt">조회▽</a></span></td>
            </tr>
            <c:if test="${paging.cri.pageNum == 1 and (keyword == null or keyword == '')}">
               <!-- 매니저글 for문 시작 -->
               <c:forEach items="${manager}" var="managerlist">
                  <tr id="notice">
                     <td class="bno">공지</td>
                     <td class="title"><a href="../to/board_detail?bno=${managerlist.bno}">${managerlist.title}</a></td>
                     <td class="nick">${managerlist.nick}</td>
                     <td class="regdate">${managerlist.regdate}</td>
                     <td class="cnt">${managerlist.good}</td>
                     <td class="good">${managerlist.cnt}</td>
                  </tr>
               </c:forEach>
               <!-- 매니저글 for문 끝 -->
            </c:if>
            <!-- 게시글 목록 for문 시작 -->
            <c:forEach items="${list }" var="boardlist">
               <tr id="listTr">
                  <td class="bno"><a href="/to/board?category=${boardlist.category}">${boardlist.category}</a></td>
                  <td class="title"><a href="../to/board_detail?bno=${boardlist.bno}">${boardlist.title}</a><span id="cntrno">[${boardlist.cntrno}]</span></td>
                  <td class="nick">${boardlist.nick}
                     <ul class="idul">
                        <li><a href="/to/board?period=total&type=N&keyword=${boardlist.nick}&pageNum=1&amount=10">게시글 보기</a></li>
                     
                     </ul>
                  </td>
                  <td class="regdate">${boardlist.regdate}</td>
                  <td class="cnt">${boardlist.cnthno}</td>
                  <td class="good">${boardlist.cnt}</td>
               </tr>
            </c:forEach>
            <!-- 게시글 for문 끝 -->
         </table>      
         <c:if test="${paging.total == 0}">
            <div id="nodata">
               <p id="nodatah">등록된 게시글이 없습니다.</p>
            </div>
         </c:if>                  
      </div> 
      <div id="search">
         <div id="pagingArea">
            <!-- prev(이전)이 true이면 이전버튼 활성화 -->
            <c:if test="${paging.prev}">
               <a href="/to/board?category=${paging.cri.category}&period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.startPage-1}&amount=${paging.cri.amount}&orderby=${paging.cri.orderby}" class="pageBtn">이전</a>
            </c:if>
      
            <!-- begin(1)이 end(10) 될 동안 반복(1이 10 될 동안 반복) -->
            <c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
               <a href="/to/board?category=${paging.cri.category}&period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${num}&amount=${paging.cri.amount}&orderby=${paging.cri.orderby}" id="pageNum"
              	 <c:if test="${paging.cri.pageNum==num}">
               		style="font-weight:bold; color:red;"
               	 </c:if>
               >${num}</a>
            </c:forEach>
            
            <!-- next(다음)이 true이면 다음버튼 활성화 -->
            <c:if test="${paging.next}">
               <a href="/to/board?category=${paging.cri.category}&period=${paging.cri.period}&type=${paging.cri.type}&keyword=${paging.cri.keyword}&pageNum=${paging.endPage+1}&amount=${paging.cri.amount}&orderby=${paging.cri.orderby}" class="pageBtn">다음</a>
            </c:if>
         </div>
      </div>
   </div>

</body>
</html>