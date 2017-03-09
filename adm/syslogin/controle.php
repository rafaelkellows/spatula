<?php
session_start();
require_once 'usuario.php';
require_once 'autenticador.php';
require_once 'sessao.php';

 
switch($_REQUEST["acao"]) {
 
    case 'entrar': {
 
        # Uso do singleton para instanciar
        # apenas um objeto de autentica��o
        # e esconder a classe real de autentica��o
        $aut = Autenticador::instanciar();
 
        # efetua o processo de autentica��o
        if ($aut->logar($_REQUEST["login"], $_REQUEST["password"])) {
            # redireciona o usu�rio para dentro do sistema
            header('location: ../page.php?nvg=home');
        }
        else {
            # envia o usu�rio de volta para 
            # o form de login
            header('location: ../index.php');
        }
 
    } break;
 
    case 'sair': {
 
        # envia o usu�rio para fora do sistema
        # o form de login
        header('location: ../index.php');
 
    } break;
 
}