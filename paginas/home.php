<?php
session_start();
ob_start();
include_once 'conexao.php';

// Incluir o arquivo com head
include_once './include/head.php';
?>


    <title>Home</title>
</head>

<!-- STYLE QUE MUDA O BACKGROUND -------->

    <style>
        #hero {
            height: 700px;
            background-image: url('assets/home/capa-home-n-historias.png');
            background-repeat: no-repeat;
            background-position: center;
            background-size: 100%;
            position: absolute;
            z-index: 1;
            top: 0;
        }

        @media screen and (max-width: 480px){

            #hero {
                top: -250px;
            }
        }
        @media screen and (min-width: 481px) and (max-width: 767px){
            #hero {
                top: -70px;
                width: 175%;
            }

        }
        @media screen and (min-width: 768px) and (max-width: 900px){
            #hero {
                top: -100px;
                width: 257%;
            }
        }
        @media screen and (min-width: 900px) and (max-width: 1024px){
            #hero {
                top: 200px;
                width: 225%;
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
                    <img class="logo" src="assets/home/logo-home-n-historias.png" alt="Capa Home" />
                    <h3 class="text-white">2024 | Infográficos</h3>
                    <p class="text-white">
                        Bem-vindo ao mundo fascinante das curiosidades! Imagine um lugar onde você pode explorar fatos intrigantes, 
                        descobrir segredos surpreendentes da história e desvendar os mistérios mais curiosos do mundo.
                    </p>
                </br>
                <a href="#">
                <button class="btn btn-lg btn-custom-translucent"><span class="mdi mdi-information-outline"></span>
                    Mais informações 
                </button>
                </a>
                </div>
            </div>
        </div>
    </div>
        <!--FIM DO HERO MAIN HOME------>

    <!------------- THUMBS E INFOGRÁFICOS -------------------------------->
    <div class="main-content">
        <section>

            

                <?php
                    //--- SELECT GATEGORIAS -------------------------->
                    $query_categorias = "SELECT id, nome FROM categorias";
                    $result_categorias = $conn->prepare($query_categorias);
                    $result_categorias->execute();
                     while($row_categoria = $result_categorias->fetch(PDO::FETCH_ASSOC)){
                      extract($row_categoria);
                      //----- FIM DO SELECT GATEGORIAS -------------------------->
                ?>

            

            <div class="container">

                

                    <?php
                        //----- SELECT NA TABELA INFOGRÁFICOS ----------------->
                      $query_infos = "SELECT id as id_info, nome, id_categorias, thumb, capa
                                  FROM infograficos WHERE id_categorias = $id  ORDER BY id_categorias, id";
                      $result_infos = $conn->prepare($query_infos);
                      $result_infos->execute();
                        //--- FIM DO SELECT NA TABELA INFOGRÁFICOS ----------------->
                    ?>

                

                <div class="row">
                    <div class="col-12">
                        <h5 class="text-white"><span>N - </span><?php echo $nome ?></h5>
                    </div>
                </div>
            </div>
            <div class="col-12">
                <ul class="filme_lista">

                    
                        <?php
                            // WHILE NA TABELA INFOGRAFICOS WHERE NO ID CATEGORIAS
                          while($row_infos = $result_infos->fetch(PDO::FETCH_ASSOC)){
                            // echo "<pre>";
                            // var_dump($row_infos);
                            // echo "</pre>";
                            extract($row_infos);
                            // FIM DO WHILE NA TABELA INFOGRAFICOS WHERE NO ID CATEGORIAS
                        ?>

                    
                    <li class="filme">
                        <a href="detalhes?id=<?php echo $id_info ?>">
                        <img class="img-fluid" src="assets/infograficos/<?php echo $id_info; ?>/<?php echo $thumb ?>" alt="" />
                        </a>
                    </li>

                    
                    <?php
                    //------------ FECHAMENTO DO WHILE -------------------->
                        }
                    ?> 

                </ul>
            </div>
                
                <?php
                //---------- FECHAMENTO DO SELECT CATEGORIAS -------------------->
                    }
                ?>

        </section>

        <!-----------------FIM DO THUMBS E INFOGRÁFICOS------------------------------------>
            
        <!-- SECTION INVENTORES -->
        <!-- <section>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h5 class="text-white"><span>N-</span>Inventores</h5>
                    </div>
                </div>
            </div>
            <div class="col-12">
                <ul class="filme_lista">
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/1/thumb-santos-dumont.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/2/thumb-einstein.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/3/thumb-isaac-newton.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/16/thumb-nikola-tesla.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/17/thumb-thomas-edson.png" alt="" />
                    </li>
                     <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/1/thumb-santos-dumont.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/2/thumb-einstein.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/3/thumb-isaac-newton.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/16/thumb-nikola-tesla.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/17/thumb-thomas-edson.png" alt="" />
                    </li>
                </ul>
            </div>
        </section> -->
            <!-- FIM DA SECTION INVENTORES -->
        
        <!-- SECTION PLANETAS -->
        <!-- <section>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h5 class="text-white"><span>N-</span>Planetas</h5>
                    </div>
                </div>
            </div>
            <div class="col-12">
                <ul class="filme_lista">
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/4/thumb-terra.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/5/thumb-marte.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/6/thumb-sol.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/4/thumb-terra.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/5/thumb-marte.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/6/thumb-sol.png" alt="" />
                    </li>
                    
                </ul>
            </div>
        </section> -->
            <!-- FIM DA SECTION PLANETAS -->
        
        <!-- SECTION CURIOSIDADES -->
        <!-- <section>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h5 class="text-white"><span>N-</span>Curisidades</h5>
                    </div>
                </div>
            </div>
            <div class="col-12">
                <ul class="filme_lista">
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/7/thumb-ano-bissexto.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/8/thumb-santos-wright.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/15/thumb-sete-maravilhas.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/7/thumb-ano-bissexto.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/8/thumb-santos-wright.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/15/thumb-sete-maravilhas.png" alt="" />
                    </li>
                    
                </ul>
            </div>
        </section> -->
            <!-- FIM DA SECTION PLANETAS -->
        
         <!-- SECTION PERSONAGENS -->
         <!-- <section>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h5 class="text-white"><span>N-</span>Personagens</h5>
                    </div>
                </div>
            </div>
            <div class="col-12">
                <ul class="filme_lista">
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/9/thumb-senna.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/10/thumb-pele.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/14/thumb-zumbi-dos-palmares.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/9/thumb-senna.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/10/thumb-pele.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/14/thumb-zumbi-dos-palmares.png" alt="" />
                    </li>
                    
                    
                </ul>
            </div>
        </section> -->
            <!-- FIM DA SECTION PERSONAGENS -->
            
        <!-- SECTION GÊNIOS DA MÚSICA -->
        <!-- <section>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h5 class="text-white"><span>N-</span>Gênios da Música</h5>
                    </div>
                </div>
            </div>
            <div class="col-12">
                <ul class="filme_lista">
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/11/thumb-sebastian-bach.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/12/thumb-mozart.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/13/thumb-vivaldi.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/11/thumb-sebastian-bach.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/12/thumb-mozart.png" alt="" />
                    </li>
                    <li class="filme">
                        <img class="img-fluid" src="assets/infograficos/13/thumb-vivaldi.png" alt="" />
                    </li> 
                </ul>
            </div>
        </section> -->
            <!-- FIM DA SECTION GÊNIOS DA MÚSICA -->
        
    </div>
        

        
</body>
</html>