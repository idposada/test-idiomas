<?php include('header.php');

    include('function_category.php');
    include('function_result.php');
    ?>

<main>
  <section class="row banner">
    <img src="img/banner.png" alt="">
  </section>

  <section class="row container nommbres">

      <div class="nombre-usuario">
        Hola <?php getName($id);
    ?>
    </div>
    <div class="text-gris">
      Aquí están tus resultados
    </div>
  </section>

  <section class="row container resultado">
  <?php
    $link= imgresult($cat,score($id));
    echo "<img src='img/".$link."' alt=''>;" ?>

    <img src="img/img-indicador.png" alt="">

    <div class="num-puntaje">
    <?php echo score($id);?>
  </div>

  <div class="text-resultado">
  <?php echo result($cat,score($id));?>

  </div>

  <img src="img/img-abajo.png" alt="" style="width: 100%;">

  </section>
  <section class="row container center">
    <div class="col m6 s6">
      <img src="img/img-subir-nivel.png" alt="">
    </div>

    <div class="col m6 s6">
      <img src="img/img-compartir.png" alt="">
    </div>
  </section>
</main>

<?php include('footer.php') ?>
