<%@page import="Movie.entity.Movie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie List</title>

<style>
    body {
        margin: 0;
        padding: 20px;
        font-family: 'Segoe UI', sans-serif;
        background: linear-gradient(to right, #667eea, #764ba2);
    }

    h2 {
        text-align: center;
        color: white;
        margin-bottom: 20px;
    }

    table {
        width: 80%;
        margin: auto;
        border-collapse: collapse;
        background: white;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
    }

    th {
        background: #667eea;
        color: white;
        padding: 12px;
        text-transform: uppercase;
        font-size: 14px;
    }

    td {
        padding: 12px;
        text-align: center;
        border-bottom: 1px solid #eee;
    }

    tr:hover {
        background: #f5f7ff;
    }

    button {
        padding: 6px 12px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 13px;
        transition: 0.3s;
    }

    .edit-btn {
        background: #4CAF50;
        color: white;
    }

    .edit-btn:hover {
        background: #3e8e41;
    }

    .delete-btn {
        background: #f44336;
        color: white;
    }

    .delete-btn:hover {
        background: #d32f2f;
    }

    .add-btn {
        display: block;
        width: 150px;
        margin: 20px auto;
        padding: 10px;
        background: #fff;
        color: #667eea;
        border-radius: 8px;
        text-align: center;
        font-weight: bold;
        text-decoration: none;
        transition: 0.3s;
    }

    .add-btn:hover {
        background: #f0f0f0;
    }
</style>

</head>
<body>

<h2>🎬 Movie List</h2>

<a href="addPage" class="add-btn">+ Add Movie</a>

<table>
<tr>
<th>ID</th>
<th>Name</th>
<th>Genre</th>
<th>Rating</th>
<th>Edit</th>
<th>Delete</th>
</tr>

<% 
List<Movie> movie = (List<Movie>) request.getAttribute("movies");
for(Movie movies : movie){
%>

<tr>
<td><%= movies.getId() %></td>
<td><%= movies.getName() %></td>
<td><%= movies.getGenre() %></td>
<td><%= movies.getRating() %></td>

<td>
    <a href="edit?id=<%= movies.getId() %>">
        <button class="edit-btn">Edit</button>
    </a>
</td>

<td>
    <a href="delete?id=<%= movies.getId() %>" onclick="return confirm('Are you sure?')">
        <button class="delete-btn">Delete</button>
    </a>
</td>
</tr>

<% } %>

</table>

<script>
if("${msg}" !== ""){
    alert("${msg}");
}
</script>

</body>
</html>