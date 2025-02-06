<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        <?php
        if (isset($titulo) && empty($titulo)){
            echo $titulo;
        } else {
            echo 'CineBox';
        }

        ?>
    </title>

    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/carrossel.css">
</head>

<body>
    <header>
        <nav>
            <a href="#" class="logo">
                <h1>Cine Box</h1>
            </a>
            <ul class="menu">
                <li><a href="./index.php">Inicio</a></li>
                <li><a href="./listarfilmes.php">Filmes</a></li>
                <li><a href="#">Sobre</a></li>
            </ul>

            <ul class="menu_icones">
                <li><a href="#">ico</a></li>
                <li><a href="#">ico</a></li>
                <li><a href="#">ico</a></li>
                <li><a href="#">ico</a></li>
            </ul>
        </nav>
    </header>