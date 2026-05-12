<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>Login</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="stylesheet" href="css/style.css">
		<style>
		.glass-card{
    width: 100%;
    max-width: 450px;

    padding: 40px;

    border-radius: 20px;

    background: linear-gradient(135deg,#0f172a,#1e293b,#2563eb);

    backdrop-filter: blur(14px);

    box-shadow: 0 8px 30px rgba(0,0,0,0.3);
    
}
body{
    margin: 0;
    min-height: 100vh;

    display: flex;
    justify-content: center;
    align-items: center;

    background: linear-gradient(
        135deg,
        #0f172a,
        #1d4ed8
    );

    font-family: sans-serif;
}


      </style>

</head>

<body>

<div class="glass-card">

    <h1 class="page-title">
        Welcome Back 👋
    </h1>

    <p class="sub-title">
        Login to continue coding
    </p>

    <form action="login" method="post">

        <div class="mb-3">

            <label class="form-label">
                Email
            </label>

            <input type="email"
                   name="email"
                   class="form-control"
                   placeholder="Enter email"
                   required>

        </div>

        <div class="mb-4">

            <label class="form-label">
                Password
            </label>

            <input type="password"
                   name="password"
                   class="form-control"
                   placeholder="Enter password"
                   required>

        </div>

        <button type="submit"
                class="btn btn-theme w-100">

            Login

        </button>

    </form>

    <div class="bottom-link">

        Don't have an account?

        <a href="/WEB-INF/views/register.jsp">
            Register
        </a>

    </div>

</div>

</body>
</html>