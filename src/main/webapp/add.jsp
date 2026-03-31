<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Movie</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #43cea2, #185a9d);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }

    form {
        background: #fff;
        padding: 30px 40px;
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        width: 320px;
    }

    h2 {
        margin-top: 15px;
        color: white;
        text-align: center;
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
        border-color: #43cea2;
        outline: none;
        box-shadow: 0 0 5px rgba(67,206,162,0.5);
    }

    input[type="submit"] {
        background: #43cea2;
        color: white;
        border: none;
        cursor: pointer;
        font-weight: bold;
        transition: 0.3s;
    }

    input[type="submit"]:hover {
        background: #2bbd8a;
    }
</style>

</head>
<body>

<form action="add" method="post">
    <h2>Add Movie</h2>

    <input type="text" placeholder="Enter Name" name="name">
    
    <input type="text" placeholder="Enter Genre" name="genre">
    
    <input type="number" placeholder="Enter Rating" name="rating">
    
    <input type="submit" value="Add Movie">
</form>

<h2>${msg}</h2>

</body>
</html>