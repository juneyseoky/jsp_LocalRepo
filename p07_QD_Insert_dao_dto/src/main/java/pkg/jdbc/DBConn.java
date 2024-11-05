package pkg.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBConn {

	private Connection conn;
	private PreparedStatement pstmt;
	
	public DBConn() {
		connectionDb();
	}

	private void connectionDb() {
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/sampleData?";
			url += "userSSl=false&";
			url += "userUnicode=true&";
			url += "characterEncoding=UTF8&";
			url += "serverTimezone=Asia/Seoul&";
			url += "allowPublicKeyRetrieval=true";
			
			String uid = "root";
			String pwd = "1234";
			
			conn= DriverManager.getConnection(url, uid, pwd);			
	
		}catch(ClassNotFoundException e ){
			System.out.print(e.getMessage());
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		
	}
	
	public int insertGoods(DataBean bean) {
		int rs =0;
		try {
			String sql = "insert into goodsList(goodsCode, goodsName, price, cnt) ";
			sql += "values(?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getGoodsCode());
			pstmt.setString(2, bean.getGoodsName());
			pstmt.setInt(3, bean.getPrice());
			pstmt.setInt(4, bean.getCnt());
			
			rs = pstmt.executeUpdate();
			
			if(rs == 1 ) {
				System.out.println("입력 성공");
			}else {
				System.out.println("입력 실패");
			}
			
			return rs;
			
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		
		return rs;
	}
	
}
