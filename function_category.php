<?php

require_once('functions.php');

$url ="http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$components = parse_url($url);
parse_str($components['query'], $results);
$id = $results['id']; 

if(!isset($_REQUEST['count']) ){
  $_REQUEST['count'] = 0;
  
}

 
if($_REQUEST['count']>=1){
  header("Location: resultado.php?id=".$id);

}

function category_filled($id, $cat){
    $con = dbconnect();
    $sql_select_category_filled = "SELECT id_categoria as id_categoria FROM puntaje WHERE id_usuario =".$id." and id_categoria=".$cat;
  
    $rs = mysqli_query($con, $sql_select_category_filled);
  
    if (!$rs) {
      echo "Error ";
    } else {
        
        $fila = $rs->fetch_assoc();

        if(isset($fila["id_categoria"] )){
            if($cat == $fila["id_categoria"]){
              return true;
            }
            else
            {
              return false;
            }
    
        }else{
            return false;
        }

      // header("Location: pregunta.php?category=".$rs["id_categoria"]);
    }
  
  }


  function finished($id, $cat){
    $con = dbconnect();
    $sql_select_category_filled = "SELECT count(*) as id_categoria FROM puntaje WHERE id_usuario =".$id;
  
    $rs = mysqli_query($con, $sql_select_category_filled);
  
    if (!$rs) {
      echo "Error ";
    } else {
        
        $fila = $rs->fetch_assoc();

        if(isset($fila["id_categoria"] )){
            if($fila["id_categoria"]>3)
            {
                $con->close();
                header("Location: resultado.php?id=".$id);

            }elseif($cat == $fila["id_categoria"]){
              return true;
            }
    
        }else{
            return false;
        }

      // header("Location: pregunta.php?category=".$rs["id_categoria"]);
    }
  
  }

  function getName($id){
    $con = dbconnect();
    $sql_select_category_filled = "SELECT nombre FROM usuario WHERE id =".$id;
  
    $rs = mysqli_query($con, $sql_select_category_filled);
  
    if (!$rs) {
      echo "Error ";
    } else {
        
        $fila = $rs->fetch_assoc();
        echo ucfirst(strtolower($fila["nombre"]));
    }
  }
?>