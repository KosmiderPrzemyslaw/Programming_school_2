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
        List<User> userList = new ArrayList<>();

        ExerciseDao exerciseDao = new ExerciseDao();
        List<Exercise> exerciseList = new ArrayList<>();
        for (Solution s : recentSolutions
        ) {
            int userId = s.getUserId();
            User userById = userDao.findUserById(userId);
            userList.add(userById);

            int exerciseId = s.getExerciseId();
            Exercise exercise = exerciseDao.findById(exerciseId);
            exerciseList.add(exercise);

            ResolvedTasks resolvedTasks = new ResolvedTasks(exercise, userById, s);
            resolvedTasksList.add(resolvedTasks);
        }

        HttpSession session = request.getSession();
        session.setAttribute("solutions", recentSolutions);

        HttpSession session1 = request.getSession();
        session1.setAttribute("exercises", exerciseList);

        HttpSession session2 = request.getSession();
        session2.setAttribute("users", userList);

        HttpSession session3 = request.getSession();
        session3.setAttribute("resolvedTasks", resolvedTasksList);

        request.setAttribute("users", userList);
        request.setAttribute("solutions", recentSolutions);
        request.setAttribute("exercises", exerciseList);
        getServletContext().getRequestDispatcher("/pages/index.jsp").forward(request, response);
    }
}
