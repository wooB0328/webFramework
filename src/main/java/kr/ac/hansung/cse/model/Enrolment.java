package kr.ac.hansung.cse.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.validator.constraints.Range;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
@Getter
@Setter
@ToString
@NoArgsConstructor
public class Enrolment {

    @Range(min = 2024, max = 2024, message = "2024년만 가능합니다.")
    private int year; // 수강년도

    @Range(min = 2, max = 2, message = "2학기만 가능합니다.")
    private int semester; // 학기

    @NotEmpty(message = "교과목명를 입력해주세요.")
    @Size(max = 25, message = "교과목명은 25글자 이내로 입력해주세요.")
    private String title; // 교과목명

    @NotEmpty(message = "교과구분을 입력해주세요")
    @Size(max = 10, message = "교과구분은 10글자 이내로 입력해주세요.")
    private String division; // 교과구분

    @NotEmpty(message = "담당교수 이름을 입력해주세요")
    @Size(max = 10, message = "담당교수 이름은 10글자 이내로 입력해주세요.")
    private String professor; // 담당교수

    @Min(value = 1, message = "학점은 1 이상으로 설정해주세요.")
    private int credits; // 학점
}
