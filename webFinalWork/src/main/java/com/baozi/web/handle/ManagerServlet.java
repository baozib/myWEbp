package com.baozi.web.handle;

import com.baozi.pojo.gereral.User;
import com.baozi.pojo.manager.Manager;
import com.baozi.pojo.manager.ManagerAid;
import com.baozi.pojo.manager.ManagerCareer;
import com.baozi.pojo.manager.ManagerComm;
import com.baozi.service.impl.ManagerServiceImpl;
import com.google.gson.Gson;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

public class ManagerServlet extends BaseServlet {

    private PrintWriter pw;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)  {
        doPost(req, resp);
    }

    protected void showAllAid(HttpServletRequest req, HttpServletResponse resp) throws IOException{
        pw = resp.getWriter();
        List<Manager> aids = new ManagerServiceImpl().showAllAid();
        pw.println(new Gson().toJson(aids));
    }

    protected void showALlComm(HttpServletRequest req, HttpServletResponse resp) throws IOException{
        pw = resp.getWriter();
        List<Manager> comms = new ManagerServiceImpl().showAllComm();
        pw.println(new Gson().toJson(comms));
    }

    protected void showAllCareer(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        pw = resp.getWriter();
        List<Manager> comms = new ManagerServiceImpl().showAllCareer();
        pw.println(new Gson().toJson(comms));
    }

    protected void refuseCareer(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Map<String, String[]> parameterMap = req.getParameterMap();
        Manager assignment = new ManagerCareer().Assignment(parameterMap);
        int i = new ManagerServiceImpl().refuseCareer(assignment);
        pw = resp.getWriter();
        pw.println(i);
    }

    protected void refuseAid(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Map<String, String[]> parameterMap = req.getParameterMap();
        Manager assignment = new ManagerAid().Assignment(parameterMap);
        int i = new ManagerServiceImpl().refuseAid(assignment);
        pw = resp.getWriter();
        pw.println(i);
    }

    protected void showCommContent(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Map<String, String[]> parameterMap = req.getParameterMap();
        Manager assignment = new ManagerComm().Assignment(parameterMap);
        String s = new ManagerServiceImpl().showCommContent(assignment);
        pw = resp.getWriter();
        pw.println(s == null ? "" : s);
    }

    protected void acceptCareer(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Map<String, String[]> parameterMap = req.getParameterMap();
        User assignment = new User().Assignment(parameterMap);
        int i = new ManagerServiceImpl(assignment).acceptCareer();
        pw = resp.getWriter();
        pw.println(i);
    }

    protected void accpetAid(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Map<String, String[]> parameterMap = req.getParameterMap();
        Manager assignment = new ManagerAid().Assignment(parameterMap);
        int i = new ManagerServiceImpl().acceptAid(assignment);
        pw = resp.getWriter();
        pw.println(i);
    }

}
