<?php 
    require_once 'controladores/Controlador.php';
    require_once 'vistas/Vista.php';
    require_once 'modelos/M_Usuarios.php';

    class C_Usuarios extends Controlador{
        private $modelo;

        public function __construct(){
            parent::__construct(); //ejecutar el constructor padre
            //$this->modelo= new M_Usuarios();
        }

        public function vistaUsuariosPrincipal($datos=array()){
             Vista::render('vistas/Usuarios/V_UsuariosPrincipal.php');;
        }

    } //FIN clase C_Usuarios
?>