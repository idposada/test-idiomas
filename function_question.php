<?php

include("functions.php");
$url ="http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$components = parse_url($url);
parse_str($components['query'], $results);
$cat = $results['category']; 
$id = $results['id']; 


if(!isset($_REQUEST['id_pregunta']) ){
    $_REQUEST['id_pregunta'] = 0;
 }

$final = 20;
$id_pregunta = $_REQUEST['id_pregunta'];

$j= $_REQUEST['j'];
$fallo = "false";
$puntaje = 0.0 + floatval($_REQUEST['puntaje']) ;


$input = array(
    1=>array(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19),
    2=> array(0,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39));
    
  $input = $input[$cat];
//   shuffle($input);


//Si el array esta vacio respondio todas las preguntas
if($j != 20)
{
    
    $preg = $input[$j];
    // $input = array_diff($input, array($input[$j]));
    unset($input[$j]);
    $quest=questions($cat, $preg);
    $id_pregunta = $id_pregunta - 1;
    $indice_correcta = $_REQUEST['correcta'] ;
    // $pregunta = $preguntas[$id_pregunta];
    
    if(isset($_REQUEST['r']))
    {
        $seleccionada = $_REQUEST['r'];

        if($indice_correcta==1)
        {
            // $j=$j+1;

            // $id_pregunta = $id_pregunta + 1;
            
            if($j >=10 && $j < 15 ){
                $puntaje += 0.4;
        
            }
            else{
                $puntaje += 2;
        
            }

        }
        else
        {
            // $fallo 	= "true";
        }
    }
}
elseif($final == $j)
{

    $j =$j + 1;
    $id_pregunta = $id_pregunta - 1;
    $indice_correcta = $_REQUEST['correcta'];
    if($j >=10 && $j < 15 ){
        $puntaje += 0.4;

    }
    else{
        $puntaje += 2;

    }

    if(isset($_REQUEST['r']))
    {
        $seleccionada = $_REQUEST['r'];
        if($indice_correcta==1)
        {
            //guardar score
            // $puntaje += 10;
            $win = "true";
        }
        save_score($id, $cat,$puntaje);
        $count_cat = 0;
        $count_cat = $cat;

       header("Location: idioma.php?id=".$id."&count=".$count_cat);
    }
}
else
{
    // $pregunta = $preguntas[$id_pregunta];
}
  

function questions($cat, $preg){
    $enlace = mysqli_connect('127.0.0.1', 'pizarraweb', '!1q2w3e4r5t!', 'ueb_testidiomas');
            /* comprobar la conexión */
    if (mysqli_connect_errno()) {
        printf("Falló la conexión: %s\n", mysqli_connect_error());
        exit();
    }

    $consulta = "select * from respuesta 
    join pregunta on respuesta.id_pregunta=pregunta.id 
    where pregunta.id_categoria=".$cat." and pregunta.id=".$preg."";

    if ($resultado = mysqli_query($enlace, $consulta)) {

        /* obtener el array asociativo */
        while ($fila = mysqli_fetch_row($resultado)) {
            $res[]= $fila;
        }
        /* liberar el conjunto de resultados */
        mysqli_free_result($resultado);
    }

    /* cerrar la conexión */
    mysqli_close($enlace);
    return $res;

}

function save_score($id_usuario, $id_categoria, $puntaje){
    
    $sql_save = "INSERT INTO puntaje(id_usuario, id_categoria, puntaje) VALUES (".$id_usuario.",".$id_categoria.",".$puntaje.")";
    
    $con = dbconnect();
    $rs = mysqli_query($con, $sql_save);


  if (!$rs) {
    echo "Error ";
  } else {
    // $sql_user = "SELECT id FROM puntaje ORDER BY id DESC LIMIT 1";
    // $resa = mysqli_query($con, $sql_user);

    // $fila = $resa->fetch_assoc();
    // return $fila;
    return ;
  }
}

?>