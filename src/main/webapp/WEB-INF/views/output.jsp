<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Program Output</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="stylesheet" href="css/style.css">

<style>

    body{
        padding:40px;
        align-items:flex-start;
    }

    .output-container{
        width:100%;
    }

    .output-box{
        width:100%;
        min-height:300px;
        padding:25px;
        border-radius:20px;
        background:rgba(255,255,255,0.06);
        border:1px solid rgba(255,255,255,0.08);
        color:#ffffff;
        font-size:15px;
        overflow:auto;
        white-space:pre-wrap;
        word-wrap:break-word;
    }

    .output-box::-webkit-scrollbar{
        width:8px;
    }

    .output-box::-webkit-scrollbar-thumb{
        background:#38bdf8;
        border-radius:10px;
    }

    .status-success{
        color:#22c55e;
        font-weight:600;
        margin-bottom:15px;
    }

</style>

</head>

<body>

<div class="container output-container">

    <div class="glass-card">

        <h1 class="page-title">
            Program Output
        </h1>

        <p class="sub-title">
            Execution Result
        </p>

        <div class="output-box">

<pre style="margin:0; color:white;">
${output}
</pre>

        </div>

    </div>

</div>

</body>
</html>