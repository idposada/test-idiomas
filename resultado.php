<?php

include('header.php');

    include('function_category.php');
    include('function_result.php');
    ?>

<main>


  <section class="row container nommbres">

      <div class="nombre-usuario">
        Hola <?php getName($id);
    ?>
    </div>
    <div class="text-gris-up">
      Aquí están tus resultados
    </div>
  </section>

  <section class="row container resultado">
  <?php
    $link= imgresult($cat,score($id));
    echo "<img class='img-gif' src='img/".$link."' alt=''>" ?>

    <img src="img/img-indicador.png" alt="">



    <div class="num-puntaje">
      <div class="text-gris">
        Tu puntaje es:
      </div>
    

    <?php echo round(score($id));?>
    <div class="text-gris">
      de <strong> 30 </strong>
    </div>

  </div>

  <div class="text-resultado">
  <?php // echo textresult($cat,score($id));?>
  <?php echo utf8_encode(textresult($cat,score($id)));?>
  </div>

  <!-- <img src="img/img-abajo.png" alt="" style="width: 100%;"> -->

  </section>

  <section class="row banner">
  <a target="_blank" href="https://educacion.unbosque.edu.co/centrodelenguas">  <img src="img/banner.png" alt=""> </a>
  </section>

  <section class="row container center">
    <div class="a2a_kit a2a_kit_size_32 a2a_default_style">
        <a class="a2a_button_facebook"></a>
        <a class="a2a_button_twitter"></a>
        <a class="a2a_button_pinterest"></a>
        <a class="a2a_dd" href="https://www.addtoany.com/share"></a>
    </div>



  </section>
</main>

<?php include('footer.php') ?>
