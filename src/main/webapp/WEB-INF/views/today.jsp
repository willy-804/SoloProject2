<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.3.min.js"></script>
    
    <link type="text/css" rel="stylesheet" href="/../../resources/css/today.css" >

    <link href="https://fonts.googleapis.com/css2?family=Epilogue:wght@500&display=swap" rel="stylesheet">
    
    <script src="https://kit.fontawesome.com/c92986acdf.js" crossorigin="anonymous"></script>
        
    <script src="https://kit.fontawesome.com/e94ca5c1e6.js" crossorigin="anonymous"></script>


<title>TODAY</title>

</head>
<body>

<%@ include file="../views/header/header.jsp" %>
<div class="cal">
 <section class="main">
        <h1 class="main-title">Calendar</h1>
        <div class="month clearfix">
            <span class="left">
                <i class="fas fa-chevron-left left"></i>
            </span>
            <span class="right">
                <i class="fas fa-chevron-right right"></i>
            </span>
            <p class="month-name"></p>
        </div>
        <div class="dayCount">
            <ul class="dayCount-list clearfix">
                <li>MON</li>
                <li>TUE</li>
                <li>WED</li>
                <li>THU</li>
                <li>FRI</li>
                <li>SAT</li>
                <li>SUN</li>
            </ul>
        </div>
        <ul class="day clearfix">
          
        </ul>

    </section>
</div>
<div class="list">
    <section class="todo">
        <h1 class="todo-title">
           DO NOT FORGET
        </h1>
        <div class="textToDo">
            <input type="text" class="textToDo-text">
            <button class="textToDo-button add">ADD</button>
            <button class="textToDo-button reset">RESET</button>
            <button class="textToDo-button allreset">ALL RESET</button>
        </div>
        <ul class="todoList"></ul>
    </section>
</div>

<script type="text/javascript" src="../../resources/js/today.js"></script>

</body>
</html>