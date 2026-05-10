<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<div class="card p-4 shadow">
<h2 class="mb-4">Add Problem</h2>
<form action="addProblem" method="post">
<div class="mb-3">
<label>Title</label>
<input type="text" name="title" class="form-control" required>
</div>

<div class="mb-3">
<label>Diffculty</label>
<select name="difficulty" class="form-control">
<option>Easy</option>
<option>Medium</option>
<option>Hard</option>
</select>
</div>

<div class="mb-3">
<label>Description</label>
<textarea name="description" class="form-control" rows="5"></textarea>
</div>

<div class="mb-3">
<label>Sample Input</label>
<textarea name="sampleInput" class="form-control" ></textarea>
</div>

<div class="mb-3">
<label>Sample Output</label>
<textarea name="sampleOut" class="form-control" ></textarea>
</div>
<div class="mb-3">
<label>Expected Output</label>
<textarea name="ExpectedOutput" class="form-control" ></textarea>
</div>



<button type="submit">Add Problem</button>

</form>
</div>
</div>


</body>
</html>