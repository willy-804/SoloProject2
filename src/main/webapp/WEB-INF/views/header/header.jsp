<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 

<!DOCTYPE html>
<html>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<link type="text/css" rel="stylesheet" href="/../../resources/css/header.css" >
    
<script type="text/javascript" src="../../resources/js/header.js"></script>

<meta charset="UTF-8">

 <nav class="navbar">

      <div class="navbar__logo">
       
       <a href="/"><i class="fa-solid fa-rocket"></i></a>
       
      </div>
                 
      <ul class="navbar__menu">

        <li></li>
        <li><a href="/today" data-hover="TODAY"><span>TODAY</span></a></li> <!-- 달력 -->
        <li><a href="/i" data-hover="I"><span>I</span></a></li> <!-- 만다라트 -->
        <li><a href="/know" data-hover="KNOW"><span>KNOW</span></a></li> <!-- 오늘 해야할 일 -->
        <li><a href="/what" data-hover="WHAT"><span>WHAT</span></a></li> <!-- 마인드맵 -->
        <li><a href="/to/board" data-hover="TO"><span>TO</span></a></li> <!-- 게시판  -->    
            <!-- /to/board?category=게시판" -->
   
     <% 
      String id = (String) session.getAttribute("id");
      if(id==null){
      %> <!-- 로그인 안 한 사용자면 -->
       
        <li><a href="/secret" data-hover="DO"><span>DO</span></a></li><!-- 마이 페이지 말고 꽝 페이지 -->
     
      <%
      }else if(id.equals("manager")){   
      %>  <!--  id가 manager로 로그인 했으면 -->
               
        <li><a href="/manamger/manager" data-hover="MGR"><span>MGR</span></a></li> <!-- 관리자 페이지  -->
     
     <%
      }else{  
     %>  <!-- 로그인 했으면 -->
       
        <li><a href="/do/mypage" data-hover="DO"><span>DO</span></a></li> <!-- 마이 페이지  -->
      
     <%
     }
     %>
      
      </ul>
      
      <ul class="navbar__icons">    
      
        <li><a href="/header/logout"><i class="fa-solid fa-user-minus"></i></a></li> <!-- 로그아웃  -->  
        <li><a href="/header/login"><i class="fa-solid fa-user"></i></a></li> <!--로그인  -->
        <li><a href="/header/signup"><i class="fa-solid fa-user-plus"></i></a></li> <!--회원가입   -->
      
      </ul>
    
      </nav>
   