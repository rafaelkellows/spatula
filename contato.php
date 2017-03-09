<!DOCTYPE html>
<html>
	<?php
	    require_once 'login/usuario.php';
	    require_once 'login/autenticador.php'; 
	    require_once 'login/sessao.php';

	    $aut = Autenticador::instanciar();
	     
	    $usuario = null;
	    if ($aut->esta_logado()) {
	        $usuario = $aut->pegar_usuario();
	    }
	    else {
			//$aut->expulsar();
		}

		$page_title = 'Contatos';
		include 'inc/head.php';
	?>		
	<body class="chn-contact">
		<?php
			require_once 'adm/connector.php';
			include 'inc/header.php';
			include 'inc/nav.php';
			$oConn = New Conn();
		?>		
		<main class="main_content">
			<aside>
				<ul>
					<li><a href="./">Home</a></li>
					<li>Contatos</li>
				</ul>
				<dl>
					<dt><h2 class="bgTitle">QUEREMOS ESTAR SEMPRE EM CONTATO COM VOC�</h2></dt>
					<dd>
						<span><img src="images/ilustraContatos.jpg" alt="" /></span>
						<article>
							<p>Todo o trabalho da <strong>SPATULA</strong> � realizado segundo nosso conceito de taylor made, ou seja, sob medida para os clientes. Por isso, caso voc� tenha alguma d�vida, sugest�o ou mesmo alguma reclama��o, entre em contato. Seu contato � muito importante pra gente.</p>
							<p>
								<strong>EXCEL�NCIA SPATULA</strong><br>
								Algumas vezes a amostra digital n�o consegue mostrar perfeitamente o resultado final de um produto. Por isso, voc� n�o precisa acreditar na tela do seu computador. A <strong>SPATULA</strong> enviar� sempre uma amostra f�sica para sua aprova��o antes de produzir todo o trabalho.
							</p>
							<p>
								Entre em contato pelo nossos contatos do SAC:<br>
								<strong>E-mail:</strong> <a href="mailto:contato@spatula.com.br">contato@spatula.com.br</a><br>
								<strong>Telefone:</strong> <a href="tel.:+55 11 2847.4991">+55 11 2847.4991</a><br>
								<strong>WhatsApp:</strong> <a href="tel.:+55 11 94206.0111">+55 11 94206.0111</a>
							</p>
						</article>
					</dd>
				</dl>
			</aside>
			<?php
				include 'inc/features.php';
			?>		
		</main>
		<?php
			include 'inc/footer.php';
		?>		
	</body>
</html>