<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/popup.css" />
<script src="javascript/jquery/popup.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div style="height: 300px;"></div>
	<a href="#layer1" class="btn-example">일반 팝업레이어</a>
	<div id="layer1" class="pop-layer">
		<div class="pop-container">
			<div class="pop-conts">
				<!--content //-->
				<p class="ctxt mb20">
					Thank you.<br> Your registration was submitted successfully.<br>
					Selected invitees will be notified by e-mail on JANUARY 24th.<br>
					<br> Hope to see you soon!
				</p>

				<div class="btn-r">
					<a href="#" class="btn-layerClose">Close</a>
				</div>
				<!--// content-->
			</div>
		</div>
	</div>
	<br />
	<br />
	<a href="#layer2" class="btn-example">딤처리 팝업레이어 1</a>
	<div class="dim-layer">
		<div class="dimBg"></div>
		<div id="layer2" class="pop-layer">
			<div class="pop-container">
				<div class="pop-conts">
					<!--content //-->
					<p class="ctxt mb20">
						Thank you.<br> Your registration was submitted successfully.<br>
						Selected invitees will be notified by e-mail on JANUARY 24th.<br>
						<br> Hope to see you soon!
					</p>

					<div class="btn-r">
						<a href="#" class="btn-layerClose">Close</a>
					</div>
					<!--// content-->
				</div>
			</div>
		</div>
	</div>
</body>
</html>