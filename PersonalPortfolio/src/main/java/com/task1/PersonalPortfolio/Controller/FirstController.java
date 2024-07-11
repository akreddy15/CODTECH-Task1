package com.task1.PersonalPortfolio.Controller;


import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.task1.PersonalPortfolio.Service.IProject;
import com.task1.PersonalPortfolio.model.Task1;


@Controller
public class FirstController
{
	@Autowired
	private IProject service; 
	
	
    @GetMapping("/home")
	public String home(Map<String,Object> map)
	{
  
		return "home";
	}
    
    
    @GetMapping("/about")
   	public String about(Map<String,Object> map)
   	{
     
   		return "About";
   	}
    
    @GetMapping("/services")
   	public String services(Map<String,Object> map)
   	{
     
   		return "Services";
   	}
    
    @GetMapping("/projects")
   	public String projects(Map<String,Object> map)
   	{
        map.put("projectsList", service.getAllProjects()); 
    	
   		return "Projects";
   	}
    
    @GetMapping("/contact")
   	public String contact(Map<String,Object> map)
   	{
       
   		return "Contact";
   	}
    
    @GetMapping("/addProject")
    public String addProject(@ModelAttribute("projectDetails")Task1 t)
    {
    	return "regProject";
    }
    
    @PostMapping("/addNewProject")
    public String addNewProject( @ModelAttribute("projectDetails")Task1 t)
    {
    	
    	service.addProject(t);
    	
    	return "redirect:/projects";
    }
    
    
    @GetMapping("/deleteProject")
    public String removeProject( @ModelAttribute("projectId")Integer id)
    {
    	
    	service.deleteProjectByID(id);
    	
    	return "redirect:/projects";
    }
	
}
