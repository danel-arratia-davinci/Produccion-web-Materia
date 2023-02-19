<?php
    require_once('models/categoriaModel.php');
    require_once('models/productoModel.php');
    require_once('models/usuarioModel.php');

    class ProductoController{
        public $nombre;
        public $idCategoria;
        public $email;

        public function index( $parametros = array() ){
            $categoria = new CategoriaModel();
            $lista = $categoria->lista();
            $producto = new ProductoModel();
            $listaProductos = $producto->listar();
            $email = new usuarioModel();

            require_once('views/header.php');
            require_once('views/producto.php');
            require_once('views/footer.html');
        }


        public function listar( $parametros = array() ){
            echo 'Ahora vamos a listar la categoria ';
            print_r($parametros);


        }

        public function crear($parametros = array()){
            print_r( $parametros  );
            echo 'Crear usuario';

        }

        public function actualizar($parametros = array()){
            print_r( $parametros  );
            echo 'Actulizando';
        }

        public function eliminar($parametros = array()){
            print_r($parametros);
            echo 'Eliminando usuario';
        }
    }

?>