<?php
session_start();
ob_start();
include_once 'conexao.php';

// Receber o id do infografico
 $id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);

// Incluir o arquivo com head
include_once './include/head.php';


    // Recuperar o infografico por titulo
    $query_infos = "SELECT info.id AS id_info,
                          info.titulo, 
                          info.nome, 
                          info.descricao, 
                          info.id_categorias, 
                          info.thumb, 
                          info.capa,
                          info.logo,
                          info.link,
                          cat.nome AS categoria 
                  FROM infograficos AS info
                  INNER JOIN categorias AS cat ON cat.id=info.id_categorias
                  WHERE info.id=:id";
    $result_infos = $conn->prepare($query_infos);
    $result_infos->bindParam(':id', $id);
    $result_infos->execute();

    // Acessa o IF quando encontrar algum registro no bd
    if(($result_infos) AND ($result_infos->rowCount() !=0 )){
        while ($row_info = $result_infos->fetch(PDO::FETCH_ASSOC)) {
          // echo "<pre>";
          // var_dump($row_info);
          // echo "</pre>";
          extract($row_info);
        }
    }else{
      $_SESSION['msg'] = "<div class='alert alert-danger' id='msg-success' role='alert'>Erro: Nenhum Registro encontrado!</div>";
    }

  ?>
 <title><?php echo mb_convert_case($nome, MB_CASE_TITLE, 'UTF-8'); ?> | <?php echo mb_convert_case($categoria, MB_CASE_TITLE, 'UTF-8');  ?>  </title>
</head>

<!-- STYLE QUE MUDA O BACKGROUND -------->

    <style>
        #hero {
            height: 700px;
            background-image: url('assets/infograficos/<?php echo $id . '/' . $capa ?>');
            background-repeat: no-repeat;
            background-position: center;
            background-size: 100%;
            position: absolute;
            z-index: 1;
            top: 0;
        }
        @media screen and (max-width: 480px){

            #hero {
                top: -240px;
            }
        }
        @media screen and (min-width: 481px) and (max-width: 767px){
            #hero {
                top: -70px;
                width: 175%;
            }            

        }
        @media screen and (min-width: 701px) and (max-width: 900px){    
            #hero_infos {
                margin-top: 300px;
                margin-left: -15px;
            }
        }

        @media screen and (min-width: 768px) and (max-width: 900px){
            #hero {
                top: -155px;
                width: 100%;
            }
        }
        @media screen and (min-width: 900px) and (max-width: 1024px){
            #hero {
                top: -20px;
                width: 100%;
            }
            #hero_infos {
            margin-left: -10px;
            }
            .main-content h5 {
                margin-left: 10px;
            }
            .conteudo {
                margin-left: 10px;
                width: 95%;
            }
            .obras {
                margin-left: -20px;
                grid-template-columns: repeat(2, 1fr);
                grid-gap: 50px;
            }
            .titulo {
                margin-left: 20px;
            }
            #link-container {
                width: 87%;
                grid-template-columns: repeat(3, 1fr);
            }
        }

    </style>
    <!-- FIM DO STYLE QUE MUDA O BACKGROUND -------->

<body>   

            <?php
                include 'include/header.php';
            ?>
    
    <!-- HERO MAIN HOME------>
    <div id="hero" class="container-fluid">
        <div class="container">
            <div class="row" id="hero_infos">
                <div class="col-6">
                    <img class="logo" src="assets/infograficos/<?php echo $id . '/' . $logo ?>" alt="" />
                    <h3 class="text-white"><?php echo mb_convert_case($titulo, MB_CASE_TITLE, 'UTF-8') . ' | ' . mb_convert_case($categoria, MB_CASE_TITLE, 'UTF-8'); ?></h3>
                    <p class="text-white">
                        <!-- Bem-vindo ao mundo fascinante das curiosidades! Imagine um lugar onde você pode explorar fatos intrigantes, 
                        descobrir segredos surpreendentes da história e desvendar os mistérios mais curiosos do mundo. -->
                        <?php echo $descricao ?>
                    </p>
                </br>
                <a href="#">
                <button class="btn btn-lg btn-custom-translucent"><span class="mdi mdi-information-outline"></span>
                    Infográfico 
                </button>
                </a>
                </div>
            </div>
        </div>
    </div>
        <!--FIM DO HERO MAIN HOME------>

    
    <div class="main-content">
        <section>
            <!-- CONTEÚDO DO INFOGRÁFICOS ---->
                    <?php
                        //----- SELECT NA TABELA CONTEÚDO ----------------->
                      $query_conteudo = "SELECT id_conteudo, id_info, titulo, conteudo, referencia
                                  FROM conteudo WHERE id_info = $id_info";
                      $result_conteudo = $conn->prepare($query_conteudo);
                      $result_conteudo->execute();
                        //--- FIM DO SELECT NA TABELA CONTEÚDO ----------------->
                    ?>
            <div class="container-fluid">
                <div class="container">

                    <div class="row">
                        <?php
                            // WHILE NA TABELA CONTEÚDO WHERE NO ID CATEGORIAS
                          while($row_conteudo = $result_conteudo->fetch(PDO::FETCH_ASSOC)){
                            /*echo "<pre>";
                            var_dump($row_aluno);
                            echo "</pre>";*/
                            extract($row_conteudo);
                            // FIM DO WHILE NA TABELA CONTEÚDO WHERE NO ID CATEGORIAS
                        ?>
                        <div class="col-3">
                            <h5 class="text-white"><?php echo $titulo ?></h5>
                        </div>
                    </div>
                
                <div class="conteudo">
                   <p><?php echo $conteudo; ?></p> 
                
                
                <div class="row">
                    <div class="but-ref">
                        <span class="mdi mdi-dots-horizontal"></span>
                    </div>
                    <div class="referencia">
                        <p>Referência: <?php echo $referencia; ?></p>
                    </div>                  

                </div>
                 <?php
                    //------------ FECHAMENTO DO WHILE -------------------->
                        }
                    ?>
                    </div>
                 
                </div>
               
            </div>
            
           
        </section>
