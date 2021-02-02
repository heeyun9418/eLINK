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
					<a href="https://www.freitag.ch/ko" target="blank"> freitag </a>
				</div>
			</div>

			<div id="picture1">
				<img src="image/product2.png" />
			</div>

			<div id="product">
				<p>THE FREITAG STORY</p>
				<span>1993 년 그래픽 디자이너인 Markus와 Daniel Freitag는 창의적인 작업을 담을 수
					있는 기능적이고 발수성이 뛰어나며 튼튼한 가방을 찾고있었습니다. 아파트 앞 취리히 교통 교차로를 지나가는 여러 가지 색의
					차에서 영감을 받아 중고 트럭 타포린, 버려진 자전거 내부 튜브 및 자동차 안전 벨트로 메신저 백을 개발했습니다. 이것이
					첫 번째 FREITAG 가방입니다.</span>

				<p>STORE</p>
				<span>현재 프라이탁의 제품은 전 세계 300개 이상의 리셀러뿐만 아니라 28개의 FREITAG 매장에서
					구매할 수 있습니다. FREITAG 온라인 스토어에는 4000개가 넘는 고유한 제품을 광범위하게 선택할 수 있습니다.</span>

				<p>RAW MATERIAL</p>
				<span>2014년에 가방 제작자는 F-ABRIC이라는 새로운 원료를 스스로 개발했습니다. 개발 된
					견고하면서도 완전히 퇴비화 가능한 직물은 본사 반경 2500km내에서 최소한의 자원을 사용하여 생산되는 인피 섬유를
					기반으로합니다. 따라서 F-ABRIC은 FREITAG 철학에 부합하는 것 이상입니다. 우리는 이 사이클을 생각하고
					행동합니다.</span>

				<p>COOPERATION</p>
				<span> FREITAG는 업사이클링에 전념 할뿐만 아니라 원형으로 순환하도록 조직되었습니다. 2016년
					우리 회사는 고전적인 계층 구조를 포기하고 이를 기반의 조직 형태인 Holacracy로 대체하여 분산 된 관리 및 조직
					관리 방식으로, 권한과 의사 결정은 관리 계층에 속하지 않고 자체 조직화 된 팀 전체에 분산시켰습니다.</span>
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