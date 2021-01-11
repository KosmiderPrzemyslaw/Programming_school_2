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

@WebServlet("/addNewUser")
public class addNewUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();
        User user = new User();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        int groupId = Integer.parseInt(request.getParameter("userGroup"));
 
        user.setEmail(email);
        user.setUserName(name);
        user.setPassword(password);
        user.setGruopId(groupId);

        userDao.create(user);

        response.sendRedirect(request.getContextPath() + "/adminUsers");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        GroupDao groupDao = new GroupDao();
        List<Group> groups = groupDao.findAll();
        request.setAttribute("groups", groups);

        getServletContext().getRequestDispatcher("/pages/addNewUser.jsp").forward(request,response);
    }
}