</div>
                        <!-- FIM DO SELECT NA TABELA CONTEÚDO -->


                        <!------------ HISTÓRIA----------------------- ---->
            <section>            
                    <?php
                        //----- SELECT NA TABELA CONTEÚDO ----------------->
                      $query_historia = "SELECT id_historia, id_info, titulo_hist, data_hist, desc_hist, ref_hist FROM historia WHERE id_info = $id_info";
                      $result_historia = $conn->prepare($query_historia);
                      $result_historia->execute();
                        //--- FIM DO SELECT NA TABELA CONTEÚDO ----------------->
                    ?>
            <div class="container-fluid" style="margin-top: -30px;">
                <div class="container">
                      <?php
                            // WHILE NA TABELA HISTÓRIA WHERE ID INFOGRÁFICO
                          while($row_historia = $result_historia->fetch(PDO::FETCH_ASSOC)){
                            /*echo "<pre>";
                            var_dump($row_aluno);
                            echo "</pre>";*/
                            extract($row_historia);
                            // FIM DO WHILE NA TABELA HISTÓRIA------------------
                        ?>
                    <div class="row">
                       
                        <div class="col-3 historia">
                          
                            <h5 class="text-white historia"><?php echo $titulo_hist; ?></h5>
                            <h5 class="text-white"><?php echo $data_hist; ?></h5>
                        </div>
                    </div>                    
                    <div class="row">
                        <div class="col-9 historia">
                            <p><?php echo $desc_hist; ?></p>
                        </div>
                        <div class="but-ref_hist">
                        <span class="mdi mdi-dots-horizontal"></span>
                        </div>
                        <div class="ref_hist">
                        <p>Referência: <?php echo $ref_hist; ?></p>
                        </div> 
                    </div>
                    
                 <?php
                    //------------ FECHAMENTO DO WHILE -------------------->
                        }
                    ?>   
                                  

                </div>
                 
            </div>
           
        </section>

                        <!------------FIM  HISTÓRIA----------------------- ---->
        
        <section>
            <!-- OBRAS ---->
                    <?php
                        //----- SELECT NA TABELA OBRAS ----------------->
                      $query_obra = "SELECT id_obra, id_info, titulo_obra, desc_obra, img_obra
                                  FROM obra WHERE id_info = $id_info";
                      $result_obra = $conn->prepare($query_obra);
                      $result_obra->execute();
                    ?>
            <div class="container-fluid">
                <div class="container">
                    <?php
                            // WHILE NA TABELA OBRA
                          while($row_obra = $result_obra->fetch(PDO::FETCH_ASSOC)){
                            /*echo "<pre>";
                            var_dump($row_aluno);
                            echo "</pre>";*/
                            extract($row_obra);
                            // FIM DO WHILE NA TABELA OBRA
                        ?>

                    <ul class="obras">

                        <li>
                            
                        
                            <img src="assets/infograficos/<?php echo $id . '/'.  $img_obra; ?>">
                            <div class="titulo-obra">
                                 <h5><?php echo $titulo_obra ?></h5>
                            </div>                           
                            <p class="text-obra"><?php echo $desc_obra ?></p>

                        </li>
                        <?php
                    //------------ FECHAMENTO DO WHILE -------------------->
                        }
                    ?>
                        
                    </ul>

                </div>
                
            </div>
            
            <br><br>
        </section>
        
        <!------------ GRID THUMBS E INFOGRÁFICOS ----------------->
        <section>
            <div class="container">
                <?php
                        //----- SELECT NA TABELA INFOGRÁFICOS ----------------->
                      $query_infos = "SELECT id as id_info, nome, id_categorias, thumb
                                  FROM infograficos WHERE id_categorias = $id_categorias";
                      $result_infos = $conn->prepare($query_infos);
                      $result_infos->execute();
                        //--- FIM DO SELECT NA TABELA INFOGRÁFICOS ----------------->
                ?>
               <div class="row">
                   <div class="col-12">
                       <h5 class="titulo">Títulos Semelhantes</h5>
                   </div>
               </div> 
            </div>
            <div id="link-container" class="col-12">
                <?php
                            // WHILE NA TABELA INFOGRAFICOS WHERE NO ID CATEGORIAS
                          while($row_infos = $result_infos->fetch(PDO::FETCH_ASSOC)){
                            /*echo "<pre>";
                            var_dump($row_aluno);
                            echo "</pre>";*/
                            extract($row_infos);
                            // FIM DO WHILE NA TABELA INFOGRAFICOS WHERE NO ID CATEGORIAS
                        ?>
                <div class="gallery">
                    <a href="detalhes?id=<?php echo $id_info ?>">
                    <img class="img-fluid" src="assets/infograficos/<?php echo $id_info . '/' . $thumb; ?>" alt="<?php echo $nome; ?>" />
                    </a>
                </div>
                <?php
                    //------------ FECHAMENTO DO WHILE -------------------->
                        }
                    ?>
            </div>
        </section>

        <!------------ FIM DO GRID THUMBS E INFOGRÁFICOS ----------------->
    </div>  
        
</body>
</html>