package org.redisadmin.controller;

import org.redisadmin.model.Server;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by shashwat001 on 10/9/14.
 */
public class DeleteServerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        try {
            UserSession.AdminUserLoginValidation(session);

            String host = request.getParameter("host");
            int port = Integer.parseInt(request.getParameter("port"));
            Server server = new Server(host,port);
            if(server.delete())
                out.println("true");
            else
                out.println("false");
        }
        catch (NoAdminLoginException e) {
            out.println("noadmin");
        }
        catch (NoGeneralUserLoginException e) {
            out.println("nologin");
        } finally {
            out.close();
        }
    }
}
