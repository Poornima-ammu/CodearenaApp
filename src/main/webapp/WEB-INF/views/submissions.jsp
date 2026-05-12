<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<%@ page import="com.codearena.entity.Submission" %>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>My Submissions</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="stylesheet" href="css/style.css">

<style>

    body{
        padding:40px;
        align-items:flex-start;
    }

    .submission-container{
            max-width: 1200px;
            margin:auto;
        
    }

    .table-glass{
        width:100%;
        border-collapse:collapse;
        color:white;
    }

    .table-glass thead{
        background: rgba(255,255,255,0.12);
    }

    .table-glass th{
        padding:18px;
        text-align:center;
        font-weight:600;
    }

    .table-glass td{
        padding:18px;
        text-align:center;
        border-top:1px solid rgba(255,255,255,0.08);
        vertical-align:top;
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

    .status-accepted{
        background:#16a34a;
        padding:6px 14px;
        border-radius:20px;
        font-size:13px;
        font-weight:600;
        display:inline-block;
    }

    .status-wrong{
        background:#dc2626;
        padding:6px 14px;
        border-radius:20px;
        font-size:13px;
        font-weight:600;
        display:inline-block;
    }

    .code-box{
        background:#0f172a;
        color:#38bdf8;
        padding:15px;
        border-radius:14px;
        max-width:600px;
        max-height:220px;
        overflow:auto;
        font-family: monospace;
        font-size:13px;
        border:1px solid rgba(255,255,255,0.08);
        text-align:left;
        white-space:pre;
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

<div class="container submission-container">

    <div class="glass-card">

        <h1 class="page-title">
            My Submissions 🚀
        </h1>

        <p class="sub-title">
            Track your coding performance
        </p>

        <div class="table-responsive">

            <table class="table-glass">

                <thead>

                    <tr>
                        <th>ID</th>
                        <th>Problem</th>
                        <th>Status</th>
                        <th>Code</th>
                    </tr>

                </thead>

                <tbody>

                <%
                    List<Submission> submissions =
                        (List<Submission>) request.getAttribute("submissions");

                    if(submissions != null && !submissions.isEmpty()){

                        for(Submission s : submissions){
                %>

                    <tr>

                        <td>
                            #<%= s.getId() %>
                        </td>

                        <td>

                            <a class="problem-link"
                               href="problem?id=<%= s.getProblem().getId() %>">

                                <%= s.getProblem().getTitle() %>

                            </a>

                        </td>

                        <td>

                            <% if("Accepted".equalsIgnoreCase(s.getVerdict())){ %>

                                <span class="status-accepted">
                                    ✓ <%= s.getVerdict() %>
                                </span>

                            <% } else { %>

                                <span class="status-wrong">
                                    ✗ <%= s.getVerdict() %>
                                </span>

                            <% } %>

                        </td>

                        <td>

<pre class="code-box"><%= s.getCode() %></pre>

                        </td>

                    </tr>

                <%
                        }
                    }
                    else{
                %>

                    <tr>

                        <td colspan="4"
                            class="empty-msg">

                            No submissions found 😕
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