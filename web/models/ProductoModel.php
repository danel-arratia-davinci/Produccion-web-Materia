<?php
    require_once 'core/ConexionPDO.php';

    class ProductoModel extends ConexionDB {
        public $email;
        public $idProducto;
        public $nombreProducto;
        public $categoriaProducto;
        public $fotoProducto;
        public $desarrolladorProducto;
        public $descripcionProducto;
        public $anoLanzamiento;
        public $precioProducto;
        public $puntacion;

        public function listar(){
            $this->setQuery("SELECT idProducto, nombreProducto, categoriaProducto, fotoProducto,descripcionProducto, precioProducto,puntacion FROM juegos");
            $resultado = $this->obtenerRow();
            return $resultado;

        }

        public function guardar(){
            $this->setQuery("");
            $this->ejecutar(array());
        }
         
        function darPuntuacion(){
            $sql = "UPDATE productos
                    SET puntacion = puntacion
                    WHERE idProducto = :idProducto";
        }
        
    }
?>