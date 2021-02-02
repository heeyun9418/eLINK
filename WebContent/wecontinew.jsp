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
					<a href="http://wecontinew.co.kr/" target="blank"> continew</a>
				</div>
			</div>

			<div id="picture1">
				<img src="image/product3.png" />
			</div>

			<div id="product">
				<p>END IS NEW-455일간의 연구개발</p>
				<span>주식회사 모어댄의 업사이클링 브랜드 컨티뉴는 자동차 생산과정과 폐자동차에서 수거한 천연가죽,
					안전벨트 및 에어백을 업사이클링하여 가방 및 악세사리로 제작하여 새로운 가치로 만들고 있습니다.</span>

				<p>FUTURE FRIENDLY BAG</p>
				<span>연간 사백만톤에 이르는 재활용 불가 자동차 매립폐기물 절감에 매일 도전하고 있으며, 가방 1개당
					1,642리터의 물을 절약할 수 있습니다.</span>

				<p>REAL LEATHER BUT ANIMAL FREE</p>
				<span>동물을 사랑하는 컨티뉴는 버려지는 가죽을 다시 활용함으로서 천연소가죽이지만 animal free를
					실현합니다.</span>

				<p>DURABLE</p>
				<span>자동차에 사용되는 가죽은 여름철 고온과 습기, 겨울철 추운 온도를 견디며 수만번의 마찰을 견딥니다.
					내구성이 강한 가죽의 특징은 컨티뉴의 제품에 고스란히 반영되어 견고하고 오래 사용할 수 있는 장점이 있습니다</span>

				<p>WE CHANGE USELESS TO USEFUL</p>
				<span>세상에 버려지는 물건이 참 많습니다. 수명이 다하여 버려진 소재들 속에서 그 속에 담긴 의미와
					가치를 재발견하여 지속가능한 새로운 가치를 창출하는 것. 컨티뉴의 철학입니다.</span>

				<p>MORE THAN A BAG</p>
				<span>컨티뉴의 업사이클링 과정을 통해 새로이 창출되는 일자리는 경력단절 여성 및 북한이탈주민에게
					제공됩니다</span>
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