<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");

	String filename = "";
	String realFolder = "C:\\upload"; //웹 어플리케이션상의 절대 경로
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

	String animalId = multi.getParameter("animalId");
	String name = multi.getParameter("name");
	String age = multi.getParameter("age");
	String local = multi.getParameter("local");
	
	Integer age2;

	if (age.isEmpty())
		age2 = 0;
	else
		age2 = Integer.valueOf(age);

	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	PreparedStatement pstmt = null;	
	
	String sql = "insert into animal (id, name, age,local,filename) values(?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, animalId);
	pstmt.setString(2, name);
	pstmt.setInt(3, age2);
	pstmt.setString(4, local);
	pstmt.setString(5, fileName);
	pstmt.executeUpdate();
	
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
	
	response.sendRedirect("products_animal.jsp");
	
%>
	
