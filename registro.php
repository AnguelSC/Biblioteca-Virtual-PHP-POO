<?php 
require('includes/config.php');
require('clases/Usuario.php');
if ($_POST) {
  if(isset($_SESSION['usuario'])){
    header("Location: index.php");
  }
  $dni = $_POST['dni'];
  $nombres = $_POST['nombres'];
  $apellidos = $_POST['apellidos'];
  $clave = $_POST['clave'];

  $errors = array();
  if(isset($_POST['dni']) && strlen($_POST['dni']) != 8){
      $errors[] = 'DNI debe tener 8 digitos y ser numérico';
    }
    if(isset($_POST['dni']) && Usuarios::busca($_POST['dni']))
    {
      $errors[] = '<b>Ya existe</b> un usuario con ese dni';
    }
    if(isset($_POST['nombres']) && strlen($_POST['nombres']) <= 0){
      $errors[] = 'Ingrese nombre.';
    }
    if(isset($_POST['apellidos']) && strlen($_POST['apellidos']) <= 0){
      $errors[] = 'Ingrese apellido.';
    }
    if(isset($_POST['clave']) && strlen($_POST['clave']) <4){
      $errors[] = 'la Clave debe tener mas de 4 digitos.';
    }
    if (isset($_POST) && count($errors)==0) {
      Usuarios::crea($_POST['dni'],$_POST['nombrs'],$_POST['apellidos'],1,$_POST['clave'],3);
      if(Usuarios::valida($_POST['dni'],$_POST['clave']))
      {
        header("Location: index.php");
      }
    }
}


  
  
?>
<!DOCTYPE html>
<html>
  <head>
      <meta charset="UTF-8">
      <title>VirtualBook | Bibiloteca virtual</title>
      <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
      <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
      <link rel="stylesheet" type="text/css" href="css/datepicker/datepicker3.css">
      <link href="css/chosen.css" rel="stylesheet">
      <!-- Ionicons -->
      <link href="css/ionicons.min.css" rel="stylesheet" type="text/css" />
      <!-- Theme style -->
      <link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />
      <link href="css/morris/morris.css" rel="stylesheet" type="text/css" />
        <!-- jQuery 2.0.2 -->
      <script src="js/jquery-1.11.0.min.js"></script>
      <!-- Bootstrap -->
      <script src="js/bootstrap.min.js" type="text/javascript"></script>
      <!-- AdminLTE App -->
      <script src="js/AdminLTE/app.js" type="text/javascript"></script>

      <script src="js/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
      <script src="js/chosen.jquery.js"></script>
      <script src="js/raphael-min.js" type="text/javascript"></script>
      <script src="js/plugins/morris/morris.min.js" type="text/javascript"></script>
  </head>
  <body class="bg-login">
  <div class="form-box" id="login-box">
    <div class="header">Registrarse en el sistema</div>

      <form class="form-signin well" method="post">
        <h2 class="form-signin-heading">Ingrese usuario</h2>
        <div class="form-group">
          <label for="dni" class="col-lg-2 control-label">DNI</label>
          <div class="col-lg-12">
            <input type="text" class="form-control" id="dni" name="dni" placeholder="DNI" value="<?=($_POST)? $dni :''?>">
          </div>
        </div>
        <div class="form-group">
          <label for="nombres" class="col-lg-2 control-label">Nombres</label>
          <div class="col-lg-12">
            <input type="text" class="form-control" id="nombres" name="nombres" placeholder="Nombres" value="<?=($_POST)? $nombres :''?>">
          </div>
        </div>
        <div class="form-group">
          <label for="apellidos" class="col-lg-2 control-label">Apellidos</label>
          <div class="col-lg-12">
            <input type="text" class="form-control" id="apellidos" name="apellidos" placeholder="Apellidos" value="<?=($_POST)? $apellidos :''?>">
          </div>
        </div>
        <div class="form-group">
          <label for="clave" class="col-lg-2 control-label">Clave</label>
          <div class="col-lg-12">
            <input type="password" class="form-control" id="clave" name="clave" placeholder="Clave" value="<?=($_POST)? $clave :''?>">
          </div>
        </div>
        <button class="btn btn-lg btn-success btn-block" type="submit">Registarme</button>
        <a href="login.php" class="btn btn-lg btn-primary btn-block">Ingresar</a>
      <?php if(isset($errors)):?>
        <div class="alert alert-danger">  
          <ul>
            <?php foreach ($errors as $error): ?>
              <li><?=$error?></li>
            <?php endforeach ?>
          </ul>
        </div>
      <?php endif?>
      </form>

    </div> <!-- /container -->
  </body>
</html>
