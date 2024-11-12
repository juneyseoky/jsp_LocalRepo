package pkg.dbcp;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConn {

	public static Connection mtdGetConn() throws Exception{
		// DBCP(Database connection pool)을 사용하기 위해선
		// tomcat-dbcp.jar 라이브러리가 필요하고
		// context.xml 을 작성하여 META-INF안에 복사하여 사용한다.
		// lookup(java:comp/env/jdbc/dbcpConn)에서 jdbc/dbcpConn는 
		// context.xml에서 설정한 name 값으로 가져온다.
		Connection conn = null;
		Context init = new InitialContext();
		DataSource dataSource = (DataSource)init.lookup("java:comp/env/jdbc/dbcpConn");
		conn = dataSource.getConnection();
		return conn;
	}
}
