<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");

	String filename = "";
	String realFolder = "C:\\JSP_workspace\\WebMarket_Final\\WebContent\\resources\\images"; //웹 어플리케이션상의 절대 경로
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 10 * 1024 * 1024; //최대 업로드될 파일의 크기 10Mb

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

	String animalId = multi.getParameter("animalId");
	String animalName = multi.getParameter("animalName");
	String animalLocation = multi.getParameter("animalLocation");
	String animalAge = multi.getParameter("animalAge");

	Integer animalAge2;

	if (animalAge.isEmpty())
		animalAge2 = 0;
	else
		animalAge2 = Integer.valueOf(animalAge);
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	PreparedStatement pstmt = null;	
	
	String sql = "insert into animal values(?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, animalId);
	pstmt.setString(2, animalName);
	pstmt.setString(3, animalLocation);
	pstmt.setInt(4, animalAge2);
	pstmt.setString(5, fileName);
	pstmt.executeUpdate();
	
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
	
	response.sendRedirect("products_animal.jsp");	
%>
	
