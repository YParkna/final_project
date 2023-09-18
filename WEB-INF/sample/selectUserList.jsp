<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="egovframework.sample.service.UserVO"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="egovframework.sample.service.UserVO"%>
<%
	Object loggedInUser = session.getAttribute("loggedInUser");
if (loggedInUser != null) {

	String userName = ((UserVO) loggedInUser).getUser_nm();
	String userId = ((UserVO) loggedInUser).getUser_id();
	String userGrd = ((UserVO) loggedInUser).getMbr_grd();
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<meta name="naver-site-verification" content="" />
<meta name="description" content="">
<meta property="og:type" content="website">
<meta property="og:title" content="Sample">
<meta property="og:description" content="">
<meta property="og:image" content="img/common/logo.png">
<meta property="og:image" content="img/sub/sub_main_banner.jpg">
<meta property="og:image" content="img/inc04/inc04_bg.jpg">

<meta property="og:url" content="">

<script src="js/jquery-ui.js"></script>
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/jquery.easing.min.js"></script>
<script src="js/topmenu_script.js"></script>
<script src="js/swiper.min.js"></script>
<script src="js/jquery-ui.js"></script>
<link rel="stylesheet" href="css/swiper.min.css">
<link rel="stylesheet" href="css/sh_common.css">
<link rel="stylesheet" href="css/sh_main.css">
<title>USER 목록</title>
</head>
<style>
<!--------------main----------------->

#left_image {
	position: absolute;
	top: 45%;
	left: 300px;
	transform: translateY(-50%);
}

.center-image {
	display: flex;
	justify-content: center;
}

body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #FFF;
}

.banner {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #969696;
	color: #fff;
	padding: 1px;
	position: relative;
}

.logo {
	display: inline-block;
	margin-left: 50px;
}

.logo img {
	width: 100px;
	height: auto;
	vertical-align: auto;
	margin-left: 30px;
}

.submenu {
	position: absolute;
	top: 100%;
	left: 0;
	background-color: #fff;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	min-width: 160px;
	z-index: 1;
	display: none;
}

.submenu a {
	display: block;
	padding: 10px;
	text-decoration: none;
	color: #333;
	transition: background-color 0.3s;
}

.submenu a:hover {
	background-color: #f4f4f4;
}

.submenu.active {
	display: block;
}

.user-info {
	position: relative;
	margin-right: 200px;
}

.user-info-menu {
	position: absolute;
	top: 100%;
	left: 0;
	background-color: #fff;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	min-width: 160px;
	z-index: 1;
	display: none;
}

.user-info-menu a {
	display: block;
	padding: 10px;
	text-decoration: none;
	color: #333;
	transition: background-color 0.3s;
}

.user-info-menu a:hover {
	background-color: #f4f4f4;
}

.user-info:hover .user-info-menu {
	display: block;
}

button.yt-icon-button {
	display: inline-block;
	width: 24px;
	height: 24px;
	margin-left: 10px;
	padding: 0;
	background: none;
	border: none;
	cursor: pointer;
}

button {
	appearance: auto;
	text-rendering: auto;
	color: buttontext;
	letter-spacing: normal;
	word-spacing: normal;
	line-height: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	display: inline-block;
	text-align: center;
	align-items: flex-start;
	cursor: default;
	box-sizing: border-box;
	background-color: buttonface;
	writing-mode: horizontal-tb !important;
	margin: 0em;
	padding-block: 1px;
	padding-inline: 6px;
	border-width: 2px;
	border-style: outset;
	border-color: buttonborder;
	border-image: initial;
}
.submenu a:hover {
	background-color: #f4f4f4;
}

.submenu.show {
	display: block;
}

.tooltip {
	position: relative;
	display: inline-block;
	cursor: pointer;
}

.tooltip:hover::before {
	content: "목록보기";
	position: absolute;
	background-color: white;
	color: black;
	padding: 5px;
	border-radius: 5px;
	top: 100%;
	left: 15%;
	transform: translateX(-50%);
	white-space: nowrap;
	opacity: 0;
	transition: opacity 0.3s ease;
}

