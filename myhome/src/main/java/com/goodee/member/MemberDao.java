package com.goodee.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.goodee.common.CommonUtil;

public class MemberDao {
	
	// 회원가입, insert 먼저
	// void 형태가 없다, js는 function으로 시작, 자바는 함수가 수행이 종료한 후 보내는 값에 따라 다른키워드를 사용
	// 보내는게 없을 때 void
	void insert(MemberDto dto) {
		Connection conn  = null;
		// insert나 update할때 유용한 클래스
		// 파라미터라고 해서 값들을 쿼리에 넣기 쉽게 지워해주는 클래스이다.
		PreparedStatement pstmt = null;
		
		try {
			Class.forName(CommonUtil.driver_class);
			conn = DriverManager.getConnection(CommonUtil.db_url,
					CommonUtil.username,
					CommonUtil.password);
			
			String sql= "insert into tb_member(userid, pwd, username"
							+ ", phone, email, wdate, activeyn) values( "
							+ " ?,  ? ,  ?,  ?,  ?, now(), 'Y' )";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getUserid());
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getUsername());
			pstmt.setString(4, dto.getPhone());
			pstmt.setString(5, dto.getEmail());
			
			pstmt.execute();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			try {
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			}
			catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}
	
	String isUse(String userid) {
		Connection conn  = null;
		// insert나 update할때 유용한 클래스
		// 파라미터라고 해서 값들을 쿼리에 넣기 쉽게 지워해주는 클래스이다.
		Statement stmt = null;
		ResultSet rs=null;
		String check="N";
		
		try {
			Class.forName(CommonUtil.driver_class);
			conn = DriverManager.getConnection(CommonUtil.db_url,
					CommonUtil.username,
					CommonUtil.password);
			
			String sql= "select count(*) as cnt from tb_member"
					+ " where userid ='"+userid+"' ";  // 뛰어쓰기 잘해야함
			
			stmt = conn.createStatement();
			
			System.out.println(sql);
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				int cnt = rs.getInt(1);
				if(cnt==0) // 사용가능
					check="Y";
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			try {
				if(rs!=null) rs.close();
				if(stmt!=null) stmt.close();
				if(conn!=null) conn.close();
			}
			catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return check;
	}

}
