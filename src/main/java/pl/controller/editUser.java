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
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

@WebServlet("/editUser")
public class editUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int userId = Integer.parseInt(request.getParameter("userId"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        int groupId = Integer.parseInt(request.getParameter("userGroup"));

        UserDao userDao = new UserDao();
        User user = userDao.findUserById(userId);

        user.setEmail(email);
        user.setUserName(name);
        user.setPassword(password);
        user.setGruopId(groupId);

        userDao.update(user);

        response.sendRedirect(request.getContextPath() + "/adminUsers");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        UserDao userDao = new UserDao();

        GroupDao groupDao = new GroupDao();
        List<Group> groups = groupDao.findAll();

        User user = userDao.findUserById(userId);
        request.setAttribute("user", user);
        request.setAttribute("groups", groups);

        getServletContext().getRequestDispatcher("/pages/editUser.jsp").forward(request, response);
    }
}
