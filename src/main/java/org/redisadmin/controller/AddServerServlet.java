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

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try {
            UserSession.AdminUserLoginValidation(request.getSession());

            String host = request.getParameter("host");
            int port = Integer.parseInt(request.getParameter("port"));
            Server server = new Server(host,port);
            if(server.add()){
                out.println("true");
            }
            else
                out.println("false");
        } catch (NoAdminLoginException e) {
            out.println("noadmin");
        } catch (NoGeneralUserLoginException e) {
            out.println("nologin");
        }
        finally {
            out.close();
        }



    }
}
