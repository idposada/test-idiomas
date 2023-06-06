<?php include('header.php') ?>

<?php include('function_question.php');       ?>
<section class="bg-morado">

  <div class="container center num-pregunta">
    1 / 10

    <div class="timeline">
      <img src="img/timeline.png" alt="">
    </div>


    <div class="frame-pregunta">

      <h3 class="text-gris animate__animated animate__fadeIn">
        Select an answer
      </h3>

      <h2 class="txt-pregunta animate__animated animate__fadeIn">
      <?php



// echo $j;

            //  print_r($input);
            //print_r($quest) ;
           echo utf8_encode($quest[0][5]);
            // echo "pregunta ".$preg;

        ?>
      </h2>

      <div class="img-pregunta animate__animated animate__zoomIn">
      <?php echo "<img src='img/img-pregunta".$quest[0][6].".png' alt=''>"; ?>
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

<button class="btn waves-effect waves-light btn-respuesta-correcta" type="submit" name="action">
          Submit
        </button>
        </div>

    </div>

  </div>

</section>

<?php include('footer.php') ?>
