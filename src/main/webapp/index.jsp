<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>Home</title>

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

        .container {
            background: white;
            padding: 40px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
            width: 350px;
        }

        h2 {
            margin-bottom: 30px;
            color: #333;
        }

        button {
            width: 150px;
            padding: 10px;
            margin: 10px;
            border: none;
            border-radius: 25px;
            font-size: 16px;
            cursor: pointer;
            color: white;
            transition: 0.3s;
        }

        .add-btn {
            background: #28a745;
        }

        .add-btn:hover {
            background: #218838;
            transform: scale(1.05);
        }

        .manage-btn {
            background: #007bff;
        }

        .manage-btn:hover {
            background: #0056b3;
            transform: scale(1.05);
        }

    </style>
</head>

<body>

<div class="container">
    <h2>Welcome 🎬</h2>

    <form action="add" method="get">
        <button type="submit" class="add-btn">Add</button>
    </form>

    <form action="view" method="get">
        <button type="submit" class="manage-btn">Manage</button>
    </form>
</div>

</body>
</html>