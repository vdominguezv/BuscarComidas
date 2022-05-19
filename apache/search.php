<?php
	$db =mysqli_connect('localhost','root','1234','BuscarComidas') or die('Fail');
?>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="estilos.css" type="text/css" media="screen">
	</head>
	<body>
		<div class="menu1">
			<a href="login.html" class="activa">Login</a>
			<a href="main.html">Main</a>
		</div>
		<br>
		<?php

		$nombre_res = $_GET['nombre']

		echo $nombre_res
?>
	</body>
</html>

