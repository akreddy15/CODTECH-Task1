<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Me</title>
    <link rel="stylesheet" type="text/css" href="contactStyle.css">
    <script>
        function showMessage() {
            var successMessage = document.getElementById("success-message");
            successMessage.style.display = "block";
        }
    </script>
</head>
<body>
    <div class="contact-container">
        <h1>Contact Me</h1>
        <form>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="4" required></textarea>

            <input type="button" value="Submit" onclick="showMessage()">
        </form>
        <p id="success-message" class="success-message" style="display:none;">Message sent successfully!</p>
    </div>
</body>
</html>
