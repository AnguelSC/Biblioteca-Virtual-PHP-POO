<?php
require('includes/config.php');
require('includes/funciones.php');
require_once ('clases/Usuario.php');
usuarioConectado();
$usuario = new Usuario($_SESSION['usuario']['CodUsuario']);
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
    <body class="skin-blue">
        <!-- header logo: style can be found in header.less -->
        <header class="header">
            <a href="index.php" class="logo">
                <!-- Add the class icon to your logo image or logo icon to add the margining -->
                VirtualBook
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="navbar-right">
                    <ul class="nav navbar-nav">
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="glyphicon glyphicon-user"></i>
                                <span><?=$usuario->getNombre()?> <?=$usuario->getApellido()?> <i class="caret"></i></span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                
                                
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-right">
                                        <a href="salir.php" class="btn btn-default btn-flat">Salir del sistema</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="left-side sidebar-offcanvas">                
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- search form -->
                    
                    <?php
                        if($_SESSION['usuario']['tipo'] == 1 || $_SESSION['usuario']['tipo'] == 2)
                        {?>
                    <form action="index.php?menu=usuario_buscar" method="post" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="dni" class="form-control" placeholder="Buscar..."/>
                            <span class="input-group-btn">
                                <button type='submit' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </form>
                    <?php
                            include_once('includes/menu_admin.php');
                        }elseif ($_SESSION['usuario']['tipo'] == 3) {
                            include_once('includes/menu_cliente.php');
                        }
                    ?>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Right side column. Contains the navbar and content of the page -->
            <aside class="right-side">                
                <?php
                    if (!isset($_GET['menu'])) {
                        if(!($_SESSION['usuario']['tipo'] == 1 || $_SESSION['usuario']['tipo'] == 2))
                        {
                            include("paginas/index_cliente.php");
                        }else{
                            include("paginas/index.php");
                        }
                        
                    } else {
                        include("paginas/".$_GET['menu'].".php");
                    }
                ?>  
            </aside><!-- /.right-side -->
        </div><!-- ./wrapper -->

        <script type="text/javascript">
            $('#fecha').datepicker({
                format: "dd/mm/yyyy"
            });
          $('.chosen').chosen({
            no_results_text:"No se encontraron resultados",
            placeholder_text_multiple:"Seleccione alternativas",
          });
        </script>
        <script type="text/javascript">
            $('#botonAgregarAutor').on('click',function(){
                $.ajax({
                    method:'POST',
                    url:'paginas/json_autor.php',
                    data:{
                        nombre:$('#autorAgrega').val(),
                        },
                    success:function(response){
                        $('#estado_autor').html('');
                        if(response == false){
                            $('#estado_autor').html('<div class="alert alert-danger">Autor ya existe</div>');
                        }else
                        {
                            
                            $('#listaAutores').append(response);
                            $("#listaAutores").trigger("chosen:updated");
                            $('#estado_autor').html('<div class="alert alert-success">Autor agregado, cierre la ventana y verifique en las opciones.</div>');
                            $('#autorAgrega').val('');
                        }
                    }
                });
            });
            $('#botonAgregareditorial').on('click',function(){
                $.ajax({
                    method:'POST',
                    url:'paginas/json_editorial.php',
                    data:{
                        nombre:$('#editorialAgrega').val(),
                        },
                    success:function(response){
                        $('#estado_editorial').html('');
                        if(response == 'false'){
                            $('#estado_editorial').html('<div class="alert alert-danger">Editorial ya existe</div>');
                        }else
                        {
                            console.log(response);
                            $('#listaEditoriales').append(response);
                            $("#listaEditoriales").trigger("chosen:updated");
                            $('#estado_editorial').html('<div class="alert alert-success">Editorial agregada, cierre la q y verifique en las opciones.</div>');
                        }
                    }
                });
            });
            $('#libros').on('change',function(){
                console.log($(this).val());
                $.ajax({
                    method:'POST',
                    url:'paginas/json_libro.php',
                    data:{
                        libro:$(this).val(),
                        },
                    dataType: 'json', 
                    error: function(response){
                        //console.log(response);
                        $('#copia').html('');
                        },
                    success:function(response){
                            $('#copia').html('');
                            $("#copia").trigger("chosen:updated");
                            for (var i = 0; i < response.length; i++) {
                                $('#copia').append($("<option></option>")
                                     .attr("value",response[i].CodCopia)
                                     .text('Copia: '+response[i].CodCopia+ '-'+ response[i].CodLibro)); 
                            };
                        }
                });
            });
            $('#usuario').on('change',function(){
                $.ajax({
                    method:'POST',
                    url:'paginas/json_usuario.php',
                    data:{
                        usuario:$('#usuario').val(),
                        },
                    dataType: 'json', 
                    error: function(response){
                        $('#prestamo').html('');
                        console.log(response);
                        },
                    success:function(response){
                        $('#prestamo').html('');
                        $("#prestamo").trigger("chosen:updated");
                        for (var i = 0; i < response.length; i++) {
                            $('#prestamo').append($("<option></option>")
                                 .attr("value",response[i][0])
                                 .text(response[i][1])); 
                        };
                    }
                });
            });
        </script>
    </body>
</html>