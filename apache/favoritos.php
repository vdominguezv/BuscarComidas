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
    
    <?php
	If (isset($_SESSION['id_usuario'])) {
        echo "<h2>Tus restaurantes favoritos:</h2>";
		$query = "SELECT trestaurante.id_restaurante, trestaurante.nombre, trestaurante.descripcion, trestaurante.ubicacion, trestaurante.mapa 
        FROM trestaurante LEFT JOIN tfavorito ON tfavorito.restaurante_id = trestaurante.id_restaurante 
        LEFT JOIN tusuario ON tfavorito.usuario_id = tusuario.id_usuario 
        WHERE tusuario.id_usuario = ".$_SESSION['id_usuario'];

        $result = mysqli_query($db, $query) or die('Query error');
        $only_row = (mysqli_num_rows($result));
        if ($only_row > 0){
            while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){

                echo "Nombre: ".$row['nombre']."<br/>";
                echo "Descripcion: ".$row['descripcion']."<br/>";
                echo "Ubicación: ".$row['ubicacion']."<br/>"."<br/>";
                echo $row['mapa']."<br/>";
                echo "<hr>";
    
    
            };
            }else{
                echo "No se encontraron resultados";
            }
			} else {
				echo '<p>No estás logueado</p>';
			};
			
?> 
    </body>
</html>
