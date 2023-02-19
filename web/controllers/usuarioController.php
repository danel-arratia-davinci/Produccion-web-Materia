<?php
  require_once('models/usuarioModel.php');
    class UsuarioController{
        public $Nombre;
        public $Apellido;
        public $password;
        public $email;

        public function index( $parametros = array() ){
        require_once('views/header.php');
        require_once('views/inicioSesion.php');
        require_once('views/footer.html');
           
        }
        public function login( $parametros = array() ){
            if(!isset($_POST['email']) && !isset($_POST['password'])){
                return;
            }
            $email = $_POST['email'];
            $password = $_POST['password'];
            $usuario = new UsuarioModel();
            $usuario ->email = $email;
            $usuario ->password = $password;
            // Recibo las variables por POST
         
            print_r( $parametros  );
            echo 'validando sesion',':  ',$email,'_',$password;
         
         // Intancio el modelo 

            // Ejecuto las querys
            $resultado = $usuario->login();
            print_r($resultado);  
           // print_r($usuario);  
            
            if( count( $resultado ) > 0  ) {
                echo 'Datos validos';
                session_start();
                $_SESSION['email'] = $resultado[0]['email'];
                header('Location: ../producto');
} else {
                echo 'Usuario o contraseña invalidos';
            }
     }
     public function logout( $parametros = array() ){
         
     
        session_start();
        unset( $_SESSION['email'] );

        session_unset();
        session_destroy();
        echo('<meta http-equiv="refresh"content="1;  url=../usuario">');
        echo( '<h2> Sesion cerrada</h2>');
        }
        public function crear( $parametros = array() ){
           if( !isset( $_POST['email'] )  && !isset( $_POST['password'])){
                return;
            }
            // Recibo las variables por POST
            $email = $_POST['email'];
            $password = $_POST['password'];
            // Intancio el modelo 
            $usuario = new UsuarioModel();
            $usuario->email = $email;
            $usuario->password = sha1( $password ) ;
            $usuario->nivelPermisos = 0;

            $usuario->registro();
            // Voy al login
            header('Location: ../usuario');
            
        }
        

        public function actualizar($parametros = array()){
            print_r( $parametros  );
           echo 'Actulizando';
        }

        public function eliminar( $parametros = array() ){
            print_r( $parametros  );
            echo 'Eliminando usuario';
         } 
        
    }

?>