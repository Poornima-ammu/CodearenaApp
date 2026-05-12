<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<%@ page import="com.codearena.entity.Problem" %>

<%
Problem problem = (Problem) request.getAttribute("problem");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Solve Problem</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>

    body{
        margin:0;
        padding:20px;
        min-height:100vh;
        background:linear-gradient(135deg,#07132b,#2563eb);
        color:white;
        font-family:Arial,sans-serif;
    }

    .main-container{
        display:flex;
        gap:24px;
        height:95vh;
    }

    .left-panel{
        flex:1;
        background:rgba(255,255,255,0.08);
        border-radius:22px;
        padding:25px;
        overflow-y:auto;
        border:1px solid rgba(255,255,255,0.08);
    }

    .right-panel{
        flex:1;
        background:rgba(255,255,255,0.08);
        border-radius:22px;
        padding:25px;
        display:flex;
        flex-direction:column;
        border:1px solid rgba(255,255,255,0.08);
    }

    .problem-title{
        font-size:36px;
        font-weight:800;
        margin-bottom:10px;
    }

    .badge-difficulty{
        padding:6px 14px;
        border-radius:999px;
        font-size:12px;
        font-weight:700;
        display:inline-block;
        margin-bottom:20px;
        text-transform:uppercase;
        letter-spacing:1px;
    }

    .easy{ background:#16a34a; }
    .medium{ background:#f59e0b; }
    .hard{ background:#dc2626; }

    .section-title{
        font-size:16px;
        font-weight:600;
        margin-top:18px;
        margin-bottom:8px;
        color:#cbd5e1;
    }

    .box{
        background:rgba(255,255,255,0.06);
        padding:16px;
        border-radius:14px;
        border:1px solid rgba(255,255,255,0.08);
        white-space:pre-wrap;
        line-height:1.6;
        font-size:14px;
    }

    .language-select{
        width:160px;
        padding:10px;
        border:none;
        border-radius:10px;
        margin-bottom:12px;
        background:#1e293b;
        color:white;
    }

    .editor{
        width:100%;
        flex:1;
        background:#0f172a;
        color:#38bdf8;
        border:none;
        border-radius:16px;
        padding:18px;
        font-family:monospace;
        font-size:14px;
        outline:none;
        resize:none;
    }

    .button-group{
        display:flex;
        gap:12px;
        margin-top:16px;
    }

    .run-btn,
    .submit-btn{
        flex:1;
        height:48px;
        border:none;
        border-radius:14px;
        font-weight:600;
        color:white;
        transition:0.25s;
        cursor:pointer;
    }

    .run-btn{
        background:linear-gradient(to right,#f59e0b,#d97706);
    }

    .submit-btn{
        background:linear-gradient(to right,#3b82f6,#06b6d4);
    }

    .run-btn:hover,
    .submit-btn:hover{
        transform:translateY(-2px);
        box-shadow:0 8px 18px rgba(0,0,0,0.25);
    }

</style>

</head>

<body>

<div class="main-container">

    <!-- LEFT PANEL -->
    <div class="left-panel">

        <div class="problem-title">
            <%= problem.getTitle() %>
        </div>

        <span class="badge-difficulty <%= problem.getDifficulty().toLowerCase() %>">
            <%= problem.getDifficulty() %>
        </span>

        <div class="section-title">Description</div>
        <div class="box">
            <%= problem.getDescription() %>
        </div>

        <div class="section-title">Sample Input</div>
        <div class="box">
            <%= problem.getSampleInput() %>
        </div>

        <div class="section-title">Sample Output</div>
        <div class="box">
            <%= problem.getSampleOutput() %>
        </div>

    </div>

    <!-- RIGHT PANEL -->
    <div class="right-panel">

        <form method="post"
              style="display:flex;flex-direction:column;height:100%;">

            <input type="hidden"
                   name="problemId"
                   value="<%= problem.getId() %>">

            <select name="language" class="language-select">
                <option>Java</option>
                <option>Python</option>
                <option>C++</option>
            </select>

            <textarea class="editor"
                      name="code">
public class Main {

    public static void main(String[] args) {

        System.out.println("Hello CodeArena");

    }

}
            </textarea>

            <div class="button-group">

                <!-- RUN BUTTON -->
                <button type="submit"
                        formaction="runCode"
                        class="run-btn">

                    Run Code

                </button>

                <!-- SUBMIT BUTTON -->
                <button type="submit"
                        formaction="submitCode"
                        class="submit-btn">

                    Submit

                </button>

            </div>

        </form>

    </div>

</div>

</body>
</html>