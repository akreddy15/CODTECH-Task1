<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
      <meta charset="UTF-8">
    <title>Personal Portfolio</title>
    <link rel="stylesheet" href="style.css">
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            var pathname = window.location.pathname.replace(/\/$/, ""); // Remove trailing slash if any
            var navLinks = document.querySelectorAll(".topnav a");

            navLinks.forEach(function(link) {
                link.classList.remove("active"); // Remove active class from all links
                var linkPath = link.getAttribute("href").replace(/\/$/, ""); // Remove trailing slash if any
                if (linkPath === pathname) {
                    link.classList.add("active"); // Add active class to the matching link
                }
            });
        });
    </script>
</head>
<body>
   
  

    <div class="topnav">
        <a class="active" href="/PPM/home">Home</a>
        <a href="/PPM/about">About</a>
        <a href="/PPM/services">Services</a>
        <a href="/PPM/projects">Projects</a>
        <a href="/PPM/contact">Contact</a>
    </div>
    
    
</body>
</html>
