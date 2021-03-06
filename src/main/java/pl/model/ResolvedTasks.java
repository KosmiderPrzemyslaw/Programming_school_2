package pl.model;

public class ResolvedTasks {
    private Exercise exercise;
    private User user;
    private Solution solution;


    public ResolvedTasks(Exercise exercise, User user, Solution solution) {
        this.exercise = exercise;
        this.user = user;
        this.solution = solution;
    }

    public Exercise getExercise() {
        return exercise;
    }

    public void setExercise(Exercise exercise) {
        this.exercise = exercise;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Solution getSolution() {
        return solution;
    }

    public void setSolution(Solution solution) {
        this.solution = solution;
    }
}
