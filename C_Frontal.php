<?php session_start();
    $getPost=array_merge($_POST, $_GET, $_FILES);
    if(isset($getPost['ctl']) && $getPost['ctl']!=''){//recibido controlador
        $controlador='C_'.$getPost['ctl'];
        if( file_exists('./controladores/'.$controlador.'.php') ){
            require_once './controladores/'.$controlador.'.php';  
            $metodo=$getPost['met'];
            $objControlador= new $controlador();
            if(method_exists($objControlador, $metodo)){
                $objControlador->$metodo($getPost);
            }else{
                echo 'Error ERR-CF-NoM';
            }
        }else{
            echo 'Error ERR-CF-NoCF';
        }
    }else{
        echo 'Error ERR-CF-NoC';
    }

?>