<?php include('header.php') ?>

<?php include('function_question.php'); ?>
<section class="bg-morado">

  <div class="container center num-pregunta">
    <?php

    if($cat==1){
      echo $preg;

    }
    else{

      echo $j;
    }?> / 19

    <div class="timeline">
      <img src="img/timeline.png" alt="">
    </div>


    <div class="frame-pregunta">

      <h3 class="text-gris animate__animated animate__fadeIn">
        <?php 

          if ($cat == 1) { ?>
              Select an answer     
           <?php }elseif ($cat == 2) { ?>
              Choisissez la bonne réponse
            <?php }elseif ($cat == 3) { ?>
              Seleziona una risposta
            <?php }  ?>
      
      </h3>

      <h2 class="txt-pregunta animate__animated animate__fadeIn">
      <?php   echo utf8_encode($quest[0][5]);  ?>
      </h2>

      <div class="img-pregunta animate__animated animate__zoomIn">
      <?php

      if($cat == 1){
        echo "<img src='img/img-pregunta".$preg.".png' alt=''>";

      }else{

        echo "<img src='img/img-pregunta".$j.".png' alt=''>";
      }  ?>
      </div>

      <div class="respuestas animate__animated animate__bounceIn">
        <?php

        for($i =0 ;$i<3;$i++){
          $link = $j+1;
          $score = $puntaje+0;
          ?>



          <a id="<?php echo $i?>" class="questionClass" onclick="mifunc(' <?php echo "?category=".$cat."&id=".$id."&j=".$link."&r=".$i."&puntaje=".$score."&correcta=".$quest[$i][2] ?>')"
            href="<?php echo "?category=".$cat."&id=".$id."&j=".$link."&r=".$i."&puntaje=".$score."&correcta=".$quest[$i][2] ?>">
              <?php Echo "<button id='rta".$quest[$i][2]."' class='btn waves-effect waves-light btn-respuesta respuesta button".$quest[$i][2]."' > ".utf8_encode($quest[$i][1])."</button>"; ?>
              <!-- onClick='choose(".$quest[$i][2].")'>".$quest[$i][1]." -->
            </a>
            <?php
          }
        ?>
    </div>

  </div>
  <div id="rtaok" class="modal" trackId="">
    <div class="modal-content">
      <a onclick="cerrarModOk()"><img src='img/pregunta-correcta.png' width="350px" /></a>
    </div>
  </div>


   <!-- Modal Structure -->
   <div id="rtamal" class="modal" trackId="">
    <div class="modal-content">
      <a onclick="cerrarModBad()"><img src='img/pregunta-errada.png' width="350px" /></a>
    </div>
  </div>
</section>

<?php include('footer.php') ?>
<script>
  function mifunc(a){
    document.addEventListener('DOMContentLoaded', function() {
      var elems = document.querySelectorAll('.modal');
      var instances = M.Modal.init(elems);
    });

    event.preventDefault();


    if(a.includes("correcta=1")){
      const elem = document.getElementById('rtaok');
      elem.setAttribute('trackId', a);
      const instance = M.Modal.init(elem, {dismissible: false});
      instance.open();
    }
    else{
      const elem = document.getElementById('rtamal');
      elem.setAttribute('trackId', a);
      const instance = M.Modal.init(elem, {dismissible: false});
      instance.open();
    }
    // console.log(a);
  }



function cerrarModOk(){
  const elem = document.getElementById('rtaok');
  const instance = M.Modal.init(elem, {dismissible: false});
  instance.close();

  window.location.href = document.getElementById("rtaok").getAttribute("trackId");;

}



function cerrarModBad(){
  const elem = document.getElementById('rtamal');
  const instance = M.Modal.init(elem, {dismissible: false});
  instance.close();

  window.location.href = document.getElementById("rtamal").getAttribute("trackId");;

}
</script>
