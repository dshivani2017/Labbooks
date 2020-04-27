package com.cg.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cg.entity.Trainee;
import com.cg.entity.User;
import com.cg.services.ITraineeService;



@Controller
public class TraineeController {
	
	public static final Logger log=LoggerFactory.getLogger(TraineeController.class);
	
	@Autowired
	private ITraineeService traineeService;
	
	@GetMapping("/management/showAllTrainee")
	public String DirectToManagementPage(Model theModel){
		log.debug("Inside show all method of controller class");
		List<Trainee> list=traineeService.getTrainee();
		theModel.addAttribute("trainee",list);
		return "showAll";
		
		
	}

	@RequestMapping("/loginCheck")
	public String loginCheck(HttpServletRequest req,HttpServletResponse res){
		String name=req.getParameter("uname");
		String pass=req.getParameter("pass");
		
		if(name.equals("Shivani")){
			String msg="Welcome "+name;
			return "redirect:/management";
		}
		else
		{
			String msg="Wrong Details!!";
			return "redirect:/loginCheck";
		}
		
	}
	@RequestMapping("/management")
	public String management(){
		return "management";
	}
	
	@RequestMapping("/management/addTrainee")
	public String directToAddTrainee(Model theModel){
		log.debug("Inside add Trainee method");
		Trainee trainee=new Trainee();
		theModel.addAttribute("trainee",trainee);
		return "addTrainee";
		
	}
	
	@PostMapping("/management/saveTrainee")
	public String saveTrainee(@ModelAttribute("trainee") Trainee theTrainee){
		traineeService.saveTrainee(theTrainee);
		return "redirect:/management";
	}
	@RequestMapping("/management/deleteTrainee")
	public String deleteTrainee(){
		
		return "deleteTrainee";
	}
	@RequestMapping("/management/deleteConfirmTrainee")
	public String deleteConfirmTrainee(HttpServletRequest req,Model theModel){
		int id=Integer.parseInt(req.getParameter("TraineeId"));
		Optional<Trainee> opt=traineeService.searchTrainee(id);
		Trainee trainee=opt.get();
		theModel.addAttribute("trainee",trainee);
		return "confirmDelete";
		
	}
	@RequestMapping("/management/deleteFromDB/{id}")
	public String deleteFromDB(@PathVariable("id")int id){
		traineeService.deleteTrainee(id);
		return "redirect:/management";
	}
	@RequestMapping("/management/modifyTrainee")
	public String modifyTrainee(){
		return "updateTrainee";
	}
	@RequestMapping("/management/updateFormTrainee")
	public String updateFormTrainee(HttpServletRequest req,Model theModel){
		int id=Integer.parseInt(req.getParameter("TraineeId"));
		Optional<Trainee>opt=traineeService.searchTrainee(id);
		Trainee trainee=opt.get();
		theModel.addAttribute("trainee",trainee);
		return "updateForm";
	}
	@RequestMapping("/management/retrieveTrainee")
	public String retrieveTrainee(){
		return "retrieveTrainee";
	}
	@RequestMapping("/management/show")
	public String showByID(HttpServletRequest req,Model theModel){
		int id=Integer.parseInt(req.getParameter("TraineeId"));
		Optional<Trainee> opt=traineeService.searchTrainee(id);
		Trainee trainee=opt.get();
		theModel.addAttribute("trainee",trainee);
		return "showById";
	}
}
