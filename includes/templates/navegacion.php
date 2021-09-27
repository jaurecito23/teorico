
<header>
        
        <h1>Academia <br> Mobi</h1>

        

        <div class="menu">
            <i class="fas fa-bars"></i>
        </div>    

</header>


       <nav class="navegacion hidden">
           <div class="enlaces">
            <a href="#"><i class="fas fa-mobile"></i>Contactanos</a>
            <a href="#"><i class="fas fa-car"></i>Nosotros</a>
            <a href="#"><i class="fab fa-facebook-square"></i>Facebook</a>
            </div>

            <div class="listado-preguntas">

                <h3> Preguntas : </h3>
                <ul>
                    <?php $indice = 1; foreach($preguntas as $pregunta):?>
                    <li><a class="enlace-pregunta" id="<?php echo $pregunta["id_pregunta"]; ?>" href="#"><?php echo $indice; ?>_ <?php echo substr($pregunta["pregunta"],0,20);?>...</a></li>
                    <?php $indice++; endforeach; ?>
                </ul>
            </div>
        </nav>