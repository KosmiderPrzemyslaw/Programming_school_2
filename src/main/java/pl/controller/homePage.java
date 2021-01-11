package pl.controller;

import pl.dao.ExerciseDao;
import pl.dao.SolutionDao;
import pl.dao.UserDao;
import pl.model.Exercise;
import pl.model.ResolvedTasks;
import pl.model.Solution;
import pl.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/")
public class homePage extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        List<ResolvedTasks> resolvedTasksList = new ArrayList<>();
        SolutionDao solutionDao = new SolutionDao();
        List<Solution> recentSolutions = solutionDao.findRecent(5);

        UserDao userDao = new UserDao();
        ExerciseDao exerciseDao = new ExerciseDao();

        for (Solution s : recentSolutions
        ) {
            int userId = s.getUserId();
            User userById = userDao.findUserById(userId);

            int exerciseId = s.getExerciseId();
            Exercise exercise = exerciseDao.findById(exerciseId);

            ResolvedTasks resolvedTasks = new ResolvedTasks(exercise, userById, s);
            resolvedTasksList.add(resolvedTasks);
        }

        HttpSession session3 = request.getSession();
        session3.setAttribute("resolvedTasks", resolvedTasksList);

        getServletContext().getRequestDispatcher("/pages/index.jsp").forward(request, response);
    }
}
