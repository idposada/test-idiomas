<?php

require_once('functions.php');

$url ="http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$components = parse_url($url);
parse_str($components['query'], $results);
$id = $results['id']; 

$puntaje_final = score($id);

function passExam($id){

    $con = dbconnect();
    $sql_select_category_filled = "SELECT sum(puntaje) as puntaje FROM puntaje WHERE id_usuario =".$id;

    $rs = mysqli_query($con, $sql_select_category_filled);
  
    if (!$rs) {
        echo "Error ";
    } else {
        
        $fila = $rs->fetch_assoc();

        if(isset($fila["puntaje"] )){
            if($fila["puntaje"]>=200)
            {
                $con->close();
                return true;
            }else{
              return false;
            }
        }else{
            return false;
        }
    }
  
  }
  
function score($id){
    $con = dbconnect();

    $sql_select_category_filled = "SELECT sum(puntaje) as puntaje FROM puntaje WHERE id_usuario =".$id;
  
    $rs = mysqli_query($con, $sql_select_category_filled);
  
    if (!$rs) {
        echo "Error ";
    } else {
        
        $fila = $rs->fetch_assoc();

        if(isset($fila["puntaje"] )){
            return $fila["puntaje"];
            $con->close();
        }else{
            return 0;
        }
    }
  
  }


  function scoreCategory($id, $cat){
    $con = dbconnect();

    $sql_select_category_filled = "SELECT sum(puntaje) as puntaje FROM puntaje WHERE id_usuario =".$id." and id_categoria=".$cat;
  
    $rs = mysqli_query($con, $sql_select_category_filled);
  
    if (!$rs) {
        echo "Error ";
    } else {
        
        $fila = $rs->fetch_assoc();

        if(isset($fila["puntaje"] )){
            return $fila["puntaje"];
            $con->close();
        }else{
            return 0;
        }
    }
  
  }
?>