<?php


  require_once('models/usuarioModel.php');
  

    class indexController{

        public function index(){
            require_once('views/header.php');
            require_once('views/index.html');
            require_once('views/footer.html');
        }

        public function loguear(){
            echo '<h2>Iniciando login</h2>';
        }

        public function logout(){
            echo '<h2>Finalizando sesión</h2>';
        }

    }


?>