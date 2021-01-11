package pl.controller;

import pl.dao.GroupDao;
import pl.model.Group;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addNewGroup")
public class addNewGroup extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String groupName = request.getParameter("groupName");
        Group group = new Group();
        group.setName(groupName);
        GroupDao groupDao = new GroupDao();
        groupDao.create(group);

        response.sendRedirect(request.getContextPath() + "/adminUsersGroups");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/pages/addNewGroup.jsp").forward(request,response);
    }
}
