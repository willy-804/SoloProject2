<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.3.min.js"></script>
 
<style>

#stamp2{
display:block;
position:absolute;
right:90px; top:-90px;
width:200px;
animation-name:stampani2;
animation-duration:0.5s;
animation-iteration-count:1;
animation-timing-function:ease;
}

@keyframes stampani2{

0%  {transform:scale(1); opacity:0;}

95% {transform:scale(5); opacity:0;}

100%{transform:scale(1); opacity:1;}

}

</style>
 
 
</head>
<body>

 <img src="../../../resources/image/stamp_ex.png" id="stamp2">

 
</body>
</html>


