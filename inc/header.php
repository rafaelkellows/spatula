		<?php 
			$email =  ( isset($_REQUEST["e"] ) ) ? $_REQUEST["e"] : 0 ;
			$key_token =  ( isset($_REQUEST["k_token"] ) ) ? $_REQUEST["k_token"] : 0 ;
			$msg =  ( !empty($_COOKIE['msg'] ) ) ? $_COOKIE['msg'] : null ;

			if($email===0 && $key_token===0){
				switch ($msg) {
			    case '0':
						$mensagemConcatenada = '<div class="msgBox" style="display:block;">';
						$mensagemConcatenada .= '	<p class="msg">';
						$mensagemConcatenada .= '		<strong>Erro</strong><br><br>';
						$mensagemConcatenada .= '		<span><strong>Usu�rio</strong> ou <strong>Senha</strong> incorreto.<br>Tente novamente.</span>';
						$mensagemConcatenada .= '		<a class="btn-default btn-color-C" href="javascript:void(0);"><span>OK</span></a>';
						$mensagemConcatenada .= '	</p>';
						$mensagemConcatenada .= '</div>';
						echo $mensagemConcatenada;
						break;
			    case '1':
						$mensagemConcatenada = '<div class="msgBox" style="display:block;">';
						$mensagemConcatenada .= '	<p class="msg">';
						$mensagemConcatenada .= '		<strong>Confirma��o de Cadastro</strong><br><br>';
						$mensagemConcatenada .= '		<span><strong>Parab�ns</strong>, voc� realizou a confirma��o do seu cadastro com sucesso!<br>Agora � s� <strong style="color:#3988d7">entrar</strong> com seu login e senha.</span>';
						$mensagemConcatenada .= '		<a class="btn-default btn-color-C" href="javascript:void(0);"><span>OK</span></a>';
						$mensagemConcatenada .= '	</p>';
						$mensagemConcatenada .= '</div>';
						echo $mensagemConcatenada;
						break;
			    case '2':
						$mensagemConcatenada = '<div class="msgBox" style="display:block;">';
						$mensagemConcatenada .= '	<p class="msg">';
						$mensagemConcatenada .= '		<strong>Confirma��o de Cadastro</strong><br><br>';
						$mensagemConcatenada .= '		<span><strong>Ol�</strong>, voc� j� realizou a confirma��o do seu cadastro com sucesso!<br></span>';
						$mensagemConcatenada .= '		<a class="btn-default btn-color-C" href="javascript:void(0);"><span>OK</span></a>';
						$mensagemConcatenada .= '	</p>';
						$mensagemConcatenada .= '</div>';
						echo $mensagemConcatenada;
						break;
			    case '3':
						$mensagemConcatenada = '<div class="msgBox" style="display:block;">';
						$mensagemConcatenada .= '	<p class="msg">';
						$mensagemConcatenada .= '		<strong>Confirma��o de Cadastro n�o efetuada</strong><br><br>';
						$mensagemConcatenada .= '		<span><strong>'.$usuario->getName().'</strong>,<br>voc� ainda n�o confirmou o seu cadastro. Um link foi enviado por e-mail ap�s realizar seu cadastro. <a href="signin_action.php?ref=cadastreSe&e='.$usuario->getEmail().'&k_token='.$usuario->getKToken().'">OK, eu estou ciente do cadastro e confirmo clicando aqui?</a></span>';
						$mensagemConcatenada .= '		<a class="btn-default btn-color-C" href="javascript:void(0);"><span>OK</span></a>';
						$mensagemConcatenada .= '	</p>';
						$mensagemConcatenada .= '</div>';
						echo $mensagemConcatenada;
						break;
				}
				setcookie('msg', '-1', (time() + 1), '/'); //5 seconds
			}else{
				header('location: signin_action.php?ref=cadastreSe&e='.$email.'&k_token='.$key_token);
			}
		?>
		<header>
			<aside>
				<img src="images/logo_pagseguro200x41.png" />
				<h1>
					<a class="lg-spatula" href="./">Spatula - Presentes que marcam</a>
					<a class="fa fa-phone" href="tel.:+551128474991"><span>+55 11 2847.4991</span></a>
					<a class="fa fa-whatsapp" href="tel.:+5511942060111"><span>+55 11 94206.0111</span></a>
				</h1>
				<ul>
					<li><a class="fa fa-facebook-square" href="https://www.facebook.com/Spatula-Presentes" target="_blank" title="Facebook"><span>Facebook</span></a></li>
					<li><a class="fa fa-instagram" href="https://www.instagram.com/spatulapresentes" target="_blank" title="Instagram"><span>Instagram</span></a></li>
					<?php if (!$usuario){ ?>
					<li class="block f-right notlogged"><a class="fa fa-shopping-cart btn-color-E" href="checkout.php" title="Carrinho de Compras"><em>0</em></a></li>
					<li class="block f-right"><a class="btn-signin btn-color-C" href="signin.php" title="Cadastre-se"><em>Cadastre-se</em></a></li>
					<li class="block f-right"><a class="btn-login btn-color-A" href="javascript:void(0);" title="Entrar"><em>Entrar</em></a></li>
					<?php 
						}else{ 
							if( !$usuario->getId() ){
					?>
					<li class="block f-right notlogged"><a class="fa fa-shopping-cart btn-color-E" href="checkout.php" title="Carrinho de Compras"><em>0</em></a></li>
					<li class="block f-right"><a class="btn-signin btn-color-C" href="signin.php" title="Cadastre-se"><em>Cadastre-se</em></a></li>
					<li class="block f-right"><a class="btn-login btn-color-A" href="javascript:void(0);" title="Entrar"><em>Entrar</em></a></li>
					<?php 								
							}else{
					?>
					<li class="block f-right logged">
						<input id="user_id" type="hidden" value="<?php if ($usuario){ print $usuario->getId(); }else{ print ''; }; ?>" />
						<a class="btn-logged" href="signin.php">Ol�, <strong><?php if ($usuario){ print $usuario->getName(); }else{ print 'Visitante'; }; ?></strong>.</a>
					</li>
					<li class="block f-right notlogged"><a class="fa fa-shopping-cart btn-color-E" href="checkout.php" title="Carrinho de Compras"><em>0</em></a></li>
					<li class="block f-right"><a class="btn-edit btn-color-C" href="signin.php" title="Cadastre-se"><em>Meus Dados</em></a></li>
					<li class="block f-right"><a class="btn-shopping-basket btn-color-D" href="transaction.php" title="Meus Pedidos"><em>Meus Pedidos</em></a></li>
					<li class="block f-right"><a class="btn-logout btn-color-A" href="login/controle.php?acao=sair" title="Sair"><em>Sair</em></a></li>
					<?php 
							} 
						}
					?>
				</ul>
				<form id="login-form" action="login/controle.php?curr=<?php print $_SERVER['REQUEST_URI'] ?>" method="post" target="_self" id="valid" class="mainForm">
					<fieldset>
						<legend>Entre com seus dados</legend>
						<a class="fa fa-close" href="javascript:void(0);"><span>Fechar</span></a>
						<label for="login">Usu�rio</label>
						<input type="text" placeholder="usu�rio" id="login" name="login" class="validate[required]" />
						<label for="password">Senha</label>
						<input type="password" placeholder="senha" id="password" name="password" class="validate[required]" />
						<button class="btn-color-A acao" id="acao" name="acao" type="submit" value="entrar">entrar</button>

						<label class="forget" for="forget">E-mail</label>
						<input type="text" class="forget" placeholder="e-mail" id="forget" name="forget" value="" />
						<input type="hidden" id="ref" name="ref" value="forgetPassword" />
						<button class="btn-color-A send" id="enviar" name="enviar" type="submit" value="enviar">enviar</button>

						<a class="fa fa-frown-o" href="javascript:void(0);" title="Clique aqui para solicitar uma nova senha."><span>esqueci minha senha</span></a>

					</fieldset>
				</form>
				<form id="search-form" action="busca.php" method="post">
					<fieldset>
						<legend>Buscar na Spatula</legend>
						<input placeholder="Oi! Digite o produto que voc� procura?" name="search" type="text" value="" />
						<button type="submit">buscar</button>
					</fieldset>
				</form>
			</aside>
		</header>		
