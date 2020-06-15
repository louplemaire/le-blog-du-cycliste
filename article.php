<?php
    // Includes
    include './includes/config.php';

    // Select article
    $query = $pdo->prepare('SELECT id, title, text, date, image FROM articles WHERE id = :id_article');
    $query->bindValue(':id_article', $_GET['id_article'], PDO::PARAM_INT);
    $query->execute();
    $article = $query->fetchAll();

    // Select comments
    $query = $pdo->prepare('SELECT id, id_article, text FROM comments WHERE id_article = :id_article');
    $query->bindValue(':id_article', $_GET['id_article'], PDO::PARAM_INT);
    $query->execute();
    $comments = $query->fetchAll();

    // Messages
    $errorMessages = [];
    $successMessages = [];

    // Base value
    $text = '';

    // Form sent
    if(!empty($_POST)){
        // Sanatize
        $text = trim(strip_tags($_POST['comment']));

        // Error
        if(empty($text)){
            $errorMessages[] = 'Veillez entrer votre commentaire';
        }

        // Success
        if(empty($errorMessages)){
            // Save in database
            $prepare = $pdo->prepare('
                INSERT INTO
                    comments (id_article, text)
                VALUES
                    (:id_article, :text)
            ');
            $prepare->bindValue(':id_article',$id_article,PDO::PARAM_INT);
            $prepare->bindValue(':text', $text);
            $result = $prepare->execute();

            if(!$result){
                $successMessages[] = 'Un problème est survenu, veillez contacter un administrateur';
            }

            // Message
            $successMessages[] = 'Votre commentaire a été envoyé';

            // Reset value
            $text = '';

            // Refresh page
            echo "<meta http-equiv='refresh' content='0'>";
        }
    }

    // Header
    include './includes/header.php';
?>
<!-- Article title -->
<h1 class="article-title"><?= $article[0]->title ?></h1>
<!-- Article date -->
<div class="article-date">
    <strong>Date :</strong>
    <?php
        // Need to date_create to be in the good format to use date_format to write the date in french
        $date = date_create($article[0]->date);
        // Write the date in french format
        echo date_format($date,"d/m/Y");
    ?>
</div>
<!-- Messages -->
<?php foreach($errorMessages as $_message):?>
    <div class="message-error"><?= $_message ?></div>
<?php endforeach ?>
<?php foreach($successMessages as $_message):?>
    <div class="message-success"><?= $_message ?></div>
<?php endforeach ?>
<!-- Article content -->
<div class="article-content">
    <!-- Article image -->
    <img class="article-image" src="<?= $article[0]->image ?>" alt="Image de l'article">
    <!-- Article text -->
    <div class="article-text"><?= $article[0]->text ?></div>
    <!-- Divider -->
    <div class="content-divider"></div>
</div>
<!-- Add comment -->
<form class="add-comment" action="#" method="post">
    <label for="comment">Votre commentaire</label>
    <input class="comment-text" id="comment" type="text" placeholder="Votre commentaire" name="comment" value="<?= $text ?>">
    <input class="comment-submit" type="submit">
</form>
<!-- Comments -->
<ul class="article-comments">
    <?php foreach($comments as $_comment): ?>
        <li>
            <!-- Comment -->
            <?= $_comment->text ?>
            <!-- Delete comment -->
            <a class="delete-comment" href="includes/delete.php?id_article=<?= $article[0]->id ?>&id_comment=<?= $_comment->id ?>">Supprimer</a>
        </li>
        <!-- Divider -->
        <div class="comment-divider"></div>
    <?php endforeach ?>
</ul>
<?php
    // Footer
    include './includes/footer.php';
?>