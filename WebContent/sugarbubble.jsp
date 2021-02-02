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
					<a href="http://www.sugarbubble.com/main/" target="blank">
						sugarbubble </a>
				</div>
			</div>

			<div id="picture1">
				<img src="image/off4.jpg" />
			</div>

			<div id="product">
				<p>BIRTH AND GROWTH</p>
				<span>슈가버블은 1999년 인간과 자연을 위한 정직한 제품개발이라는 철학을 가지고 출발하였습니다. 설립
					이래 친환경 주방세제를 필두로 세탁세제, 섬유유연제, 유아세제, 주거세제, 반려동물용품, 헬스&뷰티케어 등 100여 개에
					달하는 친환경 세제를 개발, 판매하며 친환경 생활용품 전문기업으로 성장하였습니다. </span>
				<p>HOME AND OVERSEAS</p>
				<span>국내에서는 이마트, 홈플러스, 롯데마트, 코스트코, 트레이더스 등 대형 유통채널과 신세계, 현대,
					롯데백화점 및 온라인 쇼핑몰 등 고객들이 쉽게 접할 수 있는 유통채널을 가지고 있으며, 국외로는 중국 샘스클럽 및
					코스트코, 대만 까르푸 등 수출을 통해 친환경 제품의 우수성을 알리고 있습니다. </span>
				<p>BRAND STORY</p>
				<span><text style="font-weight:600">자연의 가치</text> - 슈가버블이 고객을
					생각하는 마음은, 자연을 생각하는 마음에서 시작됩니다. 자연의 깨끗함을 제품에 담았습니다. 자연이 주는 건강함을 생활에
					더했습니다.<br> <text style="font-weight:600">건강과 행복</text> - 사람을
					건강하게, 자연을 깨끗하게, 슈가버블이 있다면 더이상 어려운 일이 아닙니다. 슈가버블과 함께 Happy Green
					Life!를 즐겨보세요.<br> <text style="font-weight:600">사람을 위하다</text>
					- 서로 기대고 있는 사람인(人)의 모습은 사람을 위한 정직함을 표현합니다. 슈가버블은 다양한 제품을 좋은 품질과
					합리적인 가격으로 제공하여 착한 소비를 추구합니다. 믿을 수 있는 원료만을 고집하는 정직함은 고객에게 드리는 슈가버블의
					약속입니다.<br> <text style="font-weight:600">자연을 닮다</text> - 자연을
					닮아갈수록 우리는 더 많은 것을 가능하게 합니다. 자연의 가치를 계속 더하면 곱하기가 되는 것처럼요! </span>
				<p>FINALLY</p>
				<span>지난 20년간 고객에게 믿음을 주는 기업으로 사랑받은 만큼, 단 하나의 원료에도 소홀하지 않고 더욱
					안전하고 좋은 품질의 원료만을 고집하여, 인간의 건강과 환경의 건강까지 생각하는 기업으로 성장해 가겠습니다. 슈가버블의
					전 임직원은 고객 여러분의 건강과 행복을 위해, 나아가 우리 후손들에게 물려줄 자연을 보호하기 위해 전념하도록
					하겠습니다. 여러분의 변함없는 관심과 사랑을 부탁드립니다. </span>
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