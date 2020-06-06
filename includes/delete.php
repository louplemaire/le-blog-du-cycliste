<?php
    // Include
    include './config.php';

    // Retrieve id and delete comment
    $id_article = (int)$_GET['id_article'];
    $id_comment = (int)$_GET['id_comment'];
    $pdo->exec('DELETE FROM comments WHERE id = '.$id_comment);

    // Redirect to home page
    header('location:../article.php?id_article='.$id_article);
    exit;