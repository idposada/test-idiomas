<?php

$action = ( array_key_exists( 'action', $_REQUEST) ? $_REQUEST['action'] : "" );

$nombre = ( array_key_exists( 'nombre', $_REQUEST) ? $_REQUEST['nombre'] : "" );
$email = ( array_key_exists( 'email', $_REQUEST) ? $_REQUEST['email'] : "" );
$celular = ( array_key_exists( 'celular', $_REQUEST) ? $_REQUEST['celular'] : "" );
$apellido = ( array_key_exists( 'apellido', $_REQUEST) ? $_REQUEST['apellido'] : "" );

switch ($action) {
  case 'save_user':
      save_user($nombre, $email, $celular, $apellido);
    break;

  default:
    // code..
    break;
}



function dbconnect(){
  // define('DB_NAME','test-idiomas');
  // define('DB_USER','root');
  // define('DB_PASS','');
  // define('DB_SERVER','127.0.0.1');

  $con = mysqli_connect('127.0.0.1', 'pizarraweb', '!1q2w3e4r5t!', 'ueb_testidiomas');

  if (!$con) {
    die("Connection failed! " . mysqli_connect_error());
  }
   return $con;
}


function save_user($nombre, $email, $celular, $apellido){
  $con = dbconnect();
  $sql_save_user = "INSERT INTO usuario (id, nombre, apellido, email, celular, created_at)
  VALUES (DEFAULT, '$nombre', '$apellido', '$email', '$celular', CURRENT_TIME())";

  $rs = mysqli_query($con, $sql_save_user);




  // $curl = curl_init();

  // curl_setopt_array($curl, array(
  //   CURLOPT_URL => 'https://test.salesforce.com/services/oauth2/token?grant_type=password&client_id=3MVG9XfKTWtUp0bLnVpAkVkJnrgqmaVvxxQ_kiKPJRb8m5OFuBmQr5ujqedAEDuoHGPHbc.mdMP5m3iNtd.j1&client_secret=7A94447A318DCD1BAFC8F648EB5453628997CDA46922C8839051A82C8304BC69&username=cjrodriguez.unbosque@nectia.com.develop&password=Bosqueintegraciones2022QMjT0ZgVKznIMRdur2DsYz0J',
  //   CURLOPT_RETURNTRANSFER => true,
  //   CURLOPT_ENCODING => '',
  //   CURLOPT_MAXREDIRS => 10,
  //   CURLOPT_TIMEOUT => 0,
  //   CURLOPT_FOLLOWLOCATION => true,
  //   CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  //   CURLOPT_CUSTOMREQUEST => 'POST',
  // ));
  
  // $response = curl_exec($curl);
  
  // curl_close($curl);
  // $token = json_decode($response, true);
  // $token=$token["access_token"];
  // $token='Authorization: Bearer '.$token;
  
  // /*enviamos paremtros atraves de la api con su token*/
  // // echo $token;
  
  
  // $body = array(
  //     "LastName"=> $apellido,
  //     "FirstName" => $nombre,
  //     "Phone"=> $celular,
  //     "Company"=> "NA",
  //     "Program_code__c"=>"5",
  //     "Program_term__c"=>"20222"
  // );
  
  
  // $curl = curl_init();
  
  // curl_setopt_array($curl, array(
      
  //   CURLOPT_HTTPHEADER => array('Content-Type: application/json',$token ),   
  //   CURLOPT_URL => 'https://unbosque--develop.my.salesforce.com/services/data/v53.0/sobjects/Lead/Email/'.$email,
  //   CURLOPT_RETURNTRANSFER => true,
  //   CURLOPT_ENCODING => '',
  //   CURLOPT_MAXREDIRS => 10,
  //   CURLOPT_TIMEOUT => 0,
  //   CURLOPT_FOLLOWLOCATION => true,
  //   CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  //   CURLOPT_CUSTOMREQUEST => 'PATCH',
  //   CURLOPT_POSTFIELDS =>json_encode($body),
  // ));
  
  // $response = curl_exec($curl);
  
  // curl_close($curl);
  // echo $response;


  if (!$rs) {
    echo "Error ";
  } else {
    $sql_user = "SELECT id FROM usuario ORDER BY id DESC LIMIT 1";
    $resa = mysqli_query($con, $sql_user);

    $fila = $resa->fetch_assoc();
    header("Location: idioma.php?id=".$fila['id']);
  }

}



 ?>
