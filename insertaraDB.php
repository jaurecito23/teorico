<?php 

require "includes/funciones/app.php";


// $query = "DELETE FROM preguntas";
// $resultado = $db->query($query);

// mostrar($resultado);
// $query = "DELETE FROM respuestas";
// $resultado = $db->query($query);
// mostrar($resultado);

function insertar($pregunta,$respuestas,$correcta,$db){
    
         $query = "INSERT INTO preguntas (pregunta,tipo) VALUES ('$pregunta',1);";
         
         $resultado = $db->query($query);

        mostrar($resultado);
        
        $id = mysqli_insert_id($db);
         
         $indice = 1; 
         foreach($respuestas as $respuesta){
            if($respuesta !== ""){

                $query = "INSERT INTO respuestas (respuesta,pregunta_id) VALUES ('$respuesta',$id);";
                $resultado = $db->query($query);
             $idResp = mysqli_insert_id($db);
             mostrar($resultado);
             
             if(intval($correcta) == $indice){
                
                 $query = "INSERT INTO respuesta_correcta (id_respuesta,id_pregunta) VALUES ($idResp,$id);";
                 $resultado = $db->query($query);
                 mostrar($resultado);

                }
                
                $indice++;
            }
        }         
       } 
       

       
       if($_SERVER["REQUEST_METHOD"] === "POST"){
           

        $pregunta = $_POST["pregunta"];
        $respuestas = $_POST["respuestas"];
        $correcta = $_POST["correcta"];
        
        insertar($pregunta,$respuestas,$correcta,$db);

    }
 
 ?>


<form method="POST">
    

    <label> Pregunta: </label><br><br>
    <textarea name="pregunta">  </textarea><br><br>
    <label> Respuestas </label><br><br>
   
    <label> 1 </label>
    <input type="text" name="respuestas[1]"><br><br>

    <label> 2 </label>
    <input type="text" name="respuestas[2]"><br><br>

    <label> 3 </label>
    <input type="text" name="respuestas[3]"><br><br>

    <label> 4 </label>
    <input type="text" name="respuestas[4]"><br><br>
 
 <label> Correcta: </label><br><br>
 <input type="number" name="correcta"><br><br> 

  <input type="submit" value="ENVIAR">  

</form>