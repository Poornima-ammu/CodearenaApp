<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.codearena.entity.Problem" %>

<%
List<Problem> problems =
(List<Problem>) request.getAttribute("problems");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Problems</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="stylesheet" href="css/style.css">

<style>

    body{
        padding:40px;
        align-items:flex-start;
    }

    .problem-container{
        width:100%;
    }

    .table-glass{
        width:100%;
        color:white;
        border-collapse:collapse;
    }

    .table-glass thead{
        background: rgba(255,255,255,0.12);
    }

    .table-glass th{
        padding:18px;
        text-align:center;
    }

    .table-glass td{
        padding:18px;
        text-align:center;
        border-top:1px solid rgba(255,255,255,0.08);
        vertical-align:middle;
    }

    .table-glass tbody tr:hover{
        background: rgba(255,255,255,0.06);
        transition:0.3s;
    }

    .problem-link{
        color:#38bdf8;
        text-decoration:none;
        font-weight:600;
    }

    .problem-link:hover{
        text-decoration:underline;
    }

    .difficulty{
        padding:6px 14px;
        border-radius:20px;
        font-size:13px;
        font-weight:600;
        display:inline-block;
    }

    .easy{
        background:#16a34a;
    }

    .medium{
        background:#f59e0b;
    }

    .hard{
        background:#dc2626;
    }

    .solve-btn{
        background: linear-gradient(to right,#22c55e,#16a34a);
        color:white;
        border:none;
        padding:8px 16px;
        border-radius:12px;
        font-weight:600;
        transition:0.3s;
        text-decoration:none;
        display:inline-block;
    }

    .solve-btn:hover{
        transform:translateY(-2px);
        box-shadow:0 8px 20px rgba(34,197,94,0.3);
        color:white;
    }

    .empty-msg{
        text-align:center;
        padding:30px;
        color:#dbeafe;
        font-size:18px;
    }

</style>

</head>

<body>

<div class="container problem-container">

    <div class="glass-card">

        <h1 class="page-title">
            Problem List
        </h1>

        <p class="sub-title">
            Choose a problem and start coding
        </p>

        <div class="table-responsive">

            <table class="table-glass">

                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Difficulty</th>
                        <th>Action</th>
                    </tr>
                </thead>

                <tbody>

                <%
                if(problems != null && !problems.isEmpty()){

                    for(Problem p : problems){
                %>

                    <tr>

                        <td>#<%= p.getId() %></td>

                        <td>
                            <a class="problem-link"
                               href="problem?id=<%= p.getId() %>">
                                <%= p.getTitle() %>
                            </a>
                        </td>

                        <td>
                            <span class="difficulty <%= p.getDifficulty().toLowerCase() %>">
                                <%= p.getDifficulty() %>
                            </span>
                        </td>

                        <td>
                            <a href="solveProblem?id=<%= p.getId() %>"
                               class="solve-btn">
                                Solve
                            </a>
                        </td>

                    </tr>

                <%
                    }
                } else {
                %>

                    <tr>
                        <td colspan="4" class="empty-msg">
                            No Problems Found
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