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

		$page_title = 'Nossos Presentes';
		include 'inc/head.php';
	?>		
	<body class="chn-products">
		<?php
			require_once 'adm/connector.php';
			include 'inc/header.php';
			include 'inc/nav.php';
		?>		
		<main class="main_products">
			<?php
				include 'inc/nav_products.php';
			?>					
			<aside>
				<ul>
					<li><a href="./">Home</a></li>
					<li>Nossos Presentes</li>
				</ul>
				<?php
					$oConn = New Conn();
					$p_id = $_REQUEST["id_prod"];
					$oSlctProds = $oConn->SQLselector("*","produtos",'id = '.$p_id.' and status = 1','');

	                if ($oSlctProds->rowCount() > 0) {
	                	$rows = $oSlctProds->fetch(PDO::FETCH_ASSOC);
	                	/* T�tulo */
	                	if( isset($rows['title'])){
	                		echo "<h2 class='bgTitle'>" .$rows['title']. "</h2>";
	                		echo "<a class='btn-back' href='javascript:window.history.back();'>voltar</a>";
	                	}
						/* Galeria*/
						$oSlctImages = $oConn->SQLselector("*","galeria",'pid = '.$p_id,'id ASC');
 						if ($oSlctImages->rowCount() > 0) {
							echo "<div>";
							echo "	<input type='hidden' name='id' value='".$rows['id']."' />";
							echo "	<input type='hidden' name='title' value='".$rows['title']."' />";
							echo "	<input type='hidden' name='resume' value='".$rows['resume']."' />";
							$oImage = $oConn->SQLselector("*","galeria","id=".$rows['capa'],'');
							echo "	<input type='hidden' name='capa' value='".( ( $oImage->rowCount() > 0 ) ? $oImage->fetch(PDO::FETCH_ASSOC)['src']: 'images/produtos/logo_util.jpg')."' />";
							echo "	<p style='width:50%'><em>Deslize para ver as outras imagens</em></p>";
							echo "	<ul id='owl-product'>";
	 							while ( $row = $oSlctImages->fetch(PDO::FETCH_ASSOC) ) {
	 								echo "<li><img src='".$row["src"]."' alt='' /></li>";
	 							}
							echo "	</ul>";
							echo '	<div class="shopping_info">';
							echo "		<span><i class='fa fa-check-circle' aria-hidden='true'></i>Item Adicionado</span>";
							//echo '		<p></p>';
	                        if($rows['max_price']){
								echo ' 	<p class="lbl"><strong>R$'.$rows['max_price'].'</strong><em> unidade</em></p> ';
								echo '  <a class="btn-default btn-color-E" href="checkout.php?id_rows='.$rows['id'].'&min='.$rows['min_price'].'&max='.$rows['max_price'].'" alt="Adicionar ao Carrinho"><i class="fa fa-shopping-cart"></i> Adicionar ao Carrinho</a>';
								echo '	<a class="btn-default btn-color-B" href="orcamento.php?id_prod='.$rows['id'].'&cat='.$rows['cid'].'&sub='.$rows['sid'].'&capa='.$rows['capa'].'" alt="Solicitar Or�amento"><i class="fa fa-edit"></i> Solicitar Or�amento</a>';
							}else{
								echo '	<a class="btn-default btn-color-B" href="orcamento.php?id_prod='.$rows['id'].'&cat='.$rows['cid'].'&sub='.$rows['sid'].'&capa='.$rows['capa'].'" alt="Solicitar Or�amento">Solicitar Or�amento</a>';
							}
							echo "	</div>";
							echo "</div>";
 						}else{
							echo "<p>&nbsp;</p>";
 						}

	                	/* Informa��es */
	                	echo "<section class='product_description'>";
                		
                		if( isset($rows['description'])){
                			echo "<p>";
                			echo "	<strong>Descri��o do Produto</strong><br>" .$rows['description'];
                			echo "</p>";
                		}
                		if( isset($rows['size']) && !empty($rows['size']) ){
                			echo "<p>";
                			echo "	<strong>". ( ( stripos($rows['size'], 'ml') === false) ? "Tamanho" : "Capacidade")  ."</strong><br>".$rows['size'];
                			echo "</p>";
                		}

                        $colors = $oConn->SQLselector("*","colors","pid='".$p_id."'",'id ASC');
                        if ($colors->rowCount() > 0) {
                			echo "<p>";
                			echo "	<strong>Cores de preenchimento dispon�veis</strong><br>";
							while ( $row_colors = $colors->fetch(PDO::FETCH_ASSOC) ) {
								echo "<span class='color' style='background-color:#".$row_colors['color']."; ". (( $row_colors['color'] == 'ffffff') ? 'border:1px solid #f4f4f4; width:18px; height:18px;' : '' )."' title='".$row_colors['label']."'>&nbsp;</span>";
							}
                			echo "</p>";
                            
                        }

                		if( $rows['length'] > 0 && $rows['width'] > 0 && $rows['depth'] > 0 && $rows['radius'] == 0 ){
                			echo "<p>";
                			echo "	<strong>Dimens�es (C x L x P)</strong><br>" .$rows['length']. " x ".$rows['width']. " x ".$rows['depth']. " cm " ;
                			echo "</p>";
                		}else{
                			if( isset($rows['radius']) && !empty($rows['radius'])){
	                			echo "<p>";
	                			echo "	<strong>Raio Maior e Altura (R x A)</strong><br>" .$rows['radius']. " x ".$rows['height']. " cm " ;
	                			echo "</p>";
	                		}
                		}

                		if( isset($rows['weight']) && !empty($rows['weight'])){
                			echo "<p>";
                			echo "	<strong>Peso</strong><br>".$rows['weight']. " gr " ;
                			echo "</p>";
                		}
	                	echo "</section>";
	                }else{
	                    
	                    "N�o h� produto cadastrado";
	                }
	        	?>
	        	<div class="socials-links">
	        		<span class="text">Compartilhe este produto: </span>
					<span class='st_facebook_large' displayText='Facebook'></span>
					<span class='st_twitter_large' displayText='Tweet'></span>
					<span class='st_linkedin_large' displayText='LinkedIn'></span>
					<span class='st_googleplus_large' displayText='Google +'></span>
					<span class='st_email_large' displayText='Email'></span>		
				</div>
			</aside>
		</main>
		<?php
			include 'inc/footer.php';
		?>		
	</body>
</html>