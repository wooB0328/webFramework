package kr.ac.hansung.cse.dao;

import kr.ac.hansung.cse.model.Enrolment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class EnrolmentDao {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    private RowMapper<Enrolment> enrolmentRowMapper = new RowMapper<Enrolment>() {
        @Override
        public Enrolment mapRow(ResultSet rs, int rowNum) throws SQLException {
            Enrolment enrolment = new Enrolment();
            enrolment.setYear(rs.getInt("year"));
            enrolment.setSemester(rs.getInt("semester"));
            enrolment.setTitle(rs.getString("title"));
            enrolment.setDivision(rs.getString("division"));
            enrolment.setProfessor(rs.getString("professor"));
            enrolment.setCredits(rs.getInt("credits"));
            return enrolment;
        }
    };

    public List<Enrolment> getAllEnrolments() {
        String sqlStatement = "select * from enrolment";
        return jdbcTemplate.query(sqlStatement, enrolmentRowMapper);
    }

    public boolean insertEnrolment(Enrolment enrolment) {
        String sqlStatement = "insert into enrolment (year, semester, title, division, professor, credits) values (?, ?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sqlStatement,
                enrolment.getYear(),
                enrolment.getSemester(),
                enrolment.getTitle(),
                enrolment.getDivision(),
                enrolment.getProfessor(),
                enrolment.getCredits()) == 1;
    }
}
