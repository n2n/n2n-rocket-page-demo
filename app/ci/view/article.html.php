<?php
use n2n\impl\web\ui\view\html\HtmlView;
use n2n\web\ui\view\View;
use n2n\io\managed\img\impl\ThSt;
use ci\bo\CiArticle;
use rocket\impl\ei\component\prop\string\cke\ui\CkeHtmlBuilder;

$view = HtmlView::view($this);
$html = HtmlView::html($view);
 
$article = $view->getParam('article');
$view->assert($article instanceof CiArticle);
 
$ckeHtml = new CkeHtmlBuilder($view);

?>
<article class="ci ci-article row">
    <div class="col-sm-4">
        <?php $html->image($article->getFileImage(), ThSt::crop(400, 300), array('class' => 'img-fluid rounded')) ?>
    </div>
    <div class="col-sm-8">
        <h2><?php $html->out($article->getTitle()) ?></h2>
        <?php $ckeHtml->out($article->getDescriptionHtml()) ?>
    </div>
</article>