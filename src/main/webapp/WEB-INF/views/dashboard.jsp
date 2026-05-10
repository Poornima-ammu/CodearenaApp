<%@ page import="com.codearena.entity.User" %>

<%

User user =
(User) session.getAttribute("user");

if(user == null){

    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Dashboard</title>

<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

    <div class="card shadow p-4">

        <h1 class="mb-3">
            Welcome
            <%= user.getUsername() %>
        </h1>

        <h4>
            Email :
            <%= user.getEmail() %>
        </h4>

        <h4 class="mt-3">
            Score :
            <%= user.getScore() %>
        </h4>

        <a href="logout"
           class="btn btn-danger mt-4">

            Logout

        </a>

    </div>

</div>

</body>
</html>