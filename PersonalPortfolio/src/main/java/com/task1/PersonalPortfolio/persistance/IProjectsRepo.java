package com.task1.PersonalPortfolio.persistance;

import org.springframework.data.repository.CrudRepository;

import com.task1.PersonalPortfolio.model.Task1;

public interface IProjectsRepo extends CrudRepository<Task1, Integer>
{

}
