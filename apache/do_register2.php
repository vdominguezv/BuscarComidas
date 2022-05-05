//do_register

<?php
	$db = mysqli_connect('localhost','root','1234','BuscarComidas') or die ('Fail');
?>

<?php
	session_start();
	$user_id_a_insertar = 'NULL';
	if (!empty($_SESSION['id_usuario'])){
		$user_id_a_insertar = $_SESSION['id_usuario'];
	}

	$user_posted = $_POST['name'];
	$email_posted = $_POST['email'];
	$password_posted = $_POST['password'];

	$query = "INSERT INTO tUsuario(nombre,email,contrasena) VALUES ('".$user_posted."',".$email_posted.",".$password_posted.")";

	$result = mysqli_query($db, $query) or die('Error');
	if (mysql_num_rows($result) > 0){
	$passCifrada = password_hash($password_posted, PASSWORD_DEFAULT);

}else{
	echo "<p>Usuario ya existe</p>"
}
mysqli_close($db);
?>
