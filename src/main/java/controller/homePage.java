package controller;

import dao.SolutionDao;
import dao.UserDao;
import models.Solution;
import models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/")
public class homePage extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Solution solution = new Solution();
        SolutionDao solutionDao = new SolutionDao();
        List<Solution> recentSolutions = solutionDao.findRecent(5);
        UserDao userDao = new UserDao();
        List<User> userList = new ArrayList<>();
        for (Solution s: recentSolutions
             ) {
            int userId = s.getUserId();
            User userById = userDao.findUserById(userId);
            userList.add(userById);
        }

        request.setAttribute("users", userList);
        request.setAttribute("solutions", recentSolutions);
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
