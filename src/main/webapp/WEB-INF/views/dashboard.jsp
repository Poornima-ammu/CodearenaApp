<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.codearena.entity.User" %>

<%
User user = (User) session.getAttribute("user");

if(user == null){
    response.sendRedirect("login");
    return;
}
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="stylesheet" href="css/style.css">

<style>

    body{
        padding:40px;
        align-items:flex-start;
    }

    .dashboard-container{
        width:100%;
    }

    .welcome-text{
        font-size:38px;
        font-weight:700;
        margin-bottom:8px;
    }

    .highlight{
        color:#38bdf8;
    }

    .sub-title{
        color:#cbd5e1;
        margin-bottom:30px;
    }

    .info-card{
        background: rgba(255,255,255,0.08);
        border:1px solid rgba(255,255,255,0.08);
        border-radius:18px;
        padding:25px;
        text-align:center;
        transition:0.3s;
    }

    .info-card:hover{
        transform:translateY(-4px);
        background: rgba(255,255,255,0.12);
    }

    .info-title{
        color:#cbd5e1;
        font-size:14px;
        margin-bottom:10px;
    }

    .info-value{
        font-size:24px;
        font-weight:700;
    }

    .dashboard-actions{
        margin-top:35px;
    }

    .action-btn{
        height:55px;
        border:none;
        border-radius:16px;
        font-weight:600;
        font-size:16px;
        transition:0.3s;
        display:flex;
        align-items:center;
        justify-content:center;
        text-decoration:none;
        color:white;
    }

    .btn-problems{
        background: linear-gradient(to right,#3b82f6,#06b6d4);
    }

    .btn-submissions{
        background: linear-gradient(to right,#10b981,#14b8a6);
    }

    .btn-profile{
        background: linear-gradient(to right,#8b5cf6,#6366f1);
    }

    .action-btn:hover{
        transform:translateY(-3px);
        box-shadow:0 10px 20px rgba(0,0,0,0.25);
        color:white;
    }

</style>

</head>

<body>

<div class="container dashboard-container">

    <div class="glass-card">

        <!-- WELCOME -->
        <div class="welcome-text">

            Welcome back,
            <span class="highlight">
                <%= user.getUsername() %>
            </span>
            👋

        </div>

        <div class="sub-title">
            Ready to solve some coding problems today?
        </div>

        <!-- STATS -->
        <div class="row g-4">

            <div class="col-md-6">

                <div class="info-card">

                    <div class="info-title">Email</div>

                    <div class="info-value"
                         style="font-size:18px; word-break:break-word;">

                        <%= user.getEmail() %>

                    </div>

                </div>

            </div>

            <div class="col-md-6">

                <div class="info-card">

                    <div class="info-title">Score</div>

                    <div class="info-value">

                        <%= user.getScore() %> 🏆

                    </div>

                </div>

            </div>

        </div>

        <!-- ACTIONS -->
        <div class="row dashboard-actions g-3">

            <div class="col-md-4">

                <a href="problems"
                   class="action-btn btn-problems">

                    Problems

                </a>

            </div>

            <div class="col-md-4">

                <a href="submissions"
                   class="action-btn btn-submissions">

                    Submissions

                </a>

            </div>

            <div class="col-md-4">

                <a href="profile"
                   class="action-btn btn-profile">

                    Profile

                </a>

            </div>

        </div>

    </div>

</div>

</body>

</html>