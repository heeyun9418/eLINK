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
					<a href="https://korea.ecostore.com/" target="blank"> ecostore
					</a>
				</div>
			</div>

			<div id="picture1">
				<img src="image/off3.jpg" />
			</div>

			<div id="product">
				<p>FOR U</p>
				<span>우리는 매일 피부에 화장품을 바르고, 옷을 세탁하며, 집을 청소하지만, 그 제품에 무엇이
					들어있는지는 알기 어렵습니다. ecostore는 유해 성분 걱정 없이 신뢰하고 제품을 사용할 수 있는 안전한 제품을
					만들기 위해 최선을 다합니다. 수 천 가지의 재료들 중 제품에 사용할 원료를 엄격하게 선택하고, 안전에 관해 조금이라도
					의심이 되는 원료는 더욱 안전한 대체 원료를 찾는다는 예방의 원칙을 따르고 있습니다. ecostore의 제품을 사용하는
					것은 당신과 당신의 소중한 가족을 위한 가장 현명한 선택이 될 것입니다. </span>
				<p>FOR EARTH</p>
				<span>ecostore의 전 제품은 석유 화학물질이 아닌 친환경적이며 생분해성을 지닌 식물과 광물을
					기반으로 안전한 재료를 선택합니다. 탄소중립제조시설을 이용한 사탕수수로 만든 플라스틱 포장재에 이르기까지 모든 공정에서
					지구를 보호하기 위해 노력하고 있습니다. 또한 에너지와 자원을 최대로 절감하고 쓰레기 배출량은 줄이기 위한 방법을
					끊임없이 고민하고 개선합니다. 모든 제품은 정화조 및 수돗물을 재활용하여 화장실이나 정원용수로 사용하는 중수도 시설에도
					안심하고 사용할 수 있습니다. </span>
				<p>CONFIDENCE</p>
				<span>ecostore는 안전하면서도 효과적인 제품을 만들기 위해, 끊임없이 자연에서 얻을 수 있는 식물성
					성분을 구합니다. 안전, 성능, 건강, 모든 부분에서 최고 수준의 기준에 부합하기 위하여 Environmental
					Working Group의 EWG Skin Deep® Cosmetic Database와 같은 세계적으로 인정하고 신뢰받는
					자료를 사용하여, 모든 원료의 안전을 평가합니다. 조금이라도 안전하지 않은 원료는 제품에 사용하지 않으며, 더욱 안전한
					대체 원료를 찾아내는 예방의 원칙을 고집합니다. 이렇게 엄선한 원료들로 만들어진 제품을 믿고 선택할 수 있도록
					ecostore의 전 제품은 모든 성분을 솔직하게 공개하고 있습니다. </span>
				<p>PLEDGE</p>
				<span>뉴질랜드에 있는 우리의 탄소 중립 제조 시설은 오세아니아 지역에서 유일하게 ISO9001,
					ISO14001, Enviromark Diamond 그리고 CarboNZero 인증을 모두 받았습니다. ecostore의
					제품이 환경 보호를 위해 최선의 선택을 하고 있음을 약속하기 위함입니다. 세탁 및 주방 세제들은 환경 마크인
					Environmental Choice 인증을 받았으며, 특히 주방세제는 음식을 오염시키지 않는 원료를 사용하고,
					동물성이나 유제품 관련 원료를 포함하지 않았다는 코셔 라이선스를 보유하고 있습니다. ecostore는 항상 사람과 환경을
					우선으로 생각하겠다는 약속을 지킬 것입니다. </span>
				<p>DIRECTION</p>
				<span>ecostore는 아인슈타인의 ‘가능한 한 단순하게, 그러나 더 단순하지는 않게’라는 우아한
					원칙하에 개발됩니다. 제품을 개발하는 연구원들은 가장 적은 수의 원료를 최적의 농도로 효과적으로 배합함으로써 시장을
					선도해 왔습니다. 인위적으로 부피를 늘리거나 용량을 채우기 위한 필러를 사용하지 않습니다. 때문에 ecostore의
					제품은 적은 용량의 사용으로도 탁월한 효과를 보장합니다. </span>
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