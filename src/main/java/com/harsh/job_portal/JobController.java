package com.harsh.job_portal;

import com.harsh.job_portal.model.JobPost;
import com.harsh.job_portal.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class JobController {
    @Autowired
    private JobService jobService;
    @GetMapping({"/","home"})
    public String home() {
        return "home";
    }
    @GetMapping("viewalljobs")
    public String viewAllJobs() {
        return "viewalljobs";
    }
    @GetMapping("addjob")
    public String addJob(Model model) {
        model.addAttribute("jobPost", new JobPost());
        return "addjob";
    }
    @PostMapping("handleForm")
    public String handleForm(@ModelAttribute("jobPost") JobPost jobPost) {
        jobService.addJob(jobPost);
        return "success";
    }

}
