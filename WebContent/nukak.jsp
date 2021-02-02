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
					<a href="http://nukak.kr/" target="blank">nukak</a>
				</div>
			</div>

			<div id="picture1">
				<img src="image/product1.png" />
			</div>

			<div id="product">
				<p>BRAND NAME</p>
				<span>Nukak(누깍)은 바르셀로나 거리에서 버려지는 아름다운 배너와 타이어 튜브의 업사이클링을 통해
					새로운 가치를 창출하는 디자인 프로젝트입니다. 우리 삶 속에서 버려지는 모든 물건들은 버려지는 그 순간에도 다시 재사용
					될 수 있다는 것을 갖고 있습니다. 그들은 두 번째 기회를 맞이할 자격이 있습니다 </span>
				<p>HISTORY</p>
				<span>누깍 프로젝트는 2001년 바르셀로나의 작은 디자인 스튜디오에서 액세서리, 가구 등 다양한
					업사이클링 제품을 제작하며 시작했습니다. 그 중에서도 방수천 현수막으로 만든 가방과 지갑이 단연 으뜸이었습니다. 그 후로
					바르셀로나와 마드리드 시내에서 버려지는 현수막을 활용해 본격적으로 브랜드를 전개하기 시작했습니다. </span>
				<p>PRODUCTION</p>
				<span>그들의 첫번째 목표를 다하고 쓸모 없어 졌을 때, 그때가 바로 우리가 일을 시작할 때입니다. 창고에
					수집된 이후 부활을 위한 몇몇 과정을 거치게 됩니다. 재료들은 제품화 되기 전에, 세척, 분류, 그래픽 선정 등의 과정을
					거칩니다. 재단과 봉재는 바르셀로나의 숙련된 수공업자들에 의해 진행됩니다. 때로는 사회공헌프로그램의 일부로 바르셀로나
					모델로 수용소(Modelo Prison)에 있는 사회재활센터(Center for Reinsertion
					Initiatives)에서 제품 제작을 하기도 합니다. </span>
				<p>IN KOREA</p>
				<span>업사이클리스트는 지난 2016년 3월 건대 커먼그라운드 누깍 1호점을 시작으로 누깍 브랜드를 한국에
					런칭하였고 다양한 채널을 통해 브랜드를 전개하고 있습니다. </span>
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