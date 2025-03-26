<?php
require './classes/Filmes.php';

$titulo = 'CineBox - Filmes';
include './includes/header.php';

$filme = new Filmes();
$dadosFilmes = $filme->exibirListarFilmes();

include './includes/filme_lista.php';
include './includes/footer.php';