package pl.controller;

import pl.dao.ExerciseDao;
import pl.dao.SolutionDao;
import pl.dao.UserDao;
import pl.model.Exercise;
import pl.model.Solution;
import pl.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.StringTokenizer;

@WebServlet("/details")
public class details extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int solutionId = Integer.parseInt(request.getParameter("solutionId"));
        SolutionDao solutionDao = new SolutionDao();
        Solution solutionById = solutionDao.findById(solutionId);
        String details = solutionById.getDescription();

        UserDao userDao = new UserDao();
        User user = userDao.findUserById(solutionById.getUserId());

        request.setAttribute("user", user);
        request.setAttribute("details", details);



        getServletContext().getRequestDispatcher("/pages/details.jsp").forward(request, response);
    }
}
