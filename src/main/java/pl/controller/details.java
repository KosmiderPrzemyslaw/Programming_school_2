package pl.controller;

import pl.dao.ExerciseDao;
import pl.dao.SolutionDao;
import pl.model.Exercise;
import pl.model.Solution;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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


        request.setAttribute("details", details);

        getServletContext().getRequestDispatcher("/pages/details.jsp").forward(request, response);
    }
}