.tooltip:hover::before {
	opacity: 1;
}

.sh_nav_wrap {
	justify-content: space-between;
}


<!------------------------------------>


table {
  width: 800px;
  border-collapse: collapse;
  margin-top: 50px;
  border: 1px solid #ddd;
}

th, td {
  border: 1px solid #ddd;
  padding: 8px;
  text-align: center;
}

th {
  background-color: #f2f2f2;
}

/* 마우스 호버 효과 */
th:hover, td:hover {
  background-color: #f4f4f4;
}

/* 제목 행 디자인 */
th {
  font-weight: bold;
}

/* 내용 행 디자인 */
td {
  vertical-align: middle;
}

/* 테이블 위 아래 여백 조정 */
table:first-child {
  margin-top: 0;
}
table:last-child {
  margin-bottom: 0;
}

h3 {
	color: #1478CD;
	font-size: 3000%;
	font-weight: 500;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
	margin-top: 7%;
	margin-bottom: 30px;
}

.styled-link {
    color: #3C3C8C;
    font-size:15px;
    text-decoration: none;
    transition: color 0.3s;
	}

.styled-link:hover {
    color: #ff6678;
	}
	
button[type="submit"] {
    padding: 5px 10px;
    background-color: #32A4FF;
    border-radius: 10px;
    color: white;
}

button[type="submit"]:hover {
    background-color: #ff6678;
	}


#form-controls button {
   	border: none;
    font-size: 120%;
	}

#form-controls button:hover {
    cursor: pointer;
	}
button[type="button"] {
   	padding: 16px 0 16px 35px;
    background-color: transparent;
    color: #ED4B5E;
	}

	
#form-inner-container {
    background-color:#EBF5FF;
    max-width: 70%;
    border-radius: 8px;
    box-shadow: 0 0 20px gainsboro;
	}
#form-controls {
    margin-bottom: 20px;
	}
		
h3 {
    color: #1478CD;
    font-size: 150%;
    font-weight: 500;
	}
	
h6 {
    color: #1478CD;
    font-size: 100%;
    font-weight: 500;
	}

.styled-link {
    color: #3C3C8C;
    text-decoration: none;
    transition: color 0.3s;
	}

.styled-link:hover {
    color: #ff6678;
	}			
.rounded-input {
     border-radius: 10px; /* 원하는 값으로 조절 */
     border: 1px solid #ccc;
     padding: 8px; /* 내용과 경계 사이의 간격 */
     width: 100%;
     box-sizing: border-box; /* padding을 포함한 전체 크기 설정 */
    }
</style>
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
%>

