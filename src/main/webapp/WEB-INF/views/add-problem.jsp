<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Add Problem</title>

<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

    <div class="card shadow p-4">

        <h1>Add Problem</h1>

        <hr>

        <form action="addProblem" method="post">

            <label class="form-label">
                Problem Title
            </label>

            <input type="text"
                   name="title"
                   class="form-control">

            <br>

            <label class="form-label">
                Description
            </label>

            <textarea
                name="description"
                class="form-control"
                rows="6"></textarea>

            <br>

            <label class="form-label">
                Difficulty
            </label>

            <select
                name="difficulty"
                class="form-control">

                <option>Easy</option>
                <option>Medium</option>
                <option>Hard</option>

            </select>

            <br>

            <button
                type="submit"
                class="btn btn-primary">

                Add Problem

            </button>

        </form>

    </div>

</div>

</body>
</html>