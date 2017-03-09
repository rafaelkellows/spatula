<!DOCTYPE html>
<html>
	<?php
	    require_once 'login/usuario.php';
	    require_once 'login/autenticador.php'; 
	    require_once 'login/sessao.php';
			require_once 'PagSeguroLibrary/PagSeguroLibrary.php'; 

	    $aut = Autenticador::instanciar();
	     
	    $usuario = null;
	    if ($aut->esta_logado()) {
	        $usuario = $aut->pegar_usuario();
	    }
	    else {
			//$aut->expulsar();
		}

		$page_title = 'Social';
		include 'inc/head.php';
	?>		
	<body class="chn-social">
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
					<li>Social</li>
				</ul>
				<dl>
					<dt><h2 class="bgTitle">COMPARTILHE SOLIDARIEDADE</h2></dt>
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