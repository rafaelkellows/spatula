<?php
session_start();
require_once 'usuario.php';
require_once 'autenticador.php';
require_once 'sessao.php';
$servername = 'http://'.$_SERVER['SERVER_NAME'];

 
switch($_REQUEST["acao"]) {
  case 'entrar': {
    # Uso do singleton para instanciar
    # apenas um objeto de autenticação
    # e esconder a classe real de autenticação
    $aut = Autenticador::instanciar();
    # efetua o processo de verificação de confirmação
    if ($aut->confirm($_REQUEST["login"], $_REQUEST["password"])) {
      setcookie('msg', '3', (time() + (2 * 3600)), '/');
      header('location: '.$servername);
      return;
    }

    # efetua o processo de autenticação
    if ($aut->logar($_REQUEST["login"], $_REQUEST["password"])) {
      # redireciona o usuário para dentro do sistema
      header('location: '.$_REQUEST["curr"]);
    }
    else {
      # envia o usuário de volta para 
      # o form de login
      setcookie('msg', '00', (time() + (2 * 3600)), '/');
      header('location: '.$_REQUEST["curr"]);
      //setcookie('msg', '3', (time() + (2 * 3600)), '/');
    }
  }
  break;
  case 'sair': {
    # envia o usuário para fora do sistema
    # o form de login
    session_destroy();
    header('location: '.$_REQUEST["curr"]);
  }
  break;
}
