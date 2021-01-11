package pl.controller;

import pl.dao.SolutionDao;
import pl.dao.UserDao;
import pl.model.Solution;
import pl.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/userDetails")
public class userDetails extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        UserDao userDao = new UserDao();
        User user = userDao.findUserById(userId);

        SolutionDao solutionDao = new SolutionDao();
        List<Solution> userSolutions = solutionDao.findAllByUserId(userId);

        HttpSession session = request.getSession();
        session.setAttribute("user", user);

        HttpSession session1 = request.getSession();
        session1.setAttribute("userSolutions", userSolutions);
        request.setAttribute("user", user);
        request.setAttribute("userSolutions", userSolutions);

        getServletContext().getRequestDispatcher("/pages/userDetails.jsp").forward(request,response);
    }
}
