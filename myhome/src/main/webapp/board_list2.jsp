<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

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
	
	// 배열로 담기, 분리가능, try밖으로
	List<HashMap<String, String>> dataList = new
		ArrayList<HashMap<String, String>>();
	
	
	try{
		Class.forName(driver_class);
		conn = DriverManager.getConnection(db_url, username, password);
		System.out.println("연결성공");
		
		stmt = conn.createStatement();
		String sql = "select * from tb_board1";
		rs = stmt.executeQuery(sql); // DB에서 데이터를 가져온다.
		
		
 		while(rs.next()){ // 데이터가 있는 동안 
			
 			//javascript의 JSON 대신에 자바는 HashMap 사용
 			HashMap<String, String> map = new HashMap<String, String>();
 			map.put("id", rs.getString("id"));
 			map.put("title", rs.getString("title"));
 			map.put("writer", rs.getString("writer"));
 			map.put("contents", rs.getString("contents"));
 			map.put("wdate", rs.getString("wdate"));
 			map.put("hit", rs.getString("hit"));
 	
 			
 			dataList.add(map);
			
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
<table>
	<thead>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>내용</th>
		<th>작성일</th>
		<th>조회수</th>
	</thead>
	<tbody>
	<%for(int i=0; i<dataList.size(); i++) {%>
		<tr>
			<td><%=dataList.get(i).get("id")%></td>
			<td><%=dataList.get(i).get("title")%></td>
			<td><%=dataList.get(i).get("writer")%></td>
			<td><%=dataList.get(i).get("contents")%></td>
			<td><%=dataList.get(i).get("wdate")%></td>
			<td><%=dataList.get(i).get("hit")%></td>
		</tr>
	<%}%>
	</tbody>	
</table>

</body>
</html>