<?php 
include("config.php");
?>

<html lang="et">
    <head>
        <title>Muusikapood</title>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />

        <!-- Bootstrap CSS v5.2.1 -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
        />
    </head>

    <body>
        <header>
            <!-- place navbar here -->
        </header>
        <main>
        
        <div class="container">
        <h1>Albumi muutmine</h1>
        <form action="" method="get">
        <?php
        if (!empty($_GET['id']) && !empty($_GET['lias']) ) {
                $id = $_GET['id'];
                $artist = $_GET['artist'];
                $album = $_GET['album'];
                $aasta = $_GET['aasta'];
                $hind = $_GET['hind'];
                
                $paring = " UPDATE albumid
                SET artist = '$artist', album = '$album', aasta = '$aasta', hind = '$hind'
                Where id = '$id'
                ";
                $valjund = mysqli_query($yhendus, $paring);
              header("location: index.php?msg=true");
        }
            
        if (!empty($_GET['id'])) {
            $id = $_GET['id'];
        
        $paring = " SELECT *
        FROM albumid 
        WHERE id = $id
        ";
        //print_r($paring);
        $valjund = mysqli_query($yhendus, $paring);
        $rida  = mysqli_fetch_assoc($valjund);
        echo '<input type="number" name="id" value="'.$rida['id'].'" hidden><br>
            Artist <input type="text" name="artist" id="" value="'.$rida['artist'].'"><br>
            Album <input type="text" name="album" id="" value="'.$rida['album'].'"><br>
            Aasta <input type="NUMBER" name="aasta" id="" min="1900" value="'.$rida['aasta'].'"><br>
            Hind <input type="NUMBER" name="hind" id="" step="0.01" value="'.$rida['hind'].'"><br>
            <input type="submit" value="Muuda" name= "lias">
            ';


          }  

        ?>
        
        


        </form>

        </div>
</div>
        
        </div>
        
        </main>
        <footer>
            <!-- place footer here -->
        </footer>
        <!-- Bootstrap JavaScript Libraries -->
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"
        ></script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
