<%@ page import="com.codearena.entity.User" %>

<%
User user = (User) request.getAttribute("user");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>Profile</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="stylesheet" href="css/style.css">

<style>

    body{
        padding:40px;
        align-items:flex-start;
    }

    .profile-card{
        text-align:center;
        padding:40px;
    }

    .avatar{
        width:120px;
        height:120px;
        border-radius:50%;
        object-fit:cover;
        border:3px solid rgba(255,255,255,0.2);
        margin-bottom:15px;
    }

    .username{
        font-size:28px;
        font-weight:700;
    }

    .email{
        color:#cbd5e1;
        margin-bottom:20px;
    }

    .stats{
        margin-top:25px;
    }

    .stat-box{
        background: rgba(255,255,255,0.08);
        border:1px solid rgba(255,255,255,0.08);
        border-radius:16px;
        padding:20px;
        transition:0.3s;
    }

    .stat-box:hover{
        transform:translateY(-4px);
        background: rgba(255,255,255,0.12);
    }

    .stat-value{
        font-size:26px;
        font-weight:700;
    }

    .stat-label{
        color:#cbd5e1;
        font-size:13px;
    }

    .btn-group-custom{
        margin-top:30px;
        display:flex;
        gap:15px;
        justify-content:center;
        flex-wrap:wrap;
    }

    .btn-custom{
        padding:12px 22px;
        border-radius:14px;
        font-weight:600;
        text-decoration:none;
        transition:0.3s;
        color:white;
        display:inline-block;
    }

    .btn-dashboard{
        background: linear-gradient(to right,#3b82f6,#06b6d4);
    }

    .btn-leaderboard{
        background: linear-gradient(to right,#22c55e,#16a34a);
    }

    .btn-custom:hover{
        transform:translateY(-2px);
        box-shadow:0 8px 20px rgba(0,0,0,0.25);
        color:white;
    }

</style>

</head>

<body>

<div class="container">

    <div class="glass-card profile-card">

        <!-- Avatar -->
        <img class="avatar"
             src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png"
             alt="profile">

        <!-- Username -->
        <div class="username">
            <%= user.getUsername() %>
        </div>

        <!-- Email -->
        <div class="email">
            <%= user.getEmail() %>
        </div>

        <hr style="border-color:rgba(255,255,255,0.1);">

        <!-- Stats -->
        <div class="row stats g-3">

            <div class="col-md-4">

                <div class="stat-box">

                    <div class="stat-value">
                        <%= user.getScore() %>
                    </div>

                    <div class="stat-label">
                        Score
                    </div>

                </div>

            </div>

            <div class="col-md-4">

                <div class="stat-box">

                    <div class="stat-value">
                        <%= user.getRole() %>
                    </div>

                    <div class="stat-label">
                        Role
                    </div>

                </div>

            </div>

            <div class="col-md-4">

                <div class="stat-box">

                    <div class="stat-value">
                        CodeArena
                    </div>

                    <div class="stat-label">
                        Platform
                    </div>

                </div>

            </div>

        </div>

        <!-- Buttons -->
        <div class="btn-group-custom">

            <a href="dashboard"
               class="btn-custom btn-dashboard">

                Dashboard

            </a>

            <a href="leaderboard"
               class="btn-custom btn-leaderboard">

                Leaderboard

            </a>

        </div>

    </div>

</div>

</body>

</html>