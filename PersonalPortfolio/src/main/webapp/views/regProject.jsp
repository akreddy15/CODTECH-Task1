<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create New Project</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
 
    <div class="project-container">
        <h1>Create New Project</h1>
       <form:form action="addNewProject" modelAttribute="projectDetails">
      <table>
          <form:hidden path="id"/>
          <tr>
          <th>Project Name</th>
          <td><form:input path="projectName" /></td>
          </tr>
              <tr>
          <th>TechStack Used</th>
          <td><form:input path="techStackUsed" /></td>
          </tr>
              <tr>
          <th>GitHub Link</th>
          <td><form:input path="githubLink" /></td>
          </tr>
          
                <tr>
          
          <td><input type="submit" value="Register"/></td>
          </tr>
      </table>
  </form:form>
       
    </div>
</body>
</html>
