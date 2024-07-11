package com.task1.PersonalPortfolio.model;




import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Task1
{
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	
    private String projectName;
    
    private String techStackUsed;
    
    private String githubLink;

	public Task1()
	{
		super();
	}

	public Task1( String projectName, String techStackUsed, String githubLink)
	{
		super();
	
		this.projectName = projectName;
		this.techStackUsed = techStackUsed;
		this.githubLink = githubLink;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getTechStackUsed() {
		return techStackUsed;
	}

	public void setTechStackUsed(String techStackUsed) {
		this.techStackUsed = techStackUsed;
	}

	public String getGithubLink() {
		return githubLink;
	}

	public void setGithubLink(String githubLink) {
		this.githubLink = githubLink;
	}
    
    
    
}
