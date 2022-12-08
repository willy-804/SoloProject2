<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <script src="https://kit.fontawesome.com/e94ca5c1e6.js" crossorigin="anonymous"></script>
    
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.3.min.js"></script>
    
    <link type="text/css" rel="stylesheet" href="/../../resources/css/home.css" >
    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
    integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk"
    crossorigin="anonymous">
    
<title>HOME</title>
	
</head>
<body>
 
<div class="jb-box" >

      <video muted autoplay loop>
        <source id="video" src="resources/videos/0.mp4" type="video/mp4"> <!-- 랜덤으로 바뀌도록 만들었어도 이 부분을 지우면 안된다 --> 
        <strong>Your browser does not support the video tag.</strong>
      </video>
      
      
<div class="jb-text">
  
  <%@ include file="../views/header/header.jsp"%>    
 
        <br><br><br><br><br><br><br><br><br>  
        <br><br><br><br><br><br><br>  
        <P> ${serverTime} </P>
                      
<div class="timer-box">

 <div class="timer js-timer">
 05:00
 </div>

<div class="timer-form_Btn">

 <div class="timerBtn js-timer__startBtn" id="startBtn">
 <i class="fas fa-play"></i>
 </div>
 
 <div class="timerBtn js-timer__stopBtn">
 <i class="fas fa-pause"></i>
 </div>

 <div class="timerBtn js-timer__resetBtn">
 <i class="fas fa-stop"></i>
 </div>

</div>

</div>

<div class="bgmusic">
<iframe width="300" height="33" 
src="https://www.youtube.com/embed/HO6cbtdmkIc?autoplay=1&mute=1&loop=1" title="YouTube video player" 
frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>
</div> 
        
</div>
</div>
  
  
<script type="text/javascript" src="../../resources/js/home.js"></script>
  
</body>
</html>