</head>
<body>
	<div id="sh_wrapper">
		<div id="sh_hd">
			<div class="top_nav_bg"></div>
			<div id="sh_hd_wrapper" >
				<div id="sh_nav_wrap">
					<ul id="sh_nav">
						<li class="menu-item active" style="margin-left: -20%">
							<button id="button" class="style-scope yt-icon-button"
								aria-label="가이드" aria-pressed="false">
								<yt-icon id="guide-icon" icon="yt-icons:menu"
									class="style-scope ytd-masthead"> <yt-icon-shape
									class="style-scope yt-icon"> <icon-shape
									class="yt-spec-icon-shape">
								<div style="width: 100%; height: 100%; fill: black;">
									<svg height="24" viewBox="0 0 24 24" width="24"
										focusable="false"
										style="pointer-events: none; display: block; width: 100%; height: 100%;">
            			<path d="M21 6H3V5h18v1zm0 5H3v1h18v-1zm0 6H3v1h18v-1z">
						</path></svg>
								</icon-shape></yt-icon-shape></yt-icon>
							</button>

							<ul class="sh_nav_s">
								<li><a href="showMain.do?userId=${loggedInUser.getId()}" style=" font-size:19px; color:black; font-weight:20px; margin-bottom:10px;">메인화면</a></li>
								<li><a
									href="selectBoardList.do?userId=${loggedInUser.getId()}" style=" font-size:19px; color:black; font-weight:20px; margin-bottom:10px;">자유게시판</a></li>
								<li><a
									href="allExerciseselectList.do?userId=${loggedInUser.getId()}&routine=other" style=" font-size:19px; color:black; font-weight:20px; margin-bottom:10px;">타회원
										루틴</a></li>
								<li><a href="getAllParts.do?userId=${loggedInUser.getId()}" style=" font-size:19px; color:black; font-weight:20px">자료실</a></li>
							</ul>
						</li>

						<ul id="sh_nav">
							<li class="menu-item active">
							<a
								href="mypageinfo.do?userId=${loggedInUser.getId()}&routine=me" style=" font-size:19px; color:black; font-weight:bold">"<%=userName%>" 님
									마이페이지</a>
								<ul class="sh_nav_s">
									<li><a
										href="allExerciseselectList.do?userId=${loggedInUser.getId()}&routine=me" style=" font-size:19px; color:black; font-weight:20px; margin-bottom:10px;">운동루틴</a></li>
									<li><a href="mypageinfo.do?userId=${loggedInUser.getId()}&routine=me" style=" font-size:19px; color:black; font-weight:20px; margin-bottom:10px;">회원정보</a></li>
									<%
										if (userGrd.equals("관리자")) {
									%>
									<li><a href="selectUserList.do" style=" font-size:19px; color:black; font-weight:20px; margin-bottom:10px;">회원관리</a></li>
									<%
										}
									%>
									<li><a href="logout.do" style=" font-size:19px; color:black; font-weight:20px">로그아웃</a></li>
								</ul></li>
							<div id="sh_top_logo">
								<a href="showMain.do?userId=${loggedInUser.getId()}"> <img
									src="/img/common/logo.png" alt="Logo" width="250" height="auto"
									style="margin-left: 20%">
								</a>
							</div>
				</div>

			</div>
		<script>
        	const button = document.getElementById("button");
        	const submenu = document.getElementById("submenu");
        	const tooltip = document.querySelector(".tooltip");

        	 button.addEventListener("click", function() {
                 submenu.classList.toggle("show");
                 
             });
        	 </script>

	<center>
		<h1>USER 목록</h1>
<center>
<br><br><br>

		<h3 style="font-size:300%">USER List</h3>
		<br><br><br>
		
		<h2 style="font-size:150%">"웹사이트를 이용하는 회원들의 정보입니다."</h2>
		<br><br><br><br><br><br>
		<div id="form-inner-container">
<center>
		<br><br>
		<table border="1" cellpadding="0" cellspacing="0" width="1000px">

			<tr>
				<th bgcolor="skyblue" width="300" text-align="center">no</th>
				<th bgcolor="skyblue" width="300">이름</th>
				<th bgcolor="skyblue" width="400">닉네임</th>
				<th bgcolor="skyblue" width="200">아이디</th>
				<th bgcolor="skyblue" width="100">성별</th>
				<th bgcolor="skyblue" width="200">이메일</th>
				<th bgcolor="skyblue" width="200">등급</th>

			</tr>

			<c:forEach var="user" items="${userList }">

				<tr>
					<td align="center"><a href="selectUser.do?id=${user.id }">${user.id }</a></td>
					<td align="center">${user.user_nm }</td>
					<td align="center">${user.nick_nm }</td>
					<td align="center">${user.user_id }</td>
					<td align="center">${user.sexdstn }</td>
					<td align="center">${user.eml }</td>
					<td align="center">${user.mbr_grd }</td>
				</tr>

			</c:forEach>

		</table>
		<br><br><br>
		</center>
		</div><br><br>
		<br> <a class="styled-link" href="insertUser.do">회원 등록</a>
	</center>
	
	<br><br><br><br><br>
<div id="sh_ft">
			<div class="info">
				<span style="font-size: 20px;">HealthCare</span> 고객센터:1234-5678 <br>
				이메일:healthcare123@naver.com 주소:대구광역시 수성구 알파시티1 160
			</div>
			<div class="copy">
				<div class="copy_wrap">
					<span>ⓒ <b>Sample</b> All rights reserved.
					</span>
				</div>
			</div>
		</div>
	</div>
<%
}
%>
</body>
</html>