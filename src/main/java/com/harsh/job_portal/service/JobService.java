package com.harsh.job_portal.service;

import com.harsh.job_portal.model.JobPost;
import com.harsh.job_portal.repo.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class JobService {
    @Autowired
    private JobRepo jobRepo;
    public void addJob(JobPost jobPost) {
        System.out.println("Job is being added");
        jobRepo.addJob(jobPost);
    }
    public List<JobPost> viewAllJobs() {
        return jobRepo.getAllJobs();
    }

}
