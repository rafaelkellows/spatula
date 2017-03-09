<?php
    $pdo = new PDO('mysql:dbname=db_teste;host=db-teste.mysql.uhserver.com', 'spatula', 'Spatul@2016');
    //$pdo = new PDO('mysql:dbname=db_spatula;host=localhost', 'root', '');
    $sql = "select * from usuarios";
    $sqlAtivos = $sql." where status = 1";
    $sqlInativos = $sql." where status = 0";
    $all = $pdo->query($sql);
    $ativosTMP = $pdo->query($sqlAtivos); 
    $inativosTMP = $pdo->query($sqlInativos);

?>                
        <div class="title"><h5>Usu�rios</h5></div>
        
        <div class="stats">
            <ul>
                <li><a href="#" class="count grey" title=""><?php print $ativosTMP->rowCount(); ?></a><span><?php if( $ativosTMP->rowCount() > 1 ){ echo "Usu�rios ativos"; }else{ echo "Usu�rio ativo"; } ?></span></li>
                <li class="last"><a href="#" class="count grey" title=""><?php print $inativosTMP->rowCount(); ?></a><span><?php if( $inativosTMP->rowCount() > 1 ){ echo "Usu�rios inativos"; }else{ echo "Usu�rio inativo"; } ?></span></li>
            </ul>
            <div class="fix"></div>
        </div>

        <!-- Blockquote -->
        <blockquote class="first">
            Clique no <strong>Nome do Usu�rio</strong> abaixo para edit�-lo ou no bot�o "Inserir Novo Usu�rio" para adicionar um novo. 
        </blockquote>
        <!-- Statistics -->
        <div class="aligncenter first">
            <a href="page.php?nvg=user" title="" class="btnIconLeft mr10 mt5"><img src="images/icons/dark/user.png" alt="" class="icon" /><span>Inserir Novo Usu�rio</span></a>
        </div>

        <!-- Contact list -->        
        <div class="widget first">
            <div class="head"><h5 class="iUsers">Lista de Usu�rios Cadastrados</h5></div>
            <div id="myList-nav"></div>
            <ul id="myList">
            <?php
                if ($all->rowCount() > 0) {
                    while ( $row = $all->fetch(PDO::FETCH_ASSOC) ) {
                        echo '<li><a href="page.php?nvg=user&uid='.$row['id'].'">' .$row['name'].'</a>';
                        echo '  <ul class="listData">';
                        echo '      <li><a href="mailto:'.$row['email'].'" title="">'.$row['email'].'</a></li>';
                        echo '       <li><span class="'.($row['status'] == 1 ? 'green' : 'red').'">'.($row['status'] == 1 ? 'ativo' : 'inativo').'</span></li>';
                        echo '       <li><span class="cNote">'.($row['type'] == 1 ? 'Administrador' : 'Usu�rio').'</span></li>';
                        echo '  </ul>';
                        echo '</li>';
                    }
                }else{
                    "N�o h� Usu�rio cadastrado!";
                }
            ?>
            </ul>
        </div>

        <div class="aligncenter first">
            <a href="page.php?nvg=user" title="" class="btnIconLeft mr10 mt5"><img src="images/icons/dark/user.png" alt="" class="icon" /><span>Inserir Novo Usu�rio</span></a>
        </div>
