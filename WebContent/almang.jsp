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
<link href="css/up_on.css" type="text/css" rel="stylesheet">
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

		<!-- content -->
		<section>
			<div id="cp">
				<div class="hr-sect">
					<a href="https://almang.modoo.at/" target="blank"> almang </a>
				</div>
			</div>

			<div id="picture1">
				<img src="image/off6.jpeg" />
			</div>

			<div id="product">
				<p>껍데기는 가라, 알맹이만 오라</p>
				<span>리필스테이션 '알맹상점' & '알맹@망원시장' 플라스틱 프리 캠페인
					망원시장에서 플라스틱 프리 캠페인을 진행하다가 급기야 리필스테이션을 차렸습니다.  알맹@망원시장의 자원활동가 모임
					'알맹이만 원하는 자(알짜)'들이 운영합니다.</span>
				<p>재활용 되지 않는 자원을 모아 재활용합니다</p>
				<span>우유팩(종이팩), 작은 플라스틱, 말린 원두가루, 실리콘 등 재활용되지 않는 자원을 모아 물건을 만듭니다. 1층에 안 쓰는 물건을 나누는 공유센터가 있습니다. 사용하지 않는 작은 생활용품을 기부하세요.</span>
				<p>플라스틱 프리 워크샵 ‘알맹’이 열립니다</p>
				<span>망원시장 무포장 장보기 체험-리필스테이션-자원순환 교육을 진행합니다. 샴푸바, 린스바 만들기,
					킨츠키 워크샵, 자원순환 교육 등을 진행합니다.</span>
				<p>알맹상점</p>
				<span>- 서울시 마포구 월드컵로 49, 2층 <br> - 일월화 11~16시 / 수 휴무 /
					목금토 14~21시<br> (워크샵 참여 시 마감 한 시간 전 도착) <br> - 반려동물 환영 -
					계단 이동 (불편함을 드려 죄송합니다) <br> - 주차 불가능
				</span>
			</div>
			<a href="javascript:history.go(-1)" class="btn btn-outline-success" id="back">목록보기</a>
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