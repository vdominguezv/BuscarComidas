<?php session_start(); ?>
<?php
$db = mysqli_connect('localhost', 'root', '1234', 'BuscarComidas') or die('Fail');

$user_posted = $_POST['nombre'];
$password_posted = $_POST['password'];

$query = "SELECT id_usuario, contrasena FROM tusuario WHERE nombre = '".$user_posted."'";
$result = mysqli_query($db, $query) or die('Query error');

	if (mysqli_num_rows($result) > 0){
		$only_row = mysqli_fetch_array($result);
		if (password_verify($password_posted, $only_row[1])){
			echo '<p>Autentificación satisfactoria</p>';
			$_SESSION["id_usuario"] = $only_row['id_usuario'];
			header('Location: main.php');
		}else{
			echo '<p>Contraseña incorrecta</p>';
			echo '<a href="login.html">Regresar</a>';
		}
	}else{
		echo '<p>Usuario no encontrado con ese nombre</p>';
		echo '<a href="login.html">Regresar</a>';
};
?>

