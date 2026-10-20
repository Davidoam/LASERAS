function cargarUnScript(url) {
    let script = document.createElement('script');
    script.src = url;
    document.head.appendChild(script);
}

function obtenerVista(parametros){
    // ctl -> controlador sin C_
    // mod -> metodo
    // des -> capa destino
    // for -> formulario (opcional)
    // js -> fichero js a cargar, sin extension
    
    const para = new URLSearchParams(parametros);
    const capaDestino = para.get("des") ?? ""; 
    const formulario = para.get("for") ?? ""; 
    const js = para.get("js") ?? ""; 

    if(formulario!=''){
        parametros += "&"+new URLSearchParams(new FormData(document.getElementById(formulario))).toString();
    }

    fetch("C_Frontal.php?"+parametros, { method: "GET",})
        .then(res =>{
            if( res.ok ){ //peticion se ha realizado
                return res.text();  //envia el texto de la respuesta al siguiente .then, que lo procesa
            }else{
                return 'ERR cargar contenido';
            }
        })
        .then(vista =>{
            if(js!=''){
               cargarUnScript('js/'+js+'.js'); 
            }
            if(capaDestino!=''){
                document.getElementById(capaDestino).innerHTML = vista;
            }
        })
        .catch(err =>{
            if(capaDestino!=''){
                document.getElementById(capaDestino).innerHTML = 'Se ha producido un error, vuelva intentarlo';
            }
        });
    } //FIN obtenerVista()