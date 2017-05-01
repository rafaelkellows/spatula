<?php
/* apenas dispara o envio do formulário caso exista $_POST['enviarFormulario']*/
//if (isset($_POST['enviarFormulario'])){
$ref = $_REQUEST["ref"];

if ($ref=="facaOrcamento") {
  
  // Campos do formulário
  $name = $_POST["name"];
  $email = $_POST["email"];
  $phone = $_POST["phone"];
  $cellphone = $_POST["cellphone"];
  $message = $_POST["message"];
  $prod_id = $_POST["product_id"];
  $prod_name = $_POST["product_name"];
  $prod_quant = $_POST["product_quant"];

  $mensagemConcatenada = '<div style="border:1px solid #EDEDED; padding:10px; text-align:center;">'; 
  $mensagemConcatenada .= '<img src="http://www.spatula.com.br/images/logoSpatula.png" alt=""><br/><br/>'; 
  $mensagemConcatenada .= '<strong style="font-size:18px;">Dados da Solicitação</strong><br/>'; 
  //Verifica se houve produto definido
  if( !empty($prod_name) ){
    $mensagemConcatenada .= '<strong>Produto interessado</strong>: '.$prod_name.'<br/>'; 
    $mensagemConcatenada .= '<strong>Quantidade</strong>: '.$prod_quant.'<br/>'; 
  }else{
    $mensagemConcatenada .= 'Produto e quantidade não definido(s)<br/>'; 
  }
  $mensagemConcatenada .= '<br/><strong style="font-size:18px;">Dados do Solicitante</strong><br/>'; 
  $mensagemConcatenada .= '<strong>Nome</strong>: '.$name.'<br/>'; 
  $mensagemConcatenada .= '<strong>E-mail</strong>: '.$email.'<br/>'; 

  if( !empty($phone) ) {
    $mensagemConcatenada .= '<strong>Telefone Fixo</strong>: '.$phone.'<br/>'; 
  }
  if( !empty($cellphone) ) {
    $mensagemConcatenada .= '<strong>Telefone Celular</strong>: '.$cellphone.'<br/>'; 
  }
  if( !empty($message) ) {
    $mensagemConcatenada .= '<strong>Mensagem</strong>: '.$message.'<br/>'; 
  }
  $mensagemConcatenada .= '</div>'; 
  /*********************************** || ************************************/ 

  $assunto  = 'Spatula - Solicitação de Orçamento';
  
  //To: $enviaFormularioParaNome <$enviaFormularioParaEmail>
  $enviaFormularioParaNome = 'Spatula';
  $enviaFormularioParaEmail = 'desenvolvimento@spatula.com.br';
   
  $caixaPostalServidorNome = 'Spatula';
  $caixaPostalServidorEmail = 'desenvolvimento@spatula.com.br';
  $caixaPostalServidorSenha = 'Sp@tul@2016';
   
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
  $mail->FromName  = utf8_decode($name);
  $mail->AddReplyTo(utf8_decode($email), utf8_decode($name));
  $mail->IsHTML(true);
  $mail->Subject  = utf8_decode($assunto);
  $mail->Body  = utf8_decode($mensagemConcatenada);
   
  //Define os destinatário(s)
  $mail->AddAddress($enviaFormularioParaEmail,utf8_decode($enviaFormularioParaNome));
  //Campos abaixo são opcionais 
  //=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
  //$mail->AddCC('destinarario@dominio.com.br', 'Destinatario'); // Copia
  //$mail->AddBCC('destinatario_oculto@dominio.com.br', 'Destinatario2`'); // Cópia Oculta
  //$mail->AddAttachment('images/phpmailer.gif');      // Adicionar um anexo
   
  if(!$mail->Send()){
    $mensagemRetorno = '0';
  }else{
    $mensagemRetorno = '2';
  }
  echo $mensagemRetorno;
}
?>