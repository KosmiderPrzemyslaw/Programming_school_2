package pl.controller;

import pl.dao.GroupDao;
import pl.dao.UserDao;
import pl.model.Group;
import pl.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/allUsers")
public class allUsers extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int groupId = Integer.parseInt(request.getParameter("groupId"));
        GroupDao groupDao = new GroupDao();
        Group group = groupDao.findByGroupId(groupId);
        UserDao userDao = new UserDao();
        List<User> allUsers = userDao.findAllByGroupId(groupId);

        request.setAttribute("allUsers", allUsers);
        request.setAttribute("group", group);

        getServletContext().getRequestDispatcher("/pages/allUsersGroup.jsp").forward(request,response);
    }
}
