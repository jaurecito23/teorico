$(function(){


    $(".menu").on("click", function(){

        if($(".navegacion").hasClass("hidden")){

                $(".navegacion").removeClass("hidden");

        }else{

            $(".navegacion").addClass("sacar-navegacion");
            setTimeout(()=>{
                
                
                $(".navegacion").addClass("hidden");
                $(".navegacion").removeClass("sacar-navegacion");

            }, 900);

        }

    })

    // EVENTO CLICK A LOS ENLACES

    //Cargar Pregunta Actual
    var pregActual = $(".formulario").attr("data-preg-actual");
    obtenerPregResp(pregActual);


    //// AJAX PARA CARGAR LAS PREGUNTAS
  



  


});






function obtenerPregResp(id){

    $id = parseInt(id);


    $.ajax({
        // la URL para la petición
        url : '/teorico/controllers/PreguntasController.php',
     
        // la información a enviar
        // (también es posible utilizar una cadena de datos)
        data : { id_pregunta : id },
     
        // especifica si será una petición POST o GET
        type : 'POST',
     
        // el tipo de información que se espera de respuesta
        dataType : 'json',
     
        // código a ejecutar si la petición es satisfactoria;
        // la respuesta es pasada como argumento a la función
        success : function(json) {
           
            ponerPregResp(json);
        },
     
        // código a ejecutar si la petición falla;
        // son pasados como argumentos a la función
        // el objeto jqXHR (extensión de XMLHttpRequest), un texto con el estatus
        // // de la petición y un texto con la descripción del error que haya dado el servidor
        // error : function(jqXHR, status, error) {
        //     alert('Disculpe, existió un problema');
        // },
     
        // // código a ejecutar sin importar si la petición falló o no
        // complete : function(jqXHR, status) {
        //     alert('Petición realizada');
        // }
    });



}











function   ponerPregResp(json){


    var pregunta = json.pregunta;
    var respuestas = json.respuestas;
    var correcta = json.correcta;

    var form = $(".formulario")[0];
    form.innerHTML = "";
    console.log(form);

    for(indice_respuesta in respuestas){

        let respuesta = respuestas[indice_respuesta];
        
        form.innerHTML += `

        <div class="campos">
        <label for="respuesta${indice_respuesta}" >${respuesta}</i></label>    
        <input name="respuesta"   class="hidden" id="respuesta${indice_respuesta}" type="radio">   
        </div>
        
        `;

    }

    console.log(pregunta);

    $(".pregunta p:first").text(pregunta);

    console.log()






}






