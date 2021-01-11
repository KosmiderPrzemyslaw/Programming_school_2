package pl.controller;

import pl.dao.GroupDao;
import pl.model.Group;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/editGroup")
public class editGroup extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String groupName = request.getParameter("groupName");
        int groupId = Integer.parseInt(request.getParameter("id"));

        GroupDao groupDao = new GroupDao();
        Group group = groupDao.findByGroupId(groupId);
        group.setName(groupName);
        groupDao.update(group);

        response.sendRedirect(request.getContextPath() + "/adminUsersGroups");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int groupId = Integer.parseInt(request.getParameter("groupId"));
        GroupDao groupDao = new GroupDao();
        Group group = groupDao.findByGroupId(groupId);

        request.setAttribute("group", group);

        getServletContext().getRequestDispatcher("/pages/editGroup.jsp").forward(request, response);
    }
}
