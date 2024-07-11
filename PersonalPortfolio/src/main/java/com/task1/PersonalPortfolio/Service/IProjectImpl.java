package com.task1.PersonalPortfolio.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.task1.PersonalPortfolio.model.Task1;
import com.task1.PersonalPortfolio.persistance.IProjectsRepo;



@Service
public class IProjectImpl implements IProject
{

	@Autowired
	private IProjectsRepo repo;
	 
	@Override
	public Task1 addProject(Task1 t)
	{
		return repo.save(t);
	}

	@Override
	public List<Task1> getAllProjects()
	{
		
		return (List<Task1>) repo.findAll();
	}

	@Override
	public void deleteProjectByID(Integer id)
	{
		repo.deleteById(id);
		
	}

}
