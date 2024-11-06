package pkg.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DBConn {

	private Connection conn;
	private PreparedStatement pstmt;
	private Statement stmt;
	private ResultSet rs;
	
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
			System.out.println("Connection OK!!");
	
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
	
	public ArrayList<DataBean> selectGoods() {
		// DAO의 Select에서 DTO를 활용한 코드
		// return값으로 DTO만 담을 ArrayList로 설정한다.
		ArrayList<DataBean> beanList = new ArrayList<DataBean>();
		// List 객체 생성
		try {
			
			stmt = conn.createStatement();
			String sql = "select * from goodsList order by num desc";
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				DataBean bean = new DataBean();
				// DTO의 객체 생성
				// DTO의 구조 DTO {맵핑키 : 맵핑값, 맵핑키 : 맵핑값 .....}
				bean.setNum(rs.getInt("num"));
				bean.setGoodsCode(rs.getString("goodsCode"));
				bean.setGoodsName(rs.getString("goodsName"));
				bean.setPrice(rs.getInt("price"));
				bean.setCnt(rs.getInt("cnt"));
				beanList.add(bean);
			}
			// ArrayList<DTO> 의 구조
			// [
			//  	DTO {맵핑키 : 맵핑값, 맵핑키 : 맵핑값 .....}
			//	  	DTO {맵핑키 : 맵핑값, 맵핑키 : 맵핑값 .....}
			// ]
			
		}catch(SQLException e) {
			System.out.println(e.getMessage());
		}
		return beanList; 
	}
	
	public int updateGoods(int num, int price) {
		int chk = 0;
		try {
			String sql = "update goodsList set price = ? where num = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, price);
			pstmt.setInt(2, num);
			
			chk = pstmt.executeUpdate();
			System.out.println(chk);
			if(chk == 1) {
				System.out.println("수정 완료");
			}else {
				System.out.println("수정 실패");
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		
		return chk;
	}
}
