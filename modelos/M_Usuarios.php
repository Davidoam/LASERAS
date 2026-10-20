<?php

require_once 'modelos/Modelo.php';
require_once 'modelos/DAO.php';

class MUsuarios extends Modelo{
    public $DAO;

    public function __construct(){
        parent::__construct(); //ejecutar el constructor padre
        $this->DAO=new DAO();
    }
    
    public function buscarUsuarios($filtros=array()){
    
    
    }
}
