package org.redisadmin.controller;

import org.redisadmin.model.Server;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

/**
 * Created by shashwat001 on 21/8/14.
 */
public class AddServerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try {
            String host = request.getParameter("host");
            int port = Integer.parseInt(request.getParameter("port"));
            Server server = new Server(host,port);
            server.add();
            out.append("true");
        } catch (SQLException e) {
            e.printStackTrace();
            out.append("false");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            out.append("false");
        } catch (Exception e){
            out.append("false");
        }
        finally {
            out.close();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
