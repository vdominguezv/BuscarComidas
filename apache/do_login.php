//login


<?php
$db = mysqli_connect('localhost', 'root', '1234', 'BuscarComidas') or die('Fail');

$user_posted = $_POST['nombre'];
$password_posted = $_POST['password'];

$query = "SELECT id_usuario, contrasena FROM tUsuario WHERE nombre = '".$user_posted."'";
$result = mysqli_query($db, $query) or die('Query error');
if (mysqli_num_rows($result) > 0){
	$only_row = mysqli_fetch_array($result);
	if ($only_row[1] == $password_posted){
		echo '<p>Autentificación satisfactoria</p>';
	}else{
		echo '<p>Contraseña incorrecta</p>';
	}
}else{
	echo '<p>Usuario no encontrado con ese nombre</p>';
}

?>

