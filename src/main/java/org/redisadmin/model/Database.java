package org.redisadmin.model;

import java.sql.*;

/**
 * Created by deepak on 21/8/14.
 */
public class Database {
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/Redis";
    static final String USER = "root";
    static final String DB_PASS = "abc";
    public Connection conn=null;

    public Database() throws ClassNotFoundException, SQLException {
        Class.forName(JDBC_DRIVER);
        conn = DriverManager.getConnection(DB_URL, USER, DB_PASS);
    }



    public ResultSet executeQuery(String sql) throws SQLException {
        Statement stmt = null;
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        //stmt.close();
        return rs;
    }

    public void close() throws SQLException {
        conn.close();
    }

    public void execute(String sql) throws SQLException {
        Statement stmt = null;
        stmt = conn.createStatement();
        stmt.execute(sql);
        stmt.close();
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Database db = new Database();
        String sql = "insert into users (name, email, password) values( 'name1','email1','password' )";
        db.execute(sql);
        db.close();
    }
}
