<?php
    // Config
    include './includes/config.php';

    // Select articles
    $query = $pdo->query('SELECT id, title, image FROM articles');
    $articles = $query->fetchAll();

    // Header
    include './includes/header.php';
?>
<!-- Home page title -->
<h1 class="home-title">Nos articles</h1>
<!-- Articles list -->
<div class="articles-list">
    <?php foreach($articles as $_article): ?>
        <!-- Article -->
        <article class="article">
            <!-- Article link -->
            <a href="article.php?id_article=<?= $_article->id ?>">
                <!-- Article title -->
                <div class="article-title"><?= $_article->title ?></div>
                <!-- Article image -->
                <img src="<?= $_article->image ?>" alt="Image de l'article">
                <!-- Filter -->
                <div class="filter"></div>
            </a>
        </article>
    <?php endforeach ?>
</div>
<?php
    // Footer
    include './includes/footer.php';
?>