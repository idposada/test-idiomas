<?php

require_once('functions.php');

$url ="http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$components = parse_url($url);
parse_str($components['query'], $results);
$id = $results['id']; 
$cat = $results['cat']; 

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
            $range=$fila["puntaje"];
            // if($range>0 && $range<=10){
            //     $range=10;
            // }
            // elseif($range>10 && $range<=19){
            //     $range=19;
        
            // }
            // elseif($range>19 && $range<=25){
            //     $range=25;
        
            // }
            // elseif($range>25 && $range<=30){
            //     $range=30;
        
            // }
        
            return $range;
            $con->close();
        }else{
            return 0;
        }
    }
  
  }

  function result($range){
    $con = dbconnect();

    if($range>0 && $range<=10){
        $range=10;
    }
    elseif($range>10 && $range<=19){
        $range=19;

    }
    elseif($range>19 && $range<=25){
        $range=25;

    }
    elseif($range>25 && $range<=30){
        $range=30;

    }
    return $range;
  }  
  
  function textresult($cat, $range){
    $con = dbconnect();

    if($range>0 && $range<=10){
        $range=10;
    }
    elseif($range>10 && $range<=19){
        $range=19;

    }
    elseif($range>19 && $range<=25){
        $range=25;

    }
    elseif($range>25 && $range<=30){
        $range=30;

    }
    $sql_select_category_filled = "SELECT * FROM resultado WHERE rango = ".$range." and categoria = ".$cat." order by rango desc limit 1";
  
    $rs = mysqli_query($con, $sql_select_category_filled);
  
    if (!$rs) {
        echo "Error ";
    } else {
        
        $fila = $rs->fetch_assoc();

        if(isset($fila["descripcion"] )){
            return $fila["descripcion"];
            $con->close();
        }else{
            return 0;
        }
    }
  
  }

  function imgresult($cat, $range){
    $con = dbconnect();

    $range=result($range);

    $sql_select_category_filled = "SELECT * FROM resultado WHERE rango = ".$range." and categoria = ".$cat." order by rango desc limit 1";
  
    $rs = mysqli_query($con, $sql_select_category_filled);
  
    if (!$rs) {
        echo "Error ";
    } else {
        
        $fila = $rs->fetch_assoc();

        if(isset($fila["ruta"] )){
            return $fila["ruta"];
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