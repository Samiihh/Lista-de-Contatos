<?php

include_once "conexao.php";

// Obter a data do filtro
$filtroData = $_POST['filtroData'];

// Consultar o banco de dados para registros com data de cadastro ou data de alteração igual à data do filtro
$query_filter = "SELECT * FROM contatos WHERE DATE(datacadastro) = :filtroData OR DATE(dataalteracao) = :filtroData";

$query_filter = $conn->prepare($query_filter);
$query_filter->bindParam(':filtroData', $filtroData);
$query_filter->bindParam(':filtroData', $filtroData);
$query_filter->execute();

$resultados = $query_filter->fetchAll(PDO::FETCH_ASSOC);
var_dump($_POST);
var_dump($resultados);
die;

// Construa uma tabela HTML com os resultados e retorne-a como resposta
$tabelaHTML = '<table>'; // Construa a tabela HTML com base nos resultados
foreach ($resultados as $registro) {
    $tabelaHTML .= '<tr>';
    $tabelaHTML .= '<td>' . $registro['id'] . '</td>';
    $tabelaHTML .= '<td>' . $registro['nome'] . '</td>';
    $tabelaHTML .= '<td>' . $registro['data_cadastro'] . '</td>';
    $tabelaHTML .= '<td>' . $registro['data_alteracao'] . '</td>';
    $tabelaHTML .= '</tr>';
}
$tabelaHTML .= '</table>';

echo $tabelaHTML; // Retorne a tabela HTML como resposta


