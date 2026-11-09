<%-- 
    Document   : profile
    Created on : Nov 9, 2026, 6:00:27 PM
    Author     : HP
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Card - CSC584 Assignment</title>
  
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .profile-card {
            background: #ffffff;
            width: 100%;
            max-width: 600px;
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            animation: fadeIn 0.5s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .profile-header {
            background: linear-gradient(135deg, #2c3e50 0%, #3498db 100%);
            padding: 40px 20px;
            text-align: center;
            color: white;
            position: relative;
        }

        .avatar-circle {
            width: 90px;
            height: 90px;
            background: #ffffff;
            color: #3498db;
            font-size: 38px;
            font-weight: 700;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0 auto 15px auto;
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }

        .profile-header h1 {
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 5px;
        }

        .profile-header p {
            font-size: 14px;
            opacity: 0.9;
            background: rgba(255, 255, 255, 0.2);
            display: inline-block;
            padding: 4px 12px;
            border-radius: 20px;
        }

        .profile-body {
            padding: 30px;
        }

        .info-row {
            display: flex;
            margin-bottom: 18px;
            border-bottom: 1px solid #f1f5f9;
            padding-bottom: 12px;
        }

        .info-label {
            flex: 1;
            color: #64748b;
            font-weight: 500;
            font-size: 14px;
            display: flex;
            align-items: center;
        }

        .info-label i {
            color: #3498db;
            width: 25px;
            margin-right: 10px;
        }

        .info-value {
            flex: 2;
            color: #1e293b;
            font-weight: 500;
            font-size: 14px;
            word-break: break-word;
        }

        .bio-section {
            background: #f8fafc;
            padding: 20px;
            border-radius: 12px;
            margin-top: 20px;
            border-left: 4px solid #3498db;
        }

        .bio-section h3 {
            font-size: 14px;
            color: #3498db;
            margin-bottom: 8px;
            display: flex;
            align-items: center;
        }

        .bio-section h3 i {
            margin-right: 8px;
        }

        .bio-section p {
            color: #475569;
            font-size: 14px;
            line-height: 1.6;
        }

        .action-footer {
            text-align: center;
            padding: 20px 30px 30px 30px;
        }

        .btn-back {
            display: inline-block;
            padding: 10px 25px;
            background: #e2e8f0;
            color: #475569;
            text-decoration: none;
            font-size: 14px;
            font-weight: 600;
            border-radius: 8px;
            transition: background 0.2s ease;
        }

        .btn-back:hover {
            background: #cbd5e1;
            color: #1e293b;
        }
    </style>
</head>
<body>

    <div class="profile-card">
        <%
            // Retrieve parameters sent from the Servlet via request attributes
            String name = (String) request.getAttribute("name");
            String studentId = (String) request.getAttribute("studentId");
            String programme = (String) request.getAttribute("programme");
            String email = (String) request.getAttribute("email");
            String hobbies = (String) request.getAttribute("hobbies");
            String bio = (String) request.getAttribute("bio");
            
            // Fallback if the user accesses profile.jsp directly without submitting the form
            if (name == null) {
                name = "Guest User";
                studentId = "N/A";
                programme = "N/A";
                email = "N/A";
                hobbies = "N/A";
                bio = "No introduction provided.";
            }
            
            // Extract the first initial of the name for the circular avatar badge
            String initial = !name.isEmpty() ? name.substring(0, 1).toUpperCase() : "U";
        %>

        <div class="profile-header">
            <div class="avatar-circle">
                <%= initial %>
            </div>
            <h1><%= name %></h1>
            <p><%= programme %></p>
        </div>

        <div class="profile-body">
            <div class="info-row">
                <div class="info-label"><i class="fa-solid fa-id-badge"></i> Student ID</div>
                <div class="info-value"><%= studentId %></div>
            </div>

            <div class="info-row">
                <div class="info-label"><i class="fa-solid fa-envelope"></i> Email Address</div>
                <div class="info-value"><%= email %></div>
            </div>

            <div class="info-row">
                <div class="info-label"><i class="fa-solid fa-heart"></i> Hobbies</div>
                <div class="info-value"><%= hobbies %></div>
            </div>

            <div class="bio-section">
                <h3><i class="fa-solid fa-quote-left"></i> Self-Introduction</h3>
                <p><%= bio %></p>
            </div>
        </div>

        <div class="action-footer">
            <a href="index.html" class="btn-back"><i class="fa-solid fa-arrow-left"></i> Back to Form</a>
        </div>
    </div>

</body>
</html>