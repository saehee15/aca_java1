package com.goodee.score;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.startup.Tomcat.ExistingStandardWrapper;

import com.goodee.common.CommonUtil; //공통부분,

// Dao- Data Access Object - 데이터 베이스에 가서 데이터 읽고 쓰기 담당 클래스
public class ScoreDao {
	// 공통으로 빼기
	// String driver_class = "org.mariadb.jdbc.Driver";
	// String db_url = "jdbc:mariadb://127.0.0.1:3306/mydb";
	// String username = "root";
	// String password = "1234";
	
	
	// getList 메서드
	List<ScoreDto> getList(){
		// 디비로부터 데이터를 읽어와서 디비데이터를 BoardDto라는 객체에 담아서
		// List객체에 담아서 jsp로 보내준다
		
		Connection conn=null;   // DB와 연결만 담당
		Statement stmt=null;    // 쿼리를 실행(select, insert, update...)
		ResultSet rs=null;		// select 쿼리를 실행하고 나서 결과 데이터를 담아온다
		
		
		// ArrayList 데이터를 담아둘 수 있는 클래스, 컬렉션 클래스
		List<ScoreDto> dataList = new ArrayList<ScoreDto>();
		try {
			Class.forName(CommonUtil.driver_class);
			conn = DriverManager.getConnection(CommonUtil.db_url, CommonUtil.username, CommonUtil.password);
			stmt = conn.createStatement();

			String sql = "select id, name, kor, eng, mat, (kor+eng+mat) total, ROUND((kor+eng+mat)/3,2) average from score";  // 이쪽에서 수식
			
			System.out.println(sql); // 쿼리 한번 확인해보고
			
			// executeQuery - sql을 실행하고 나서 결과를 ResultSet이라는 형태로 가져온다.
			rs = stmt.executeQuery(sql); // 매개변수 sql이 위에 String sql임
			// rs.next() - 읽을 데이터가 없으면 false반환, 읽을 데이터가 있으면 true 반환
			
			while(rs.next()) // 데이터가 없을때까지
			{
				ScoreDto dto = new ScoreDto(); // 객체만들기 - 반드시 new로 만든다.
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setKor(rs.getString("kor"));
				dto.setEng(rs.getString("eng"));
				dto.setMat(rs.getString("mat"));
				dto.setTotal(rs.getString("total"));
				dto.setAverage(rs.getString("average"));
				
				dataList.add(dto);
			}
			
		}catch(ClassNotFoundException e){
			e.printStackTrace(); // 에러에 대한 도움말 확인
			
		}catch(SQLException e) {
			e.printStackTrace(); // 에러에 대한 도움말 확인
		}finally  // try구문에서 에러없이 성공적으로 수행을 하던 에러가 발생하던 무조건 수행
		{
				try {
					if(rs!=null) rs.close();
					if(stmt!=null) stmt.close();
					if(conn!=null) conn.close();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
		}
		return dataList;
	}
	
	
	
	
	
	//getView 메서드, 배열 아니고 데이터 하나 넘어가도록, getList는 배열
//	ScoreDto getView(String id) {
//		
//		Connection conn=null;
//		Statement stmt=null;
//		ResultSet rs=null;
//		ScoreDto dto = new ScoreDto();
//		
//		try {
//			Class.forName(CommonUtil.driver_class);
//			conn = DriverManager.getConnection(CommonUtil.db_url, CommonUtil.username, CommonUtil.password);
//			stmt = conn.createStatement();
//			String sql = "select id, title, writer, " 
//			             + " date_format(wdate, '%Y-%m-%d') wdate,"
//			             + " hit, contents from tb_board1 "
//			             + " where id =" + id; // 앞에 뛰어줘야함, 안 그러면 쿼리 에러 생김 
//						// You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '=1' at line 1
//						// 이런 에러
//			rs = stmt.executeQuery(sql); // 매개변수 sql이 위에 String sql임, if문인인 이유 데이터가 없거나 한건임
//			if(rs.next()) // 데이터가 없을때까지
//			{
//				dto.setId(rs.getString("id"));
//				dto.setTitle(rs.getString("title"));
//				dto.setWriter(rs.getString("writer"));
//				dto.setContents(rs.getString("contents"));
//				dto.setWdate(rs.getString("wdate"));
//				dto.setHit(rs.getString("hit"));
//				
//			}
//			
//		}catch(ClassNotFoundException e){
//			e.printStackTrace(); // 에러에 대한 도움말 확인
//			
//		}catch(SQLException e) {
//			e.printStackTrace(); // 에러에 대한 도움말 확인
//		}finally {
//				try {
//					if(rs!=null) rs.close();
//					if(stmt!=null) stmt.close();
//					if(conn!=null) conn.close();
//				} catch (SQLException e) {
//					
//					e.printStackTrace();
//				}
//		}
//		return dto;
//	}
	
	
	//void 나는 보낼게 없다
//	void insert(ScoreDto dto) {
//		
//		Connection conn=null;
//		Statement stmt=null;
//		ResultSet rs=null;
//		// BoardDto dto = new BoardDto();  // 지우기,  위의 BoardDto getView(String id) 메서드에서 코드 복붙해와서 void insert 만드는중
//		
//		try {
//			Class.forName(CommonUtil.driver_class);
//			conn = DriverManager.getConnection(CommonUtil.db_url, CommonUtil.username, CommonUtil.password);
//			stmt = conn.createStatement();
//			String sql = " insert into tb_board1 ";
//					sql = sql +"(title, writer, contents, wdate, hit) ";
//					sql = sql +"values ";
//					sql = sql +"('" + dto.getTitle() +"',";					
//					sql = sql +" '" + dto.getWriter() +"',";
//					sql = sql +" '" + dto.getContents() +"',";					
//					sql = sql +" now(),0 ) ";
//					
//					System.out.print(sql);
//					
//					stmt.execute(sql);  // insert, update, delete는 execute를 사용
//				
//			
//		}catch(ClassNotFoundException e){
//			e.printStackTrace(); // 에러에 대한 도움말 확인
//			
//		}catch(SQLException e) {
//			e.printStackTrace(); // 에러에 대한 도움말 확인
//		}finally {
//				try {
//					if(rs!=null) rs.close();
//					if(stmt!=null) stmt.close();
//					if(conn!=null) conn.close();
//				} catch (SQLException e) {
//					
//					e.printStackTrace();
//				}
//		}
//		// return dto;
//	}
//	
}
