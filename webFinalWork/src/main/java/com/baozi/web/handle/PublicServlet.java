package com.baozi.web.handle;


import com.baozi.pojo.gereral.User;
import com.baozi.service.impl.BaseServiceImpl;
import com.google.gson.Gson;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.*;


public class PublicServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)  {
        doPost(req, resp);
    }


    protected void login(HttpServletRequest req, HttpServletResponse resp) throws  IOException {
        Map<String, String[]> parameterMap = req.getParameterMap();
        User user = new User().Assignment(parameterMap);
        Map login = new BaseServiceImpl(user).login();
        req.getSession().setAttribute("id",user.getUsername());
        resp.getWriter().println(new Gson().toJson(login));
    }

    protected void register(HttpServletRequest req, HttpServletResponse resp) throws  IOException {
        Map<String, String[]> parameterMap = req.getParameterMap();
        int register = new BaseServiceImpl(new User().Assignment(parameterMap)).register();
        resp.getWriter().println(register);
    }

    protected void fileUpload(HttpServletRequest req, HttpServletResponse resp)  {
        User user = User.builder().username(String.valueOf(req.getSession().getAttribute("id"))).build();
        new BaseServiceImpl(user).fileUpload(req, resp);
    }

}
