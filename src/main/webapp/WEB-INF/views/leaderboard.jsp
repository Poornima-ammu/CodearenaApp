<%@ page import="java.util.List" %>
<%@ page import="com.codearena.entity.User" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
List<User> users =
(List<User>) request.getAttribute("users");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Leaderboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="stylesheet" href="css/style.css">

<style>

    body{
        padding:40px;
        align-items:flex-start;
    }

    .leaderboard-container{
        width:100%;
    }

    .leaderboard-table{
        width:100%;
        border-collapse:collapse;
        color:white;
    }

    .leaderboard-table thead{
        background: rgba(255,255,255,0.12);
    }

    .leaderboard-table th{
        padding:18px;
        font-weight:600;
        text-align:center;
    }

    .leaderboard-table td{
        padding:18px;
        text-align:center;
        border-top:1px solid rgba(255,255,255,0.08);
        vertical-align:middle;
    }

    .leaderboard-table tbody tr{
        transition:0.3s;
    }

    .leaderboard-table tbody tr:hover{
        background: rgba(255,255,255,0.06);
        transform:scale(1.01);
    }

    .rank-badge{
        width:40px;
        height:40px;
        border-radius:50%;
        display:flex;
        align-items:center;
        justify-content:center;
        margin:auto;
        font-weight:700;
        color:white;
    }

    .gold{
        background: linear-gradient(to right,#facc15,#eab308);
    }

    .silver{
        background: linear-gradient(to right,#d1d5db,#9ca3af);
    }

    .bronze{
        background: linear-gradient(to right,#fb923c,#ea580c);
    }

    .normal-rank{
        background: rgba(255,255,255,0.12);
    }

    .score-badge{
        background: linear-gradient(to right,#3b82f6,#06b6d4);
        padding:8px 16px;
        border-radius:20px;
        font-weight:600;
        display:inline-block;
    }

    .username{
        font-weight:600;
        font-size:16px;
    }

    .empty-msg{
        text-align:center;
        padding:40px;
        color:#dbeafe;
        font-size:18px;
    }

</style>

</head>

<body>

<div class="container leaderboard-container">

    <div class="glass-card">

        <h1 class="page-title">
            🏆 Leaderboard
        </h1>

        <p class="sub-title">
            Top coders dominating the platform
        </p>

        <div class="table-responsive">

            <table class="leaderboard-table">

                <thead>

                    <tr>
                        <th>Rank</th>
                        <th>Username</th>
                        <th>Score</th>
                    </tr>

                </thead>

                <tbody>

                <%
                    if(users != null && !users.isEmpty()){

                        int rank = 1;

                        for(User u : users){
                %>

                    <tr>

                        <td>

                            <%
                                if(rank == 1){
                            %>

                                <div class="rank-badge gold">
                                    🥇
                                </div>

                            <%
                                }
                                else if(rank == 2){
                            %>

                                <div class="rank-badge silver">
                                    🥈
                                </div>

                            <%
                                }
                                else if(rank == 3){
                            %>

                                <div class="rank-badge bronze">
                                    🥉
                                </div>

                            <%
                                }
                                else{
                            %>

                                <div class="rank-badge normal-rank">
                                    <%= rank %>
                                </div>

                            <%
                                }
                            %>

                        </td>

                        <td>

                            <div class="username">
                                <%= u.getUsername() %>
                            </div>

                        </td>

                        <td>

                            <span class="score-badge">

                                <%= u.getScore() %> pts

                            </span>

                        </td>

                    </tr>

                <%
                        rank++;
                        }
                    }
                    else{
                %>

                    <tr>

                        <td colspan="3"
                            class="empty-msg">

                            No leaderboard data available 😕

                        </td>

                    </tr>

                <%
                    }
                %>

                </tbody>

            </table>

        </div>

    </div>

</div>

</body>
</html>