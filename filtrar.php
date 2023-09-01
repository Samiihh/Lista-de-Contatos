<?php

include_once "conexao.php";

// Obter a data do filtro
$filtroData = $_POST['filtroData']; 


// Consultar o banco de dados para registros com data de cadastro ou data de alteração igual à data do filtro
$query_filter = "SELECT id,nome,datacadastro,dataalteracao FROM contatos WHERE DATE(datacadastro) = :filtroData OR DATE(dataalteracao) = :filtroData";

$query_filter = $conn->prepare($query_filter);
$query_filter->bindParam(':filtroData', $filtroData);
$query_filter->bindParam(':filtroData', $filtroData);
$query_filter->execute();

$resultados = $query_filter->fetchAll(PDO::FETCH_ASSOC);

//Cabecalho da table
$tabelaHTML = "<div class='table-responsive'>
<table class='table table-striped table-bordered'>
    <thead>
        <tr>
        <th>ID</th>
        <th>Nome</th>
        <th>Data Cadastro</th>
        <th>Data Alteracao</th>
        </tr>
    </thead>
    <tbody>";

// Construa uma tabela HTML com os resultados e retorne-a como resposta
foreach ($resultados as $registro) {

    $tabelaHTML .= '<tr>';
    $tabelaHTML .= '<td>' . $registro['id'] . '</td>';
    $tabelaHTML .= '<td>' . $registro['nome'] . '</td>';
    $tabelaHTML .= '<td>' . $registro['datacadastro'] . '</td>';
    $tabelaHTML .= '<td>' . $registro['dataalteracao'] . '</td>';
    $tabelaHTML .= '</tr>';
}

$tabelaHTML .= "</tbody>
</table>
</div>";

echo $tabelaHTML; // Retorne a tabela HTML como resposta


