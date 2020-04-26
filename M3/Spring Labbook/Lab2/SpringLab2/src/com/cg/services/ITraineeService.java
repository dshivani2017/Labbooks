package com.cg.services;

import java.util.List;
import java.util.Optional;

import com.cg.entity.Trainee;

public interface ITraineeService {
	
	public List<Trainee> getTrainee();
	
	public void saveTrainee(Trainee theTrainee);
	
	public Optional<Trainee> searchTrainee(int id);
	
	public void deleteTrainee(int id);

}
