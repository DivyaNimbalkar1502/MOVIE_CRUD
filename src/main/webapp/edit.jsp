<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Movie</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #667eea, #764ba2);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    form {
        background: white;
        padding: 30px 40px;
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        width: 320px;
    }

    form h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    input {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
        transition: 0.3s;
    }

    input:focus {
        border-color: #667eea;
        outline: none;
        box-shadow: 0 0 5px rgba(102,126,234,0.5);
    }

    input[type="submit"] {
        background: #667eea;
        color: white;
        border: none;
        cursor: pointer;
        font-weight: bold;
        transition: 0.3s;
    }

    input[type="submit"]:hover {
        background: #5a67d8;
    }
</style>

</head>
<body>

<form action="update" method="post">
    <h2>Update Movie</h2>

    <input name="id" value="${movies.id}" readonly>
    
    <input type="text" placeholder="Enter Name" name="name" value="${movies.name}">
    
    <input type="text" placeholder="Enter Genre" name="genre" value="${movies.genre}">
    
    <input type="number" placeholder="Enter Rating" name="rating" value="${movies.rating}">
    
    <input type="submit" value="Update">
</form>

</body>
</html>