<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Task</title>
<style type="text/css">
body {
	background-size: cover;
	background-color: #ffc9b9;
}

#logo {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	float: left;
}

h1 {
	color: #182000;
}

.div1 {
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: center;
	text-align: center;
}

a, form {
	padding: 10px;
	margin-left: 25px;
	margin-right: 25px;
}

form {
	background-color: #000;
	/* border: red 2px solid; */
	padding: 10px;
	border-radius: 20px;
}

input {
	padding: 10px;
	border-radius: 20px;
}

button {
	background-color: #FEFAE0;
	padding: 10px;
	border: #283618 2px solid;
	border-radius: 20px;
	cursor: pointer;
}

#bg {
	float: right;
	margin-right: 30px;
	border-radius: 30px;
}

.d1 {
	padding: 20px;
	text-align: justify;
}

.d1>p {
	padding-right: 20px;
}
</style>

</head>
<body>
	<img id="logo"
		src="https://imgs.search.brave.com/9NTF0yQ5HMroAqEkFhL1vszTy4x8Qp8z2PH7iGl2tO4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/NDhob3Vyc2xvZ28u/Y29tLzQ4aG91cnNs/b2dvX2RhdGEvMjAx/NS8wOC8yOC8yMDE1/MDgyODA2MjYxNjI3/NDYzLmpwZw"
		alt="">
	<br>
	<div class="div1">
		<a href="create"><button>Create</button></a>
		<form action="find">
			<input type="text" placeholder="Enter To Search" name="ft">
			<button type="submit">Search</button>
		</form>
		<a href="display"><button>Display</button></a>
	</div>
	<h1>Welcome to Task Management System...</h1>


	<form action="find">
		<input placeholder="Enter Any One Details" name="ft">
		<button type="submit">Find Task</button>
	</form>
</body>
</html>