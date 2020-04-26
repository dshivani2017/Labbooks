package com.cg.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cg.entity.Trainee;
import com.cg.repository.ITraineeRepository;


@Service
public class TraineeService implements ITraineeService{
	
	@Autowired
	private ITraineeRepository traineeRepository;
	
	
	@Override
	@Transactional
	public List<Trainee> getTrainee(){
		List<Trainee> list=traineeRepository.findAll();
		return list;
	}
	
	
	@Override
	@Transactional
	public void saveTrainee(Trainee trainee){
		traineeRepository.save(trainee);
	}
	
	@Override
	@Transactional
	public Optional<Trainee> searchTrainee(int id){
		Optional<Trainee> opt=traineeRepository.findById(id);
		return opt;
	}
	
	@Override
	@Transactional
	public void deleteTrainee(int id){
		traineeRepository.deleteById(id);
	}

}
