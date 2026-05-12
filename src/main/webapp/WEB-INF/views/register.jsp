<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body{
        margin:0;
        padding:0;
        min-height:100vh;
        display:flex;
        justify-content:center;
        align-items:center;
        background: linear-gradient(135deg,#0f172a,#1e293b,#2563eb);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        overflow:hidden;
    }

    .glass-card{
        width:100%;
        max-width:450px;
        padding:35px;
        border-radius:20px;
        background: rgba(255,255,255,0.12);
        backdrop-filter: blur(14px);
        border:1px solid rgba(255,255,255,0.2);
        box-shadow: 0 8px 32px rgba(0,0,0,0.35);
        color:white;
        animation: fadeIn 0.8s ease-in-out;
    }

    .brand-title{
        font-size:32px;
        font-weight:700;
        text-align:center;
        margin-bottom:5px;
    }

    .sub-title{
        text-align:center;
        color:#dbeafe;
        margin-bottom:30px;
        font-size:15px;
    }

    .form-label{
        font-weight:500;
        margin-bottom:8px;
    }

    .form-control{
        height:50px;
        border-radius:12px;
        border:none;
        background: rgba(255,255,255,0.18);
        color:white;
        padding-left:15px;
    }

    .form-control:focus{
        background: rgba(255,255,255,0.25);
        box-shadow:none;
        border:1px solid #60a5fa;
        color:white;
    }

    .form-control::placeholder{
        color:#d1d5db;
    }

    .btn-register{
        height:50px;
        border:none;
        border-radius:12px;
        background: linear-gradient(to right,#3b82f6,#06b6d4);
        color:white;
        font-weight:600;
        font-size:16px;
        transition:0.3s;
    }

    .btn-register:hover{
        transform: translateY(-2px);
        box-shadow:0 8px 20px rgba(59,130,246,0.4);
    }

    .login-link{
        text-align:center;
        margin-top:20px;
        color:#dbeafe;
    }

    .login-link a{
        color:#fff;
        text-decoration:none;
        font-weight:600;
    }

    .login-link a:hover{
        text-decoration:underline;
    }

    @keyframes fadeIn{
        from{
            opacity:0;
            transform: translateY(20px);
        }
        to{
            opacity:1;
            transform: translateY(0);
        }
    }

</style>

</head>

<body>

<div class="glass-card">

    <div class="brand-title">
        Create Account
    </div>

    <div class="sub-title">
        Join us and start your journey 🚀
    </div>

    <form action="register" method="post">

        <div class="mb-3">
            <label class="form-label">Username</label>
            <input type="text"
                   name="username"
                   class="form-control"
                   placeholder="Enter username"
                   required>
        </div>

        <div class="mb-3">
            <label class="form-label">Email Address</label>
            <input type="email"
                   name="email"
                   class="form-control"
                   placeholder="Enter email"
                   required>
        </div>

        <div class="mb-4">
            <label class="form-label">Password</label>
            <input type="password"
                   name="password"
                   class="form-control"
                   placeholder="Enter password"
                   required>
        </div>

        <button type="submit" class="btn btn-register w-100">
            Register
        </button>

    </form>

    <div class="login-link">
        Already have an account?
        <a href="login.jsp">Login</a>
    </div>

</div>

</body>
</html>