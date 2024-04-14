package kr.ac.hansung.cse.service;

import kr.ac.hansung.cse.dao.EnrolmentDao;
import kr.ac.hansung.cse.model.Enrolment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EnrolmentService {

    @Autowired
    private EnrolmentDao enrolmentDao;

    public List<Enrolment> getAllEnrolments() {
        return enrolmentDao.getAllEnrolments();
    }
    public void insertEnrolment(Enrolment enrolment) {
        enrolmentDao.insertEnrolment(enrolment);
    }

    //데이터 불러오기와 입력만 있으면 됌
}
