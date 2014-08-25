package org.redisadmin.model;

import com.sun.javafx.collections.transformation.SortedList;

import javax.xml.crypto.Data;
import javax.xml.transform.Result;
import java.beans.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by shashwat001 on 21/8/14.
 */
public class Server {
    String host;
    int port;

    public Server(String host, int port) {
        this.host = host;
        this.port = port;
    }

    public void add() throws SQLException, ClassNotFoundException {
        Database database = new Database();
        String sql = getInsertQuery();
        database.execute(sql);
        database.close();
    }

    private String getInsertQuery() {
        String sql;
        sql = "insert into servers (host, port) values( \'"+host+"\',"+ port+")";
        return sql;
    }

    public static List<Server> getServerList() throws SQLException, ClassNotFoundException {
        Database database = new Database();
        String sql = "select host,port from servers";

        ResultSet rs = database.executeQuery(sql);

        List<Server> serverList = new LinkedList<Server>();

        while(rs.next()){
            String host = rs.getString("host");
            int port = rs.getInt("port");
            serverList.add(new Server(host,port));
        }
        return serverList;
    }
}
