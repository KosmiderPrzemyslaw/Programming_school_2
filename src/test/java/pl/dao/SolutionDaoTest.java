package pl.dao;

import org.junit.Test;
import pl.model.Solution;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.time.LocalDateTime;

public class SolutionDaoTest {

    @Test
    public void create() {
    }

    @Test
    public void findAllSolutionsByUserId() {
    }

    @Test
    public void read() {
    }

    @Test
    public void update() {
    }

    @Test
    public void delete() {
    }

    @Test
    public void findAll() {
    }

    @Test
    public void findAllByUserId() {
    }

    @Test
    public void findAllByExerciseId() {
    }

    @Test
    public void findRecent() {
    }

    @Test
    public void create1() {
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        Timestamp timestamp2 = new Timestamp(System.currentTimeMillis());
        Solution solution = new Solution(55,12, timestamp, timestamp2, "/home/przemysaw/IdeaProjects/Programming_school_2/src/main/java/pl/model/Group.java");
        SolutionDao solutionDao = new SolutionDao();
        solutionDao.create(solution);
    }
}