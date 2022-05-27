<?php session_start(); ?>

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
			<?php
			If (isset($_SESSION['id_usuario'])) {
				echo '<div id="activo"><p>Estás LOGUEADO</p></div>';
				echo '<a href="logout.php">Cerrar sesión</a>';
			} else {
				echo '<a href="login.html">Iniciar sesión</a>';
			};
			
			?>
			<a href="main.php">Main</a>
		</div>
		<br>
		<?php

		$ubicacion_res = $_GET['ubicacion'];

		echo $ubicacion_res;
		echo "<hr/>";

		$query = "SELECT nombre, descripcion, ubicacion, mapa FROM trestaurante WHERE ubicacion LIKE '%".$ubicacion_res."%'";
		
		$result = mysqli_query($db, $query) or die('Query error');
		$only_row = (mysqli_num_rows($result));
		if ($only_row > 0){
			while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){

			 echo "Nombre: ".$row['nombre']."<br/>";
			 echo "Descripcion: ".$row['descripcion']."<br/>";
			 echo "Ubicación: ".$row['ubicacion']."<br/>"."<br/>";
			 echo $row['mapa']."<br/>";
			
		};
		}else{
			echo "No se encontraron resultados";
		}
		echo '<a href="main.php">Volver a página principal</a>';
?>
	</body>
</html>

