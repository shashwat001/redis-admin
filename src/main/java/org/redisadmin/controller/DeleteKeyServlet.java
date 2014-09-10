package org.redisadmin.controller;

import org.redisadmin.model.RedisAccessModel;
import org.redisadmin.model.Server;
import org.redisadmin.model.User;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by shashwat001 on 5/9/14.
 */
public class DeleteKeyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        try {
            HttpSession session = request.getSession();
            UserSession.GeneralUserLoginValidation(session);

            String key = request.getParameter("key");
            RedisAccessModel redisAccessModel = UserSession.getRedisAccessModelObject(session);

            redisAccessModel.deleteKey(key);
            out.println("true");
        }
        catch (NoGeneralUserLoginException e) {
            out.println("nologin");
        }
        finally {
            out.close();
        }


    }
}
