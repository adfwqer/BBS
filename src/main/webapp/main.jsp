<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" ,initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>오늘의 축구 소식</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">오늘의 축구 소식</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
			<li class="active"><a href="main.jsp">메인</a></li>
			<li><a href="bbs.jsp">게시판</a></li>
		</ul>
		<%
			if(userID == null){
		%>
			<ul class="nav navbar=nav navbar-right">
		<li class="dropdown">
		<a href="#" class="dropdown-toggle"
		data-toggle="dropdown" role="button" aria-haspopup="true"
		aria-expanded="false">접속하기<span class="caret"></span></a>
		<ul class="dropdown-menu">
		<li><a href="Login.jsp">로그인</a></li>
		<li><a href="join.jsp">회원가입</a></li>
		</ul>
		</li>
		</ul>
		<%
			} else {
		%>
					<ul class="nav navbar=nav navbar-right">
		<li class="dropdown">
		<a href="#" class="dropdown-toggle"
		data-toggle="dropdown" role="button" aria-haspopup="true"
		aria-expanded="false">회원관리<span class="caret"></span></a>
		<ul class="dropdown-menu">
		<li><a href="logoutAction.jsp">로그아웃</a></li>
		</ul>
		</li>
		</ul>
		<%
			}
		%>
		
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>오늘의 축구 영상</h1>
				<p>안녕하세요 현재 축구 대회들의 소식을 알려주는 게시판입니다. 축구 경기 하이라이트 시청과 게시판을 통한 소통이 가능합니다.</p>
				<a class="btn btn-primary btn-pull" href="https://www.youtube.com/watch?v=zCmXcGn0q54" role="button">보러가기</a>
			</div>
		</div>
	</div>
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#mycarousel" data-slide-to="0" class="active"></li>
				<li data-target="#mycarousel" data-slide-to="1"></li>
				<li data-target="#mycarousel" data-slide-to="2"></li>
				<li data-target="#mycarousel" data-slide-to="3"></li>
				<li data-target="#mycarousel" data-slide-to="4"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
				<a href="https://www.youtube.com/watch?v=s1K98lfb8n4">
					<img src="images/111.png">
				</a>
				</div>
				<div class="item">
				<a href="https://www.youtube.com/watch?v=NHswRjjrHQY">
					<img src="images/222.png">
				</a>
				</div>
				<div class="item">
				<a href="https://www.youtube.com/watch?v=RRinAaDSMkc">
					<img src="images/333.png">
				</a>
				</div>
				<div class="item">
				<a href="https://www.youtube.com/watch?v=M-0Wi4BrKD8&t=185s">
					<img src="images/444.png">
				</a>
				</div>
				<div class="item">
				<a href="https://www.youtube.com/watch?v=ItsqWjjnrJQ">
					<img src="images/555.png">
				</a>
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
</body>
</html>