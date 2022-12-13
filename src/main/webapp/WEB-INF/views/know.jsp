<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link type="text/css" rel="stylesheet" href="/../../resources/css/know.css" >
    
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.3.min.js"></script>
    
    <link href="https://fonts.googleapis.com/css2?family=Epilogue:wght@500&display=swap" rel="stylesheet">
   
    <script src="https://kit.fontawesome.com/e94ca5c1e6.js" crossorigin="anonymous"></script>
         
    <script src="https://kit.fontawesome.com/c92986acdf.js" crossorigin="anonymous"></script>
        

<title>KNOW</title>

</head>
<body>

 <%@ include file="../views/header/header.jsp"%>    
  
  <form class="toDoForm">
      <input type="text" placeholder="what are you going to do today?" />
  </form>
    
    <ul class="toDos"></ul>
   
   
<script type="text/javascript" src="../../resources/js/know.js"></script>

</body>
</html>