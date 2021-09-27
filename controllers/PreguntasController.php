<?php 

    require_once "../includes/funciones/app.php";

    $id = $_POST["id_pregunta"];
    
    $query = "SELECT pregunta FROM preguntas WHERE id_pregunta = $id LIMIT 1";
    $resultado = $db->query($query);
    $pregunta = $resultado->fetch_assoc()["pregunta"];

    
    $query = "SELECT id_respuesta,respuesta FROM respuestas WHERE pregunta_id = $id";
    $resultado = $db->query($query);
    $respuestas = [];
    
    while($respuesta = $resultado->fetch_assoc()){

        $id_respuesta = $respuesta["id_respuesta"];
        $respuestas[$id_respuesta] = $respuesta["respuesta"];
        
    }
    
    $query = "SELECT * FROM respuesta_correcta WHERE id_pregunta = $id LIMIT 1";
    $resultado = $db->query($query);
    $correcta = $resultado->fetch_assoc()["id_respuesta"];

    $resultado3 = array(

        "pregunta"=>$pregunta,
        "respuestas"=>$respuestas,
        "correcta"=>$correcta

    );

        // try{
        //     $stmt = $db->prepare("SELECT * FROM preguntas WHERE id_pregunta = ? LIMIT 1;");
        //     $stmt->bind_param("i",$id);
        //     $stmt->execute();



            
        //     $stmt->close();
        //     $db->close();
        // }catch(Exception $e){

        //    return $e->getMessage(); 


        // }
            


echo json_encode($resultado3);

?>