<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.koreait.web.BoardVO" %>
<%@ page import = "java.sql.*" %>
<%!
	Connection getCon() throws Exception{
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String username = "hr";
	String password = "koreait2020";
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	Connection con = DriverManager.getConnection(url, username, password); 
	System.out.println("접속성공!");

	return con; 
}
	%>
	
<%
	String strI_board = request.getParameter("i_board");

	int i_board = Integer.parseInt(strI_board);
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	String sql = " DELETE FROM t_board WHERE i_board = ? ";
	String sql = " UPDATE t_board WHERE i_board = ? ";
	

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