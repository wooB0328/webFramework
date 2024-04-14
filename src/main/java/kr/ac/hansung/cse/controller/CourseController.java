package kr.ac.hansung.cse.controller;

import kr.ac.hansung.cse.model.Course;
import kr.ac.hansung.cse.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.List;

@Controller
public class CourseController {

    @Autowired
    private CourseService courseService;


    @GetMapping("/courses")
    public String showCoursesGroup(Model model) {
        List<Course> CoursesGroup = courseService.getCoursesGroup();
        int total = CoursesGroup.stream()
                .mapToInt(Course::getCredits) // Course 객체에서 학점을 가져옴
                .sum();

        model.addAttribute("Coursegroup", CoursesGroup);
        model.addAttribute("total", total);
        return "courses";
    }

    @GetMapping("/courseDetails")
    public String showCourseDetails(@RequestParam("year") int year,
                                    @RequestParam("semester") int semester, Model model) {
        List<Course> courses = courseService.getAllCourses();
        courses.removeIf(course -> course.getYear() != year || course.getSemester() != semester);
        model.addAttribute("courses", courses);
        return "courseDetails";
    }


}
