<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.codearena.entity.Problem" %>

<%
Problem problem = (Problem) request.getAttribute("problem");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>Problem Details</title>

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

    .problem-header{
        margin-bottom:20px;
    }

    .problem-title{
        font-size:34px;
        font-weight:700;
        color:white;
    }

    .difficulty{
        display:inline-block;
        margin-top:10px;
        padding:6px 14px;
        border-radius:20px;
        font-weight:600;
        font-size:13px;
        background: linear-gradient(to right,#ef4444,#f97316);
    }

    .difficulty.easy{
        background: linear-gradient(to right,#22c55e,#16a34a);
    }

    .difficulty.medium{
        background: linear-gradient(to right,#f59e0b,#f97316);
    }

    .difficulty.hard{
        background: linear-gradient(to right,#ef4444,#dc2626);
    }

    .problem-card{
        width:100%;
        padding:30px;
    }

    .code-area{
        width:100%;
        min-height:350px;
        border-radius:16px;
        border:none;
        padding:20px;
        font-family: monospace;
        font-size:14px;
        background:#0f172a;
        color:#38bdf8;
        outline:none;
        resize:none;
    }

    .submit-btn{
        margin-top:20px;
        width:100%;
        height:50px;
        border:none;
        border-radius:14px;
        font-weight:600;
        background: linear-gradient(to right,#3b82f6,#06b6d4);
        color:white;
        transition:0.3s;
    }

    .submit-btn:hover{
        transform:translateY(-2px);
        box-shadow:0 8px 20px rgba(59,130,246,0.4);
    }

</style>

</head>

<body>

<div class="container problem-container">

    <div class="glass-card problem-card">

        <div class="problem-header">

            <div class="problem-title">

                <%= problem.getTitle() %>

            </div>

            <div class="difficulty
                <%= problem.getDifficulty().toLowerCase() %>">

                <%= problem.getDifficulty() %>

            </div>

        </div>

        <hr style="border-color:rgba(255,255,255,0.1);">

        <form action="submitCode" method="post">

            <input type="hidden"
                   name="problemId"
                   value="<%= problem.getId() %>">

            <label class="form-label">
                Write Your Code
            </label>

            <textarea class="code-area"
                      name="code"
                      placeholder="// Write your solution here..."></textarea>

            <button type="submit"
                    class="submit-btn">

                Submit Solution 🚀

            </button>

        </form>

    </div>

</div>

</body>

</html>