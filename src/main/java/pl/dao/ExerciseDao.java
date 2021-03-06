package pl.dao;


import pl.model.Exercise;
import pl.utils.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ExerciseDao {
    public Exercise create(Exercise exercise) {
        try {
            Connection connection = DbUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement
                    ("INSERT INTO Programming_school.exercise(title, description) VALUES (?,?)",
                            PreparedStatement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, exercise.getTitle());
            preparedStatement.setString(2, exercise.getDescription());
            preparedStatement.executeUpdate();
            ResultSet resultSet = preparedStatement.getGeneratedKeys();

            if (resultSet.next()) {
                exercise.setId(resultSet.getInt(1));
            }
            return exercise;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Exercise read(int exerciseId) {
        try {
            Connection connection = DbUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement
                    ("SELECT * FROM Programming_school.exercise WHERE id = ?");
            preparedStatement.setInt(1, exerciseId);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                Exercise exercise = new Exercise();
                exercise.setId(resultSet.getInt("id"));
                exercise.setDescription(resultSet.getString("description"));
                exercise.setTitle(resultSet.getString("title"));
                return exercise;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void update(Exercise exercise) {
        try {
            Connection connection = DbUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement
                    ("UPDATE Programming_school.exercise SET title = ?, description = ? WHERE id = ?");
            preparedStatement.setString(1, exercise.getTitle());
            preparedStatement.setString(2, exercise.getDescription());
            preparedStatement.setInt(3, exercise.getId());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void delete(int exerciseId) {
        try {
            Connection connection = DbUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM Programming_school.exercise WHERE id = ?");
            preparedStatement.setInt(1, exerciseId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Exercise> findAll() {
        try {
            Connection connection = DbUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement
                    ("SELECT * FROM Programming_school.exercise");
            ResultSet resultSet = preparedStatement.executeQuery();
            List<Exercise> exercises = new ArrayList<>();
            while (resultSet.next()) {
                Exercise exercise = new Exercise();
                exercise.setId(resultSet.getInt("id"));
                exercise.setTitle(resultSet.getString("title"));
                exercise.setDescription(resultSet.getString("description"));
                exercises.add(exercise);
            }
            return exercises;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Exercise findById(int exerciseID) {
        try {
            Connection connection = DbUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement
                    ("SELECT * FROM Programming_school.exercise where Programming_school.exercise.id = ?");
            preparedStatement.setInt(1, exerciseID);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Exercise exercise = new Exercise();
                exercise.setId(resultSet.getInt("id"));
                exercise.setTitle(resultSet.getString("title"));
                exercise.setDescription(resultSet.getString("description"));
                return exercise;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Exercise> findAllResolved(int userId) {
        try {
            Connection connection = DbUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement
    //                ("SELECT * FROM Programming_school.exercise e LEFT JOIN Programming_school.solution s on e.id = s.exercise_id WHERE user_id = ?");
                    ("SELECT * FROM Programming_school.exercise e  RIGHT JOIN  Programming_school.solution s on e.id = s.exercise_id WHERE user_id = ?");
            preparedStatement.setInt(1, userId);

            ResultSet resultSet = preparedStatement.executeQuery();
            List<Exercise> exercises = new ArrayList<>();
            while (resultSet.next()){
                Exercise exercise = new Exercise();
                exercise.setId(resultSet.getInt("id"));
                exercise.setTitle(resultSet.getString("title"));
                exercise.setDescription(resultSet.getString("description"));
                exercises.add(exercise);
            }
            return exercises;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
