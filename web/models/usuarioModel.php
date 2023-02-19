<?php
    require_once 'core/ConexionPDO.php';

    class UsuarioModel extends ConexionDB {
        public $Id;
        public $Nombre;
        public $Apellido;
        public $email;
        public $password;

        public function guardar(){
            $this->setQuery("INSERT INTO usuario(Nombre, Apellido, email, password)
                            VALUES(:Nombre,:Apellido, :email, :password)");
            $this->ejecutar(array(
                ':Nombre' => $this->Nombre,
                ':Apellido' => $this->Apellido,
                ':email' => $this->email,
                ':password' => $this->password
            ));
        }

        public function registrar(){
            $this->setQuery("INSERT INTO usuario(email, password, Rol)
                            VALUES(:email, :password :Rol)");
            $this->ejecutar(array(
                ':email' => $this->email,
                ':password' => $this->password,
                ':Rol'=>$this->Rol
            ));
        } 

        public function eliminar(){
            $this->setQuery("DELETE usuario
                             WHERE Id = :Id");
            
            $this->ejecutar(array(
                ':Id' => $this->Id,
            ));
        }

        public function login(){
            $this->setQuery("SELECT email,password FROM usuario 
                             WHERE email = :email AND password = :password");
            $resultado = $this->obtenerRow(array(
                ':email' => $this->email,
                ':password' => $this->password
    ));
            return $resultado;
        }

        

    }
?>