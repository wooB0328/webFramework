package kr.ac.hansung.cse.controller;

import kr.ac.hansung.cse.model.Enrolment;
import kr.ac.hansung.cse.service.EnrolmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import javax.validation.Valid;
import java.util.List;

@Controller
public class EnrolmentController {

    @Autowired
    private EnrolmentService enrolmentService;

    @GetMapping("/enrolments")
    public String showEnrolments(Model model) {
        List<Enrolment> enrolments = enrolmentService.getAllEnrolments();
        model.addAttribute("enrolments", enrolments);
        return "enrolments";
    }

    @GetMapping("/createEnrolment")
    public String createEnrolment(Model model) {
        model.addAttribute("enrolment", new Enrolment());
        return "createEnrolment";
    }

    @PostMapping("/doCreateEnrolment")
    public String doCreateEnrolment(Model model, @Valid Enrolment enrolment, BindingResult result) {
        if (result.hasErrors()) {
            List<ObjectError> errors = result.getAllErrors();
            for (ObjectError error : errors) {
                System.out.println(error.getDefaultMessage());
            }
            return "createEnrolment";
        }

        enrolmentService.insertEnrolment(enrolment);
        return "home";
    }

}
