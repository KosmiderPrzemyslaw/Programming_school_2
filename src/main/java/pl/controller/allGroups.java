package pl.controller;

import pl.dao.GroupDao;
import pl.model.Group;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/allGroups")
public class allGroups extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        GroupDao groupDao = new GroupDao();
        List<Group> allGroups = groupDao.findAll();
        request.setAttribute("allGroups", allGroups);

        getServletContext().getRequestDispatcher("/pages/allGroups.jsp").forward(request, response);
    }
}
