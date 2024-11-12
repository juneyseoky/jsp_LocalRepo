package pkg.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class Join {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	// DB 접속 담당 메소드(=> DBCP, JNDI 사용)
	public void mtdGetConn() throws Exception{
		Context init = new InitialContext();
		DataSource dataSource = (DataSource) init.lookup("java:comp/env/jdbc/dbcpConn");
		conn = dataSource.getConnection();
		
		System.out.println("DBCP 접속 OK!!!");
	}
	
	// 입력받고 서버로 전달 받은 데이터(=userId)를
	// 사용하여 아이디 중복 확인용 메서드
	public int chkUserId(String userId) {
		int rtnCnt = 0;
		try {
			mtdGetConn();
			String sql = "select count(*) from member where userId = ?";
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			
			if(rs.next()) rtnCnt = rs.getInt(1);
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e) {}
		}
		
		return rtnCnt;
	}
}