package org.redisadmin.model;

import com.sun.javafx.collections.transformation.SortedList;

import javax.xml.crypto.Data;
import javax.xml.transform.Result;
import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Logger;

/**
 * Created by shashwat001 on 21/8/14.
 */
public class Server {
    String host;
    int port;
    boolean active;

    public static final Logger logger = Logger.getLogger(String.valueOf(Server.class));

    public Server(String host, int port) {
        this.host = host;
        this.port = port;

        active = RedisAccessModel.isActive(host,port);

    }

    public void add() throws SQLException, ClassNotFoundException {

        String sql = "insert into servers (host, port) values(?,?)";
        Connection connection = Database.getConnection();

        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1,host);
        preparedStatement.setInt(2,port);
        int status = preparedStatement.executeUpdate();
    }

    public static List<Server> getServerList() throws SQLException, ClassNotFoundException {
        logger.info("Entering function getServerList");
        String sql = "select host,port from servers";

        PreparedStatement preparedStatement = Database.getConnection().prepareStatement(sql);

        ResultSet rs = preparedStatement.executeQuery(sql);

        List<Server> serverList = new LinkedList<Server>();

        while(rs.next()){

            String host = rs.getString("host");
            int port = rs.getInt("port");
            serverList.add(new Server(host,port));

            logger.info(host + ":" + port);
        }
        logger.info("Leaving function getServerList");
        return serverList;
    }

    public boolean delete(){

        try {
            String sql = "delete from servers where host=? and port=?";
            PreparedStatement preparedStatement = Database.getConnection().prepareStatement(sql);
            preparedStatement.setString(1, host);
            preparedStatement.setInt(2, port);
            int status = preparedStatement.executeUpdate();
            if(status == 1)
                return true;
            return false;
        } catch (SQLException e) {
            return false;
        }

    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Server server = new Server("144.16.17.18",7000);
        server.delete();
    }
}
