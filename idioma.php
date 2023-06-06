<?php include('header.php') ?>
<?php require_once('function_category.php') ;
      finished($id, 1);
    ?>
<main>
  <section class="row container nommbres">
    
    <div class="col m8">
      <div class="nombre-usuario">
        Hola <?php getName($id);
    ?>
      </div>
      <div class="text-pequeno">
        Inicia tu prueba
      </div>
    </div>

    <div class="col m4 right">
      <img src="img/navigation.png" alt="">
    </div>
  </section>

  <section class="row container banner">
    <img src="img/banner.png" alt="">
  </section>

  <section class="row container idioma">
    <p>Elige un idioma para hacer tu prueba</p>


    <div class="idioma-solo animate__animated animate__fadeInUp">
      <img src="img/en-icon.png" alt="">
      <div class="info-idioma">
        <span class="nombre-idioma">Inglés</span>
        <span class="num-preguntas">15 questions</span>
      </div>

      <a class="<?php if(category_filled($id, 1)){echo 'cat-disabled';} ?>" href=<?php echo "pregunta.php?category=1&id=".$id."&j=1&correcta=0&puntaje=0" ?> > <img src="img/icon-flecha.png" alt=""> </a>



    </div>

    <div class="idioma-solo animate__animated animate__fadeInUp">
      <img src="img/fr-icon.png" alt="">
      <div class="info-idioma">
        <span class="nombre-idioma">Francés</span>
        <span class="num-preguntas">15 questions</span>
      </div>

      <a class="<?php if(category_filled($id, 2)){echo 'cat-disabled';} ?>" href=<?php echo "pregunta.php?category=2&id=".$id."&j=1&correcta=0&puntaje=0" ?> > <img src="img/icon-flecha.png" alt=""> </a>


    </div>


  </section>

  <section class="img-abajo">
    <img src="img/Banner-abajo.png" alt="">
  </section>
</main>


<?php include('footer.php') ?>
