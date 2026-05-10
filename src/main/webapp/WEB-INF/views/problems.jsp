<%@ page import="java.util.List" %>
<%@ page import="com.codearena.entity.Problem" %>

<%
	List<Problem>problems=(List<Problem>)request.getAttribute("problems");
	%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Problems</title>
<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
<div class="card shadow p-4"> 
 <h2 class="mb-4">Problem List</h2>
 
 <table class="table table-bordered">
 <thead>
 <tr>
 <th>ID</th>
 <th>Title</th>
 <th>Difficulty</th>
 </tr>
 </thead>
 <tbody>
 <%
 if(problems != null && !problems.isEmpty()) {

   for(Problem p:problems){
   %>
   <tr>
   		<td>
   		<%= p.getId() %>
 		</td>
 		
 		<td><%= p.getTitle() %>
 		</td>
 		
 		<td><%= p.getDifficulty() %>
 		</td>
 		</tr>
 		<% 
  				 }
		 }
 else{
 		%>
 		<tr>
 		<td colspan="3" class="text-center text-danger">No Problems Found</td>
 		
 		</tr>
 		<%
 }
 		%>
 		
 
 </tbody>
 
 </table>
 </div>

</div>

</body>
</html>