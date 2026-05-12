<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.codearena.entity.User" %>

<%
User user =
(User) session.getAttribute("user");

if(user == null){

    response.sendRedirect("login");
    return;
}

if(!"ADMIN".equals(user.getRole())){

    response.sendRedirect("dashboard");
    return;
}
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Admin Dashboard</title>

<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body
style="
background: linear-gradient(to right, #141e30, #243b55);
min-height: 100vh;
">
<div class="container mt-5">

    <div class="card shadow p-4">

        <h1 class="mb-4">
            Admin Dashboard 🚀
        </h1>

        <h4>
            Welcome Admin :
            <%= user.getUsername() %>
        </h4>

        <hr>

        <div class="mt-4">

            <a href="addProblem"
               class="btn btn-primary">

               Add Problem

            </a>

            <a href="problems"
               class="btn btn-success ms-2">

               View Problems

            </a>

            <a href="submissions"
               class="btn btn-warning ms-2">

               View Submissions

            </a>

            <a href="dashboard"
               class="btn btn-secondary ms-2">

               User Dashboard

            </a>

            <a href="logout"
               class="btn btn-danger ms-2">

               Logout

            </a>

        </div>

    </div>

</div>

</body>
</html>