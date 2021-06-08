package com.baozi.web.handle;

import com.baozi.service.impl.DonorServiceImpl;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class DonorServlet extends BaseServlet{

    private PrintWriter pw ;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    protected void showType(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List list = new DonorServiceImpl().showType();
        resp.setCharacterEncoding("utf-8");
        pw = resp.getWriter();
        pw.println(new Gson().toJson(list));
    }

}
