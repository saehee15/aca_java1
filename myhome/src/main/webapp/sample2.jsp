<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 아이피를 페이지마다 박아두면, 보완성 떨어지고, 코드를 다 페이지마다 붙여야함, 그래서 비즈니스로직 분리시키기 MVC기법, 모델2
	// 요즘 DB에서 데이터를 배열로 담아와서 뿌림(2만개 정도만 가능)
	String driver_class = "org.mariadb.jdbc.Driver";
	String db_url = "jdbc:mariadb://127.0.0.1:3306/mydb";
	String username = "root";
	String password = "1234";
	
	Connection conn = null; // DB와 연결 담당
	Statement stmt = null;  // 쿼리를 실행시킨다
	ResultSet rs = null;    // 결과 담아오기
	
	try{
		Class.forName(driver_class);
		conn = DriverManager.getConnection(db_url, username, password);
		System.out.println("연결성공");
		
		stmt = conn.createStatement();
		String sql = "select * from dept";
		rs = stmt.executeQuery(sql); // DB에서 데이터를 가져온다.
		while(rs.next()){ // 데이터가 있는 동안 
			out.println( String.format("%s %s",rs.getString(1),
					rs.getString(2))+"<br/>");
		}
	} catch(ClassNotFoundException e){
		System.out.println("드라이브 로딩 실패");
	} catch(SQLException e){
		System.out.println("연결 실패");
	} finally {
		if(rs!=null)   rs.close();
		if(stmt!=null) stmt.close();
		if(conn!=null) conn.close();
	}

%>
</body>
</html>