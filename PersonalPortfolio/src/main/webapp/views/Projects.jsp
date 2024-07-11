<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
   <%@ include file="home1.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Projects</title>
</head>
<body>

  <div>
  
    <table border="1" > 
         
         <tr>
             
              <th>Project name</th>
              <th>TechStack Used</th>
              <th>Source Code</th>
              <th>Deletion</th>

              
         </tr>    
    
        <c:forEach var="project" items="${projectsList}" >
            
            
            <c:url var="removeProject" value="/deleteProject" >
             
                 <c:param name="projectId" value="${project.id}" ></c:param>
            
            </c:url>
            
            
            <tr>
                <td>${project.projectName}</td>
                <td>${project.techStackUsed}</td>
                <td> <a href="${project.githubLink}" >View Code</a> </td>
                <td> <a href="${removeProject}" >removeProject</a> </td>
            </tr>
        
        </c:forEach>
    
    </table>
  
  <a href="/PPM/addProject" >Add project</a>
  
  </div>
    <table  > 
    
    
    </table>
  
</body>
</html>