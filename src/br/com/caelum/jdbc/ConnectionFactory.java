package br.com.caelum.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	public Connection getConnection() {
		try {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} 
			return DriverManager.getConnection("jdbc:mysql://localhost/fj21",
					"roots", "123456");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
