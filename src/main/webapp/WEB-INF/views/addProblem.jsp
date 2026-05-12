<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>Add Problem</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="stylesheet" href="css/style.css">

</head>

<body>

<div class="glass-card"
     style="max-width:700px;">

    <h1 class="page-title">
        Add Problem 🧠
    </h1>

    <p class="sub-title">
        Create coding challenges for users
    </p>

    <form action="addProblem" method="post">

        <div class="mb-3">

            <label class="form-label">
                Title
            </label>

            <input type="text"
                   name="title"
                   class="form-control"
                   placeholder="Enter problem title"
                   required>

        </div>

        <div class="mb-3">

            <label class="form-label">
                Difficulty
            </label>

            <select name="difficulty"
                    class="form-control">

                <option>Easy</option>
                <option>Medium</option>
                <option>Hard</option>

            </select>

        </div>

        <div class="mb-3">

            <label class="form-label">
                Description
            </label>

            <textarea name="description"
                      class="form-control"
                      rows="5"
                      placeholder="Enter description"></textarea>

        </div>

        <div class="mb-3">

            <label class="form-label">
                Sample Input
            </label>

            <textarea name="sampleInput"
                      class="form-control"
                      rows="3"></textarea>

        </div>

        <div class="mb-3">

            <label class="form-label">
                Sample Output
            </label>

            <textarea name="sampleOutput"
                      class="form-control"
                      rows="3"></textarea>

        </div>

        <div class="mb-4">

            <label class="form-label">
                Expected Output
            </label>

            <textarea name="expectedOutput"
                      class="form-control"
                      rows="3"></textarea>

        </div>

        <button type="submit"
                class="btn btn-theme w-100">

            Add Problem

        </button>

    </form>

</div>

</body>
</html>