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

		$page_title = 'Nosso Trabalho';
		include 'inc/head.php';
	?>		
	<body class="chn-wedo">
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
					<li>A Empresa</li>
				</ul>
				<dl>
					<dt><h2 class="bgTitle">NOSSO TRABALHO - Presente que marca a mem�ria Futura</h2></dt>
					<dd>
						<span><img src="images/ilustraTrabalho.jpg" alt="" /></span>
						<article>
							<p>A <strong>SPATULA</strong> � uma empresa criada para oferecer a experi�ncia do prazer de ser presenteado. Sua miss�o � usar a criatividade para se destacar no segmento de presentes personalizados, entregando sempre brindes com qualidade.</p>
							<p>O objetivo da empresa � se consolidar como refer�ncia no mercado, com alta efici�ncia financeira e confian�a do consumidor. O presente <strong>SPATULA</strong> � aquele que marca a mem�ria futura.</p>
						</article>
					</dd>
				</dl>
				<dl>
					<dt><h2 class="bgTitle">NOSSA FILOSOFIA - No que acreditamos</h2></dt>
					<dd>
						<span><img src="images/ilustraNossaFilosofia.jpg" alt="" /></span>
						<article>
							<p>O trabalho da <strong>SPATULA</strong> � desenvolvido em torno de tr�s pilares que d�o sustenta��o e sentido a toda opera��o.</p>
							<p>
								<strong>BELEZA</strong><BR>
								Os presentes s�o feitos para impressionar pelo visual e pela qualidade do acabamento. S�o produtos que se destacam pelo bom gosto e surpreendem sempre de forma positiva quem recebe.
							</p>
							<p>
								<strong>ORGANIZA��O</strong><BR>
								A equipe enxuta est� organizada para atender os pedidos com m�xima efici�ncia, atuando sempre dentro do prazo, em busca das melhores op��es para voc� presentear com emo��o e a certeza da entrega.
							</p>
							<p>
								<strong>ESTRUTURA</strong><BR>
								A forma de trabalhar da <strong>SPATULA</strong> tem como objetivo entregar qualidade e transpar�ncia nos neg�cios. Toda a cadeia de produ��o � formada com um rigoroso controle de cada pe�a que � produzida em nosso sistema taylor made.
							</p>
						</article>
					</dd>
				</dl>
				<dl>
					<dt><h2 class="bgTitle">SOCIAL - Compartilhe Solidariedade</h2></dt>
					<dd>
						<span><img src="images/ilustraSocial.jpg" alt="" /></span>
						<article>
							<p>A <strong>SPATULA</strong> acredita que todos podem contribuir para constru��o de uma sociedade mais justa e feliz. Por isso, a cada dois meses escolhe uma institui��o para fazer doa��es de brindes personalizados que poder�o ajudar no desempenho de suas atividades.</p>
							<p>Se voc� tem uma institui��o para indicar acesse nosso site e veja como funciona este projeto.</p>
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