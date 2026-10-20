<?php 
class Vista{
    static public function render($rutaVista='', $datos=array()){
        //include($rutaVista);
        require_once($_SESSION['RAIZ'].$rutaVista);
    }
}

?>
