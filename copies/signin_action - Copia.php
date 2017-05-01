<?php 
    header("Content-Type: text/plain");
    require_once 'connector.php';

    $ref = $_REQUEST["ref"];
    $name = ( isset($_REQUEST["name"] ) ) ? utf8_decode($_REQUEST["name"]) : 0 ;
    $email = ( isset($_REQUEST["email"] ) ) ? $_REQUEST["email"] : 0 ;
    $login = ( isset($_REQUEST["login"] ) ) ? $_REQUEST["login"] : 0 ;
    $usr_password = ( isset($_REQUEST["usr_password"] ) ) ? $_REQUEST["usr_password"] : 0 ;
    $phone = ( isset($_REQUEST["phone"] ) ) ? $_REQUEST["phone"] : null ;
    $cellphone = ( isset($_REQUEST["cellphone"] ) ) ? $_REQUEST["cellphone"] : null ;
    $cpf = ( isset($_REQUEST["cpf"] ) ) ? $_REQUEST["cpf"] : 0 ;
    $address = ( isset($_REQUEST["address"] ) ) ? utf8_decode($_REQUEST["address"]) : 0 ;
    $number = ( isset($_REQUEST["number"] ) ) ? $_REQUEST["number"] : 0 ;
    $complement = ( isset($_REQUEST["complement"] ) ) ? utf8_decode($_REQUEST["complement"]) : null ;
    $neightborhood = ( isset($_REQUEST["neightborhood"] ) ) ? utf8_decode($_REQUEST["neightborhood"]) : null ;
    $postal_code = ( isset($_REQUEST["postal_code"] ) ) ? $_REQUEST["postal_code"] : null ;
    $state = ( isset($_REQUEST["state"] ) ) ? utf8_decode($_REQUEST["state"]) : 0 ;
    $city = ( isset($_REQUEST["city"] ) ) ? utf8_decode($_REQUEST["city"]) : 0 ;
    //create a random key
    $key = $login . $email . date('mY');
    $key = md5($key);
    $oConn = New Conn();

    if ($ref=="cadastreSe") {
      //Verify if email exists
      $sqlSelector = $oConn->SQLselector("email","tbl_accounts","email='".$email."'",'');
      if($sqlSelector){
          if ($sqlSelector->rowCount() > 0) {
              $mensagemRetorno = '3';
              echo $mensagemRetorno;
          }
          return;
      }
      //Insert Datas on DB
      $sqlInsert = $oConn->SQLinserter("tbl_accounts","name,email,login,password,phone,cellphone,cpf,address,number,complement,neightborhood,postal_code,state,city,status,key_token,created,modified,visited","'$name','$email','$login','$usr_password','$phone','$cellphone','$cpf','$address','$number','$complement','$neightborhood','$postal_code','$state','$key_token','$city','0',now(),now(),now()");
      if(!$sqlInsert){
        $mensagemRetorno = '0';
      }else{
        $mensagemRetorno = '2';
        
        /*** INÍCIO - ENVIO DE EMAIL ***/
        $enviaFormularioParaNome = 'Rafael Kellows';
        $enviaFormularioParaEmail = 'desenvolvimento@spatula.com.br';

        $caixaPostalServidorNome = 'Spatula';
        $caixaPostalServidorEmail = 'desenvolvimento@spatula.com.br';
        $caixaPostalServidorSenha = 'Sp@tul@2016';

        /* abaixo as veriaveis principais, que devem conter em seu formulario*/
        $assunto  = 'Confirmação de Cadastro';

        $mensagemConcatenada = '<div style="border:1px solid #EDEDED; padding:10px; text-align:center;">'; 
        $mensagemConcatenada .= ' <img src="http://www.spatula.com.br/images/logoSpatula.png" alt=""><br/><br/>'; 
        $mensagemConcatenada .= ' <strong style="font-size:18px;">Confirmação de Cadastro</strong><br/>'; 
        $mensagemConcatenada .= ' <strong>'.$name.'</strong>, você realizou seu cadastro através do site www.spatula.com.br.<br/>'; 
        $mensagemConcatenada .= ' Para desfrutar de nossos serviços no site é importante a ativação do seu cadastrado <a href="http://www.spatula.com.br/?e='.$email.'&k_token='.$key_token.'" _target="_blank">clicando exatamente aqui</a>.<br/>'; 
        $mensagemConcatenada .= ' Caso não consiga através no link acima, copie e cole no seu navegador exatamente essa URL: <em>http://www.spatula.com.br/?e='.$email.'&k_token='.$key_token.'</em>.<br/><br/>'; 
        $mensagemConcatenada .= ' Obrigado, a equipe da Spatula agradece sua visita.'; 
        $mensagemConcatenada .= '</div>'; 
        /*********************************** A PARTIR DAQUI NAO ALTERAR ************************************/ 

        require_once('PHPMailer-master/PHPMailerAutoload.php');
          
        $mail = new PHPMailer();

        $mail->IsSMTP();
        $mail->SMTPAuth  = true;
        $mail->Charset   = 'utf8_decode()';
        $mail->Host  = 'smtp.'.substr(strstr($caixaPostalServidorEmail, '@'), 1);
        $mail->Port  = '587';
        $mail->Username  = $caixaPostalServidorEmail;
        $mail->Password  = $caixaPostalServidorSenha;
        $mail->From  = $caixaPostalServidorEmail;
        $mail->FromName  = utf8_decode($caixaPostalServidorNome);
        $mail->IsHTML(true);
        $mail->Subject  = utf8_decode($assunto);
        $mail->Body  = utf8_decode($mensagemConcatenada);

        $mail->AddAddress($enviaFormularioParaEmail,utf8_decode($enviaFormularioParaNome));

        if(!$mail->Send()){
        $mensagemRetorno = '0';
        }else{
        $mensagemRetorno = '2';
        }
        //echo $mensagemRetorno;

      }
      echo $mensagemRetorno;
      return;
    }
    if ($ref=="atualizaCadastro") {
        $id = ( isset($_REQUEST["id"] ) ) ? $_REQUEST["id"] : 0 ;
        if( isset($id) ){
            $sqlUpdate = $oConn->SQLupdater("tbl_accounts","name = '$name',email = '$email',login = '$login',usr_password = '$usr_password',phone = '$phone',cellphone = '$cellphone',cpf = '$cpf',address = '$address',number = '$number',complement = '$complement',neightborhood = '$neightborhood',postal_code = '$postal_code',state = '$state',city = '$city', modified = now()","id='".$id."'");
            if(!$sqlUpdate){
                $mensagemRetorno = '0';
            }
            else{
                $mensagemRetorno = '2';
            }    
            echo $mensagemRetorno;  
        }
        return;
    }
?>