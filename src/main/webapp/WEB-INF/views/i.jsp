<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 세션 쓸 꺼니까 이 부분은 다 지워야 한다 -->  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  
<link type="text/css" rel="stylesheet" href="/../../resources/css/i.css" >
    
<meta name="viewport" content="width=device-width, initial-scale=1.0">
 
<!-- 화면 캡처 CDN --> 
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script> 

<script src="https://cdn.jsdelivr.net/npm/es6-promise@4/dist/es6-promise.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/es6-promise@4/dist/es6-promise.auto.min.js"></script>

    <link href="https://fonts.googleapis.com/css2?family=Epilogue:wght@500&display=swap" rel="stylesheet">
    
    <script src="https://kit.fontawesome.com/c92986acdf.js" crossorigin="anonymous"></script>
        
    <script src="https://kit.fontawesome.com/e94ca5c1e6.js" crossorigin="anonymous"></script>

<title>나의 만다라트</title>

</head>
<body>


<%@ include file="../views/header/header.jsp"%>    

<div class="main">


<button id="shot">CAPTURE</button>
<button id="btn-modal">EXAMPLE</button>

    <div id="modal" class="modal-overlay">
        <div class="modal-window">
            <div class="close-area">X</div>
            <div class="content">
                <img src="../../resources/image/만다라트예시.jpeg">           
            </div>
        </div>
    </div>
    


<form action = "/i" method = "post" id="form">
<!-- form 태그의 action 속성에는 입력된 데이터를 보낼 페이지의 주소를 값으로 쓴다  -->

<div id="capture">

<div class="parent">
<div class="child" id="mandal1">
<table class="tg">
  <tr>
    <td class="tg-0lax"><input name="mandal"></td>
    <td class="tg-0lax"><input name="mandal"></td>
    <td class="tg-0lax"><input name="mandal"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><div id='result1'></div></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
</table>
</div>

<div class="child" id="mandal2">
<table class="tg">
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><div id='result2'></div></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
</table>
</div>

<div class="child" id="mandal3">
<table class="tg">
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><div id='result3'></div></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
</tbody>
</table>
</div>
</div>

<div class="parent">
<div class="child" id="mandal4">
<table class="tg">
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><div id='result4'></div></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
</table>
</div>

<div class="child" id="mandal5">
<table class="tg" id="center">
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal" id='goal1' onchange='printName()' placeholder='목표1'></td>
    <td class="tg-0lax"><input type="text" name="mandal" id='goal2' onchange='printName()' placeholder='목표2'></td>
    <td class="tg-0lax"><input type="text" name="mandal" id='goal3' onchange='printName()' placeholder='목표3'></td>
  </tr>
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal" id='goal4' onchange='printName()' placeholder='목표4'></td>
    <td class="tg-0lax"><input type="text" name="mandal" id='finalgoal' placeholder='최종목표'></td>
    <td class="tg-0lax"><input type="text" name="mandal" id='goal5' onchange='printName()' placeholder='목표5'></td>
  </tr>
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal" id='goal6' onchange='printName()' placeholder='목표6'></td>
    <td class="tg-0lax"><input type="text" name="mandal" id='goal7' onchange='printName()' placeholder='목표7'></td>
    <td class="tg-0lax"><input type="text" name="mandal" id='goal8' onchange='printName()' placeholder='목표8'></td>
  </tr>
</table>
</div>

<div class="child" id="mandal6">
<table class="tg">
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><div id='result5'></div></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
</tbody>
</table>
</div>
</div>

<div class="parent">
<div class="child" id="mandal7">
<table class="tg">
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><input type="text" ame="mandal"></td>
    <td class="tg-0lax"><div id='result6'></div></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
</table>
</div>

<div class="child" id="mandal8">
<table class="tg">
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><div id='result7'></div></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
</table>
</div>

<div class="child" id="mandal9">
<table class="tg">
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><div id='result8'></div></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
    <td class="tg-0lax"><input type="text" name="mandal"></td>
  </tr>
</tbody>
</table>
</div>
</div>
    
</div>

<button class="btn" type="button">SAVE</button>

</form>



</div>

<a id="target" style="display: none"></a>
             
<script type="text/javascript" src="../../resources/js/i.js"></script>
<!-- 자바스크립트 순서도 중요 버튼이 나오고 나서 얘를 넣어야 클릭 이벤트가 먹는대 아니면 자바스크립트에 document ready 그 문장을 찍고 내용을 쓰던지 
그리고 jquery 넣을 때는 위치가  자바스크립트 위에 있어야한다 -->

</body>
</html>