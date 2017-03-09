<?php
session_start();
require_once 'usuario.php';
require_once 'autenticador.php';
require_once 'sessao.php';
$servername = 'http://'.$_SERVER['SERVER_NAME'];

 
switch($_REQUEST["acao"]) {
  case 'entrar': {
    # Uso do singleton para instanciar
    # apenas um objeto de autentica��o
    # e esconder a classe real de autentica��o
    $aut = Autenticador::instanciar();
    # efetua o processo de verifica��o de confirma��o
    if ($aut->confirm($_REQUEST["login"], $_REQUEST["password"])) {
      setcookie('msg', '3', (time() + (2 * 3600)), '/');
      header('location: '.$servername);
      return;
    }

    # efetua o processo de autentica��o
    if ($aut->logar($_REQUEST["login"], $_REQUEST["password"])) {
      # redireciona o usu�rio para dentro do sistema
      header('location: '.$_REQUEST["curr"]);
    }
    else {
      # envia o usu�rio de volta para 
      # o form de login
      setcookie('msg', '00', (time() + (2 * 3600)), '/');
      header('location: '.$_REQUEST["curr"]);
      //setcookie('msg', '3', (time() + (2 * 3600)), '/');
    }
  }
  break;
  case 'sair': {
    # envia o usu�rio para fora do sistema
    # o form de login
    session_destroy();
    header('location: '.$_REQUEST["curr"]);
  }
  break;
}
