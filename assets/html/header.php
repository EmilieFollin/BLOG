<nav class="navbar navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a id="titre" href="#">
                Blog
            </a>
            <a href="http://localhost/html-css-js/Projet%20Groupe/Blog%20emilie/BLOG/assets/php/flux_rss.xml">
                <img src="http://www.craym.eu/images/template/rss_mini.png" alt="Flux RSS" border="0" />

            </a>
        </div>
        <ul class="nav navbar-nav">

        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li>
                <input type="search" placeholder="Search">
            </li>

            <?php

            if(!$_SESSION['login']) {
                echo ('
                                    
                                    <li style="margin:0px 10px;">
                                        <div class="button">
                                            <button class="button btn-5 pop-up-button-sign-in" style="margin: 10px auto; width:100%">Sign Up</button>
                                        </div>
                                    </li>
                                    
                                    <li  style="margin:0px 10px;">
                                        <button class="btn-5" style="margin: 10px auto; width:100%">Articles</button>
                                    </li>
                                    
                                    
                                    <li  style="margin:0px 10px;">
                                        <button class="btn-5 pop-up-button" style="margin: 10px auto; width:100%">login</button>
                                    </li>'
                );
            } else {
                echo ('
                                    <li  style="margin:0px 10px;">
                                        <button class="btn-5 pop-up-button" style="margin: 10px auto; width:100%">New Article</button>
                                    </li>  
                                    
                                     <li  style="margin:0px 10px;">
                                        <button class="btn-5 btn-mesarticles" style="margin: 10px auto; width:100%">Mes Articles</button>
                                    </li>                    
                                   
                                    
                                    <li  style="margin:0px 10px;">
                                     <button class="btn-5">    <a href="../html/admin.php#menuPrincipal" class="btn-5" style="margin: 10px auto; width:100%">Administrateur</a></button>
                                    </li>
                                    

                                    <li  style="margin:0px 10px;">
                                      <button class="btn-5">   <a href="../../index.php" class="btn-5" style="margin: 10px auto; width:100%">Logout</a></button>
                                    </li>
                                    ');
            }

            ?>
        </ul>
    </div>
</nav>




<div class="tag col-xs-12">
    <ul>
        <a href="">
            <li class="col-sm-2 col-xs-12 ">TRENDING</li>
        </a>
        <a href="">
            <li class="col-sm-2 col-xs-12 ">FOOD</li>
        </a>
        <a href="">
            <li class="col-sm-2 col-xs-12 ">MONEY</li>
        </a>
        <a href="">
            <li class="col-sm-2 col-xs-12">FUN</li>
        </a>
        <a href="">
            <li class="col-sm-2 col-xs-12">TECHNOLOGY</li>
        </a>
        <a href="">
            <li class="col-sm-2 col-xs-12">TRAVEL</li>
        </a>
    </ul>
</div>



