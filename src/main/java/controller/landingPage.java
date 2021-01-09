package controller;

import dao.SolutionDao;
import models.Solution;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/sol")
public class landingPage extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Solution solution = new Solution();
        SolutionDao solutionDao = new SolutionDao();
        List<Solution> recent = solutionDao.findRecent(3);

        for (Solution s: recent
             ) {
            response.getWriter().println(s);
        }


    }
}
