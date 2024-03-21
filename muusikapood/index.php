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
        <h1>Parimad albumid!!</h1>
        <form action="" method="get">
            Otsi: <input type="text" name="s">
            <input type="submit" value="otsi">


        </form>
        <div class="row row-cols-1 row-cols-md-3 g-4">
           <?php
        //ühendus andmebaasi
        if (!empty($_GET['s'])) {
            $s = $_GET['s'];
            $paring = ' SELECT album, artist 
                        FROM albumid 
                        WHERE album 
                        LIKE "%'.$s.'%" 
                        ';
        }
        else {
            $paring = " SELECT album, artist 
                        FROM albumid 
                        ORDER BY album ASC
                        LIMIT 10
                        ";
        }
            
            //saadan soovitud ühendusele minu päringu
            $valjund = mysqli_query($yhendus, $paring);
            //vastused
            while ($rida  = mysqli_fetch_assoc($valjund)) {
                //print_r ($rida);
                //echo $rida ['artist']. " - ". $rida ['album']. "<br>";
                echo '<div class="col">
                <div class="card">
                <img src="https://picsum.photos/600/400" alt="">
                  <div class="card-body">
                    <h5 class="card-title">'.$rida ['album'].'</h5>
                    <p class="card-text">'.$rida ['artist'].'</p>
                    <a herf="#" class= "btn btn-danger">Osta</a>
                  </div>
                </div>
              </div>';

            }

?> 
  
 
  
 
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
