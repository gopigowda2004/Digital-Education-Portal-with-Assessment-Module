<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Task</title>
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

.d1>form{
	width: 500px;
	height: 500px;
	background-color: transparent;
	border: #000 4px solid; 
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
	<div class="div1 d1">
	<form action="update">
		<br><label for="">Id:&ensp;</label><input type="text" placeholder="Enter Task Name" name="id" value="${t.getId()}" readonly><br><br>
	    <label for="">Task Name:&ensp;</label><input type="text" placeholder="Enter Task Name" name="tname" value="${t.getTname()}"><br><br>
	    <label for="">User Name:&ensp;</label><input type="text" placeholder="Enter User Name" name="uname" value="${t.getUname()}"><br><br>
	    <label for="">Email:&ensp;</label><input type="text" placeholder="Enter Email" name="email" value="${t.getEmail()}"><br><br>
	    <label for="">Password:&ensp;</label><input type="text" placeholder="Enter Password" name="pwd" value="${t.getPwd()}"><br><br>
	    <label for="">Assign To:&ensp;</label><input type="text" placeholder="Enter Assign Name" name="tasn" value="${t.getTasn()}"><br><br>
	    <label for="">Deadline:&ensp;</label><input type="text" placeholder="Enter Deadline in No of Days" name="dl" value="${t.getDl()}"><br><br>
        <button type="submit">Update</button>
    </form>
    </div>
</body>
</html>