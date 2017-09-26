package site.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBHelper {
	private static final String driver = "com.mysql.jdbc.Driver";
	private static final String url = "jdbc:mysql://localhost:3306/shop?userUnicode=true&charcterEncoding=UTF-8";
	private static final String username = "liold";
	private static final String password = "";

	private static Connection conn = null;

	static {
		try {
			Class.forName(driver);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public static Connection getConnection() throws Exception {
		if (conn == null) {
			conn = DriverManager.getConnection(url, username, password);
			return conn;
		}
		return conn;
	}

	public static void main(String[] arg) {
		try {
			Connection conn = DBHelper.getConnection();
			if (null != conn) {
				System.out.println("连接成功！");
			} else {
				System.out.println("连接失败!");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
