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
					<a href="https://refeely.com/howtouse" target="blank"> refeely
					</a>
				</div>
			</div>

			<div id="picture1">
				<img src="image/off5.jpg" />
			</div>

			<div id="product">
				<p>유리용기</p>
				<span>유리병은 재사용, 재활용이 매우 쉬운 재질중에 하나입니다. 소독이나 세척 또한 쉽고, 표면이
					균일하여 세균번식에도 강한 재질입니다. 수십번, 수백번 리필 하더라도 처음과 같은 상태로 남아있다는 면에서 리필리의
					목표에 알맞다고 생각되어 선택하였습니다.</span>
				<p>에코백</p>
				<span>에코백은 사용할 수 있는 범위가 매우 넓은 상품입니다. 리필리의 에코백은 장바구니로 쓸 수 있을
					만큼 넉넉한 용량으로 제공되고 있습니다. 리필리는 비닐봉지 대신에 에코백과 함께 장을 보는 것을 장려하고 있습니다.
					제공된 에코백과 함께 비닐봉지 사용을 줄여보세요.</span>
				<p>라벨</p>
				<span><text style="font-weight:600">상세정보는 크게크게</text> - 라벨의
					상단에 있는 QR Code를 핸드폰으로 스캔해보세요. 제품의 상세정보를 확인 할 수 있습니다. 더 이상 제품의 스티커에
					쓰여있는 깨알같은 글씨를 읽으려 노력하지 않아도 됩니다. <br> <text
						style="font-weight:600">리필할 수록 늘어나는 Green Energy</text> - 리필 할 때마다
					라벨에 Green 스티커를 붙여드립니다. 5회를 리필하고 푸짐한 혜택을 누려보세요! 한 눈에 보이는 친환경
					Organic, 천연 제품 인증, 동물실험 반대 등 다양한 친환경 인증 요소들을 스탬프로 표기 하였습니다. <br>
					<text style="font-weight:600">멀리서도 구별되는 색상</text> - 멀리서도 쉽게 용도를
					구별하기 위해서 상품마다 색깔을 다르게 구성했습니다.<br>
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