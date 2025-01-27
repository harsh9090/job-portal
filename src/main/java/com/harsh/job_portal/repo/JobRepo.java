package com.harsh.job_portal.repo;

import com.harsh.job_portal.model.JobPost;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
@Repository
public class JobRepo {
    private List<JobPost> jobs = new ArrayList<>(Arrays.asList(
            new JobPost("1", "Software Developer", "Develop software applications", 2, Arrays.asList("Java", "Spring Boot")),
            new JobPost("2", "Software Tester", "Test software applications", 1, Arrays.asList("Selenium", "Junit")),
            new JobPost("3", "DevOps Engineer", "Maintain CI/CD pipeline", 3, Arrays.asList("Jenkins", "Docker")),
            new JobPost("4", "Database Administrator", "Maintain database", 2, Arrays.asList("MySQL", "MongoDB")),
            new JobPost("5", "Network Engineer", "Maintain network infrastructure", 2, Arrays.asList("Cisco", "Juniper"))

    ));

    public void addJob(JobPost jobPost) {
        System.out.println("Job added");
        jobs.add(jobPost);
    }
    public List<JobPost> getAllJobs() {
        return jobs;
    }
}
