package com.service;

import java.util.List;

import com.domain.Exam;

public interface ExamService {

	// ������ > ������ȸ ######################################
	public List<Exam> aCheckPoint(Exam e);
	
	// ������ > ������ȸ ######################################
	public List<Exam> aCheckGrade(Exam e);
	
	// 
	public List<Exam> aCheckStGrade(Exam e);
	public List<Exam> iCheckPoint(Exam e);
}
