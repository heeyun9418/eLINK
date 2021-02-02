<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = null;
if (session.getAttribute("id") != null)
	id = (String) session.getAttribute("id");
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>e LINK</title>
<link rel="shortcut icon" href="./image/favicon.ico">
<link rel="icon" href="./image/favicon.ico">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<link href="css/index.css" type="text/css" rel="stylesheet">
<link href="css/sub_off.css" type="text/css" rel="stylesheet">
<script src="javascript/jquery/jquery-1.12.3.js" type="text/javascript"></script>
</head>
<body oncontextmenu='return false' onselectstart='return false'
	ondragstart='return false'>
	<div id="wrap">
		<header>
			<nav class="navbar navbar-expand-lg navbar-light">
				<a class="navbar-brand" href="index.do"><img
					src="image/logo.gif" alt="logo" class="logo"></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#alt" aria-controls="alt" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<!-- navbar -->
				<div class="collapse navbar-collapse" id="alt">
					<div id="lnb">
						<ul id="nav-content" class="navbar-nav">
							<li class="ml-5"><a href="refill_on.do" class="wp">REFILL
									STATION</a></li>
							<li class="ml-5"><a href="up_on.do" class="wp">UPCYCLING</a></li>
							<li class="ml-5"><a href="resist.do" class="wp">RESISTRATION</a></li>
						</ul>
					</div>

					<%
						if (id == null) {
					%>
					<ul id="gnb_sm" class="navbar-nav">
						<li class="nav-item nav-link"><a href="login.do" class="wp">로그인</a>
						<li class="nav-item nav-link"><a href="join.do" class="wp">회원가입</a></li>
					</ul>
					<%
						} else {
					%>
					<ul class="navbar-nav" id="gnb">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-toggle="dropdown"><%=id%> 로그인</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="userCheck.do">내정보 보기</a>
								<%
									if (id.equals("admin")) {
								%>

								<a class="dropdown-item" href="memberList.do">회원관리</a>
								<%
									} else {
								%>
								<%
									}
								%>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="logout.do">로그아웃</a>
							</div></li>
					</ul>
					<%
						}
					%>
				</div>
			</nav>
		</header>
	</div>


	<!-- content -->
		<div id="cp1" class="cp2">
			<h1>UPCYCLING</h1>
		</div>
	<div id="wrap">
		<section>
			<ul id="snb">
				<li><a href="up_on.do">online</a></li>
				<li id="cp2"><a href="up_off.do">offline</a></li>
			</ul>
			<div id="list">
				<div class="div">
					<div class="frame">
						<iframe class="map"
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3163.4900082494246!2d127.04149321526916!3d37.543517579802234!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca49cc3d29fdf%3A0x30220a6c0deff660!2z7Ja4642U7Iqk7YOg65Oc7JeQ67mE64m0!5e0!3m2!1sko!2skr!4v1610077154415!5m2!1sko!2skr"
							width="400" height="300" style="border: 0;" aria-hidden="false"
							tabindex="0"></iframe>
					</div>
					<div class="txt">
						<h3>언더스탠드 에비뉴</h3>
						<p>서울특별시 성동구 성수동1가 왕십리로 63</p>
						<small>T. 02-725-5526</small><br> <br> <span>산책이
							가지는 휴식의 의미와 쇼핑이 가지는 즐거움을 동시에 느낄 수 있는 복합문화공간</span>
					</div>
				</div>
				<div class="div">
					<div class="frame">
						<iframe class="map"
							src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6332.7132405514485!2d126.882885!3d37.47591!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b61e40cb3a48b%3A0xe72de468ee068461!2z7ISc7Jq47Yq567OE7IucIOq4iOyynOq1rCDqsIDsgrDrj5kg6rCA7IKw65SU7KeA7YS4MeuhnCAxMTk!5e0!3m2!1sko!2skr!4v1610077677433!5m2!1sko!2skr"
							width="400" height="300" style="border: 0;" aria-hidden="false"
							tabindex="0"></iframe>
					</div>
					<div class="txt">
						<h3>리블랭크</h3>
						<p>서울특별시 금천구 가산동 가산디지털1로 119</p>
						<small>T. 02-744-1365</small><br> <br> <span>리블랭크는
							버려진 가죽, 타폴린, 원단 등을 활용하여 다시 사용할 수 있도록 쓰임새와 디자인을 연구 합니다. 자연에서 나와
							자연으로 돌아감으로써 환경에 해를 끼치지 않는 선순환이 가능한 [ ]를 만드는 것을 목표로 합니다. </span>
					</div>
				</div>
				<div class="div">
					<div class="frame">
						<iframe class="map"
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3161.9205469768713!2d127.01327611527024!3d37.58048857979529!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cbd3b1c22d02d%3A0xdc58356f5acea811!2z7YSw7LmY7Y-s6rW_!5e0!3m2!1sko!2skr!4v1610078554873!5m2!1sko!2skr"
							width="400" height="300" style="border: 0;" aria-hidden="false"
							tabindex="0"></iframe>
					</div>
					<div class="txt">
						<h3>터치포굿</h3>
						<p>서울특별시 종로구 숭인동 동망산길 28 스카이캐슬 301호</p>
						<small>T. 02-6349-9006</small><br> <br> <span>쓰레기의
							가치를 팝니다. 이미 버려진 자원들의 가치와 기능을 살려 세상에 하나뿐인 디자인 상품으로 재탄생합니다.</span>
					</div>
				</div>
			</div>
		</section>
	</div>

	<!-- footer -->
	<footer>
		<div class="footer1">
			<ul>
				<li><a href="#">이용약관</a></li>
				<li><a href="https://www.ftc.go.kr/www/bizCommList.do?key=232"
					target="blank">사업자정보확인</a></li>
				<li><a href="#">개인정보처리방침</a></li>
			</ul>
		</div>
		<div class="footer2">
			<ul>
				<li>사업자번호 : 228-81-03754</li>
				<li>상호명 : (주)eLINK</li>
				<li>CEO : 정희윤 최지은</li>
				<li>통신판매업 신고 : 제2016-인천중구-0617호</li>
				<li>상담전화 : 053-427-3313</li>
				<li>사업장주소 : 대구광역시 달서구 달구벌대로 251 안길 15(이곡동 1224-2번지) (주)에코링크컴퍼니</li>
				<li>E-mail : eLINK@gmail.com</li>
			</ul>
		</div>
	</footer>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
</body>
</html>