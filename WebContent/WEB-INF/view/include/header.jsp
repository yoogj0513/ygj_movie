<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV</title>
<style>
	.container {
		width: 1710px;
		margin: 0 auto;
	}
	
	header {
		position: relative;
	}
	
	header h1 {
		text-align: center;
		color: #a81817;
		font-size: 40px;
		padding: 20px;
	}
	
	header .login {
		position: absolute;
		bottom: 10px;
		right: 50px;
	}
	
	header a {
		background-color: #fac57d;
		border-radius: 5px;
		color: #fff;
		font-weight: bold;
		padding: 5px 10px;
		text-decoration: none;
	}
	
	nav {
		background-color: #a81817;
		margin-bottom: 30px;
	}
	
	nav ul {
		list-style: none;
		overflow: hidden;
		width: 600px;
		margin: 0 auto;
	}
	
	nav li {
		float: left;
		width: 21.6%;
		text-align: center;
		padding: 10px;
	}
	
	nav a {
		text-decoration: none;
		color: #fff;
	}
	
	nav a:hover {
		font-weight: bold;
	}
	
	.login span {
		padding-left: 20px;
	}
	
	.login span b {
		font-size: 18px;
	}
</style>
</head>
<body>
    <div class="container">
		<header>
			<h1>대구 CGV</h1>		
			<div class="login">
				<%
					String auth = (String) session.getAttribute("Auth");
					if(auth != null){
						out.println("<a href='#'>로그아웃 </a> <span><b>"+auth+"</b>님 환영합니다.</span>");
					} else {
						out.println("<a href='#'>로그인</a>");
					}
				%>
			</div>
		</header>
		<nav>
			<ul>
				<li><a href="home.do">HOME</a></li>
				<li><a href="list.do">상영영화</a></li>
				<li><a href="time.do">상영시간표</a></li>
				<li><a href="#">게시판</a></li>
			</ul>
		</nav>
		