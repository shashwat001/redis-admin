package org.redisadmin.controller;

import com.google.gson.Gson;
import org.apache.log4j.Logger;
import org.redisadmin.model.Server;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by shashwat001 on 21/8/14.
 */
public class GetServerListServlet extends HttpServlet {
    public static final Logger logger = Logger.getLogger(GetServerListServlet.class);

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        logger.info("Entering "+GetServerListServlet.class);
        PrintWriter out = response.getWriter();
        try {
            List<Server> serverList = Server.getServerList();
            String jsonServerList = new Gson().toJson(serverList);
            out.write(jsonServerList);
        } catch (SQLException e) {
            e.printStackTrace();
            out.write("false");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            out.write("false");
        }
        finally {
            out.close();
            logger.info("Leaving "+GetServerListServlet.class);
        }
    }
}
