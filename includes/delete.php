<?php
    // Include
    include './config.php';

    $prepare = $pdo->prepare('DELETE FROM comments WHERE id = :id_comment');
    $prepare->bindValue(':id_comment', $_GET['id_comment'], PDO::PARAM_INT);
    $prepare->execute();

    // Redirect to home page
    $id_article = (int)$_GET['id_article'];
    header('location: ../article.php?id_article='.$id_article);
    exit;