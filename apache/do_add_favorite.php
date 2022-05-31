<?php session_start(); ?>
<?php
$db = mysqli_connect('localhost', 'root','1234','BuscarComidas') or die('Fail');

$id_usuario = $_SESSION['id_usuario'];
$id_restaurante = $_POST['id_restaurante'];

echo $id_restaurante;

$query = "INSERT INTO tfavorito (restaurante_id,usuario_id) VALUES (".$id_restaurante.",".$id_usuario.")";
echo $query;
$result = mysqli_query($db,$query) or die('Query Error');


echo "<p>Favorito añadido</p>";
echo "<a href='main.php'>Regresar</a>";

?>
