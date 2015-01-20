<?php 
require('includes/config.php');
require('clases/Usuario.php');
//Valida si el usuario esta conectado
  if(isset($_POST['dni']))
    if(Usuarios::valida($_POST['dni'],$_POST['clave']))
    {
      header("Location: index.php");
    }else{
      $error = true;
    }
?>
<!DOCTYPE html>
<html class="bg-login">
    <head>
        <meta charset="UTF-8">
        <title>Bienvenido</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />
    </head>
    <body class="bg-login">

        <div class="form-box" id="login-box">
            <div class="header">Ingresar usuario</div>
            <form method="post">
                <div class="body bg-gray">
                    <div class="form-group">
                        <input type="text" name="dni" class="form-control" placeholder="Ingrese su DNI"/>
                    </div>
                    <div class="form-group">
                        <input type="password" name="clave" class="form-control" placeholder="Ingrese su Clave"/>
                    </div>          
                </div>
                <div class="footer">   
                <p>
                <b>Administrador</b><br>
                    User: 12345678<br>
                    Pass: admin<br>
                <b>Cliente</b><br>
                    User: 11111111<br>
                    Pass: admin
                </p>
                    <?php if(isset($error) && $error == true):?>
                        <div class="alert alert-danger"><strong>Error:</strong> Verifique los datos</div>
                      <?php endif?>             
                    <button type="submit" class="btn bg-olive btn-block">Ingresar</button>  
                    <a href="registro.php" class="btn btn-info btn-block">Registrarme</a>
                </div>
            </form>
        </div>

        <script src="js/jquery-1.11.0.min.js"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>

    </body>
</html>