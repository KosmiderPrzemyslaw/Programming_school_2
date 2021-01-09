package controller;

import dao.ExerciseDao;
import dao.SolutionDao;
import dao.UserDao;
import model.Exercise;
import model.Solution;
import model.User;

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
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
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
        }

        request.setAttribute("users", userList);
        request.setAttribute("solutions", recentSolutions);
        request.setAttribute("exercises", exerciseList);
        getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
    }
}
