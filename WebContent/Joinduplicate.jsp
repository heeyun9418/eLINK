<%@page import="dao.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="dao.LoginDAO, db.JdbcUtil, java.sql.*"%>
<%
	LoginDAO loginDAO = LoginDAO.getInstance();
	Connection con = JdbcUtil.getConnection();
	loginDAO.setConnection(con);
	boolean isId = loginDAO.checkId(request.getParameter("id"));
	out.println("["+ isId + "]");
%>