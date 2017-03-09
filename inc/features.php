<?php
//Features
$oSlct = $oConn->SQLselector("*","produtos","status=1 AND combine=1",'modified DESC');
$arrItens = array();

if ($oSlct->rowCount() > 0) {
	while ( $prod = $oSlct->fetch(PDO::FETCH_ASSOC) ) {
		array_push($arrItens, $prod['id']);
	}
	srand ((float)microtime()*1000000);
	shuffle ($arrItens);

	echo '<section class="features">';
	echo '	<h2 class="bgTitle">Produtos que combinam com voc�</h2>';
	echo '	<div id="owl-features">';
	
	while (list (, $number) = each ($arrItens)) { 
		$oSlctByItem = $oConn->SQLselector("*","produtos","status=1 AND combine=1 AND id='$number'",'modified DESC');
		$row_item = $oSlctByItem->fetch(PDO::FETCH_ASSOC);
		echo '<dl>';
		$title = ( strlen($row_item['title']) <= 44 ) ? $row_item['title'] : substr($row_item['title'], 0,44).'...' ;
		echo '	<dt id="'.$row_item['id'].'"><strong>C�d. '.$row_item['id'].'</strong><a href="./produto.php?id_prod='.$row_item['id'].'&cat='.$row_item['cid'].'&sub='.$row_item['sid'].'">'.$title.'</a></dt>';
		echo '	<dd>';
		echo '		<span class="label"><i class="fa fa-check-circle" aria-hidden="true"></i>Item Adicionado</span>';
		$oImage = $oConn->SQLselector("*","galeria","id='".$row_item['capa']."'",'');
		echo '		<img src="'.( ( $oImage->rowCount() > 0 ) ? $oImage->fetch(PDO::FETCH_ASSOC)['src']: 'images/produtos/logo_util.jpg').'" alt="" />';
		echo '		<span class="resume">'.$row_item['resume'].'</span>';
        if($row_item['min_price'] && $row_item['max_price'] ){
			echo ' 		<p class="lbl"><strong>R$'.$row_item['min_price'].'</strong> <em>2 ou + unidades</em><br><strong>R$'.$row_item['max_price'].'</strong><em> unidade</em></p> ';
		}
		echo '		<a class="btn-short" href="./produto.php?id_prod='.$row_item['id'].'&cat='.$row_item['cid'].'&sub='.$row_item['sid'].'" title="[ + ] ver mais">[ + ] ver mais</a>';
		echo '		<a class="btn-default btn-color-B" href="checkout.php?id_rows='.$row_item['id'].'&min='.$row_item['min_price'].'&max='.$row_item['max_price'].'" title="Solicitar Or�amento"><i class="fa fa-edit"></i></a>';
        if($row_item['min_price'] && $row_item['max_price'] ){
			echo '		<a class="btn-buy btn-color-E" href="checkout.php?id_row='.$row_item['id'].'&min='.$row_item['min_price'].'&max='.$row_item['max_price'].'&weight='.$row_item['weight'].'" title="Adicionar ao Carrinho"><i class="fa fa-shopping-cart"></i></a>';
		}
		echo '	</dd>';
		echo '</dl>';
	}
    echo '	</div>';
    echo '	<nav>';
    echo '		<a href="javascript:void(0);" title="previous"><</a>';
    echo '		<a href="javascript:void(0);" title="next">></a>';
    echo '	</nav>';
	echo '</section>';
}
?>
