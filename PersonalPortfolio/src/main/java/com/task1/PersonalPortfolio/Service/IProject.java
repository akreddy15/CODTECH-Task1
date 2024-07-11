package com.task1.PersonalPortfolio.Service;

import com.task1.PersonalPortfolio.model.Task1;
import java.util.*;

public interface IProject
{
    public Task1 addProject(Task1 t);
    
    public List<Task1> getAllProjects();
    
    public void deleteProjectByID(Integer id);
}
