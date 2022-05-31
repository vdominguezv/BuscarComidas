
<?php


	$db = mysqli_connect('localhost','root','1234','BuscarComidas') or die ('Fail');



	$user_posted = $_POST['name'];
	$email_posted = $_POST['email'];
	$password_posted = $_POST['password'];
	$rpassword_posted = $_POST['rpassword'];

	$passhas = password_hash($password_posted, PASSWORD_DEFAULT);
	$total = ("SELECT * FROM tusuario WHERE nombre = '".$user_posted."'");
	$result = mysqli_query($db, $total) or die('error');
	if (mysqli_num_rows($result) > 0){
	echo "<p>Este usuario ya existe</p>";
}elseif ($password_posted != $rpassword_posted){
	echo "<p>Las contraseñas deben ser iguales</p>";
}else{
	$query = "INSERT INTO tusuario(nombre,email,contrasena) VALUES ('".$user_posted."','".$email_posted."','".$passhas."')";

	mysqli_query($db, $query) or die('Error');
	
	echo "<p>Usuario creado</p>";
	
	header('Location: login.html');
}


mysqli_close($db);

?>
