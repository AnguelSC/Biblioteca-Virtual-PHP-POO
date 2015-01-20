<?php
if(!($_SESSION['usuario']['tipo'] == 1 || $_SESSION['usuario']['tipo'] == 2))
{
  echo '<script language="javascript">window.location.href = "error.php";</script>';
}
if($_POST)
{
  $casilla = $_POST['casilla'];
  foreach ($casilla as $fila) {
    mysql_query("UPDATE usuario SET Estado = 0 WHERE CodUsuario =".$fila);
  }
}
// --> includes/funciones.php
$query = UsuariosActivos();
?>
<form method="post">
<table class="table table-striped table-hover ">
  <thead>
    <tr>
    <th></th>
      <th>#</th>
      <th>DNI</th>
      <th>Nombres</th>
      <th>Apellidos</th>
    </tr>
  </thead>
  <tbody>
  <?php
while ($fila = mysql_fetch_array($query)) {
 ?>
 <tr>
    <td><input type="checkbox" name="casilla[]" value="<?=$fila['CodUsuario']?>"></td> 
    <td><?=$fila['CodUsuario']?></td>
    <td><?=$fila['DNI']?></td>
    <td><?=$fila['Nombres']?></td>
    <td><?=$fila['Apellido']?></td>
  </tr>
 <?php
}
  ?>
    
  </tbody>
</table> 
<button class="btn btn-danger">Eliminar</button>
</form>