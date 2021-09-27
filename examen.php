
<?php include_once "includes/funciones/app.php";?>
<?php include_once "includes/templates/header.php"; ?>
<?php 
    $query = "SELECT * FROM preguntas";
    $preguntas = $db->query($query);
    $preguntaPrimera= $preguntas->fetch_assoc();
  
    ?>
<?php include_once "includes/templates/navegacion.php"; ?>



        
        <main class="main">
            <div class="contenido-main">

                <h1> Examen Teórico para <br> licencia de conducir </h1>
                <i class="fas fa-book"></i>
                <h2>Practia gratis con <br> AcademiaMobi</h2>

                <div class="cuestionario">
                    <p> 1/30 </p>
                </div>    
                
            </div>
        
            <div  class="pregunta">  

                <p>
                Los funcionarios del cuerpo de inspectores
                de tránsito, no están facultados para modificar
                las preferencias establecidas o los sentidos de circulación.
                </p>

            </div>

            <form class="formulario"  data-preg-actual = '<?php echo $preguntaPrimera["id_pregunta"];?>'>
                <div class="campos">
                    <label for="respuesta1"  >Verdadero </i></label>    
                    <input id="respuesta1"  class="hidden" name="respuesta" type="radio">   
                </div>
            
                <div class="campos">
                    <label for="respuesta2" >Falso  </i></label>    
                    <input name="respuesta"   class="hidden" id="respuesta2" type="radio">   
                </div>


            </form>

        </main>


        




<?php include_once "includes/templates/footer.php"; ?>