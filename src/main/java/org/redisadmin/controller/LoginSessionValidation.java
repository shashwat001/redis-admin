package org.redisadmin.controller;

import javax.servlet.http.HttpSession;

/**
 * Created by shashwat001 on 10/9/14.
 */
public class LoginSessionValidation {
    public static void GeneralUser(HttpSession session) throws NoGeneralUserLoginException {
        if(session.getAttribute("username") == null)
            throw new NoGeneralUserLoginException();
    }

    public static void AdminUser(HttpSession session) throws NoAdminLoginException, NoGeneralUserLoginException {
        GeneralUser(session);
        if(session.getAttribute("admin") == null)
            throw new NoAdminLoginException();

    }
}
