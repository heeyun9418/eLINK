<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dao.BbsDAO, javax.naming.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>e LINK</title>
</head>
<body oncontextmenu='return false' onselectstart='return false'
	ondragstart='return false'>	<%
		String id = (String) session.getAttribute("id");
	if (session.getAttribute("id") != null)
		id = (String) session.getAttribute("id");
	if (id == null) {
		out.println("<script>");
		out.println("alert('로그인을 하세요.')");
		out.println("location.href='login.do'");
		out.println("</script>");
	}
	int page_num = 0;
	if (request.getParameter("id") != null)
		page_num = Integer.parseInt(request.getParameter("id"));
	if (page_num == 0) {
		out.println("<script>");
		out.println("alert('글이 유효하지 않습니다.')");
		out.println("location.href='resist.do'");
		out.println("</script>");
	}
	BbsDAO bbsDAO = new BbsDAO();
	int result = bbsDAO.deleteArticle(page_num);
	bbsDAO.connClose();

	if (result == -1) {
		out.println("<script>");
		out.println("alert('글삭제에 실패하였습니다')");
		out.println("history.back()");
		out.println("</script>");
	} else {
		out.println("<script>");
		out.println("location.href='resist.do'");
		out.println("</script>");
	}
	%>
</body>
</html>