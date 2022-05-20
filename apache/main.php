<?php session_start(); ?>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="estilos.css" type="text/css" media="screen">
	</head>

	<body>
	
		<div class="menu1">
			<?php
			If (isset($_SESSION['id_usuario'])) {
				echo '<div id="activo"><p>Estás LOGUEADO</p></div>';
				echo '<a href="logout.php">Cerrar sesión</a>';
			} else {
				echo '<a href="login.html">Iniciar sesión</a>';
			};
			
			?>
			<a href="#">Main</a>
		</div>

		<form method="GET" action="search.php">
		<label for="nombre">Texto de búsqueda:</label><br>
		<input type="text" id="nombre" name="nombre"><br>
		<input type="submit"><br>
		</form>
	</body>
</html>
