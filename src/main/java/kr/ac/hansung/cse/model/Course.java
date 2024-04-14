package kr.ac.hansung.cse.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class Course {
    private int year;       // 수강년도
    private int semester;   // 학기
    private String code;    // 교과코드
    private String title;   // 교과목명
    private String division; // 교과구분
    private String professor; // 담당교수
    private int credits;    // 학점
}
