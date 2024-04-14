package kr.ac.hansung.cse.dao;

import kr.ac.hansung.cse.model.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class CourseDao {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Course> getAllCourses() {
        String sqlStatement = "select * from courses";
        return jdbcTemplate.query(sqlStatement, new CourseMapper());
    }

    private static final class CourseMapper implements RowMapper<Course> {
        public Course mapRow(ResultSet rs, int rowNum) throws SQLException {
            Course course = new Course();
            course.setYear(rs.getInt("year"));
            course.setSemester(rs.getInt("semester"));
            course.setCode(rs.getString("code"));
            course.setTitle(rs.getString("title"));
            course.setDivision(rs.getString("division"));
            course.setProfessor(rs.getString("professor"));
            course.setCredits(rs.getInt("credits"));
            return course;
        }
    }

    public List<Course> getCoursesGroup() {
        String sqlStatement = "SELECT year, semester, SUM(credits) AS totalCredits " +
                "FROM courses " +
                "GROUP BY year, semester " +
                "ORDER BY year, semester ASC";

        return jdbcTemplate.query(sqlStatement, (rs, rowNum) -> {
            Course course = new Course();
            course.setYear(rs.getInt("year"));
            course.setSemester(rs.getInt("semester"));
            course.setCredits(rs.getInt("totalCredits"));
            return course;
        });
    }


}
