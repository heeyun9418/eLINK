<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*"%>
<%
	String id = null;
if (session.getAttribute("id") != null)
	id = (String) session.getAttribute("id");

String delete_id = request.getParameter("id");

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
	Context init = new InitialContext();
	DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/elink");
	conn = ds.getConnection();
	pstmt = conn.prepareStatement("DELETE FROM user WHERE id=?");
	pstmt.setString(1, id);
	pstmt.executeUpdate();

	out.println("<script>");
	out.println("location.href='logout.do'");
	out.println("</script>");
} catch (Exception e) {
	e.printStackTrace();
} finally {
	try {
		pstmt.close();
		conn.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>