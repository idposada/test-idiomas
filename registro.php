<?php include('header.php') ?>
<main>
  <section class="bg-morado">
    <div class="container center logo-bosque ">
      <img src="img/logo-ubosque.png" alt="" class="animate__animated animate__fadeIn">
    </div>
<div class="sec-registro">


    <div class=" forn-registro animate__animated animate__fadeInUp bienvenida">
      <div class="txt-blanco">
        Estudia, explora y recorre nuestro Bosque de idiomas
      </div>
      <div class="formulario">
        <form class="" action="functions.php" method="post">
          <input name="nombre" type="text" placeholder="nombre*"required="required">
          <input name="apellido" type="text" placeholder="apellido*"required="required">
          <input name="email" type="text" placeholder="email*"required="required">
          <input name="celular" type="text" placeholder="celular*"required="required">
          <div class="left boton">
            <input type="checkbox" required checked>

            <span class="txt-terminos">
            <a href="https://www.unbosque.edu.co/sites/default/files/2021-08/Autorizaci%C3%B3n%20Tratamiento%20de%20Datos%20Personales%20Web.pdf" target="_blank" >Autorizo a la Universidad El Bosque para el envío de información. Términos y condiciones</span>
          </div>
          <input type="hidden" name="action" value="save_user">
          <div class="center boton">
            <input type="submit" name="iniciar" value="Descubre tu nivel" class="waves-effect waves-light btn-large btn-blanco center">
          </div>


        </form>
      </div>
    </div>
    </div>
  </section>

  <section class="container sec-registro">


  </section>


  <?php include('footer.php') ?>
  </html>
