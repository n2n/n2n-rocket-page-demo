<?php
	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
	use news\bo\NewsArticle;
	use n2n\l10n\DateTimeFormat;
	use news\bo\NewsComment;
use n2n\io\managed\img\impl\ThSt;
	
	$view = HtmlView::view($this);
	$html = HtmlView::html($view);
	$request = HtmlView::request($view);
	
	$newsArticle = $view->getParam('newsArticle');
	$view->assert($newsArticle instanceof NewsArticle);
	
	$newsAuthor = $newsArticle->getAuthor();
	$comments = $newsArticle->getNewsComments();
	
	$n2nLocale = $request->getN2nLocale();
	
	$view->useTemplate('\tmpl\view\template.html', array('showTitle' => false, 'smallContainer' => true));
?>
<!-- News Article -->
<article class="news-article">
	<h1 class="news-article-title"><?php $html->out($newsArticle->getTitle()) ?></h1>
	
	<?php if (count($newsArticle->getNewsCategories()) > 0): ?>
		<ul class="news-article-categories list-inline">
			<?php foreach ($newsArticle->getNewsCategories() as $newsCategory): ?>
				<li class="list-inline-item"><?php $html->out($newsCategory->t($n2nLocale)->getName()) ?></li>
			<?php endforeach ?>
		</ul>
	<?php endif ?>
	<?php if (null !== $date = $newsArticle->getPublished()): ?>
		<span class="news-article-date">
			<?php $html->l10nDate($date, DateTimeFormat::STYLE_LONG) ?>
		</span>
	<?php endif ?>
	
	<p class="lead"><?php $html->out($newsArticle->getLead()) ?></p>
	
	<?php if (null !== $newsImage = $newsArticle->getImage()): ?>
		<?php $html->image($newsImage, ThSt::prop(750, 500), array('class' => 'news-article-img img-fluid rounded')) ?>
	<?php endif ?>
	
	<?php foreach ($newsArticle->getContentItems() as $contentItem): ?>
		<?php $html->out($contentItem->createUiComponent($view)) ?>
	<?php endforeach ?>
	
	<?php if (null !== $newsAuthor): ?>
		<div class="news-author row align-items-center">
			<div class="col-4 col-lg-3">
				<?php if (null !== $authorImg = $newsAuthor->getFoto()): ?>
					<?php $html->image($authorImg, ThSt::crop(160, 160), array('class' => 'img-fluid rounded-circle', 
							'alt' => 'Team Member')) ?>
				<?php endif ?>
			</div>
			<div class="col-8 col-lg-9">
				<h4 class="news-author-name">
					<?php $html->out($newsAuthor->getFullName()) ?><br>
					<small class="news-author-function"><?php $html->out($newsAuthor->t($n2nLocale)->getFunction()) ?></small>
				</h4>
			</div>
		</div>
	<?php endif ?>
</article>

<?php $html->linkToController(null, $html->getText('back'), array('class' => 'btn btn-primary')) ?>

<!-- News Comments -->
<div class="news-comments">
	<h3><?php $html->text('comments') ?></h3>
	<?php $html->linkToController(array('comment', $newsArticle->getId()), $html->getText('add_comment'), 
			array('class' => 'btn btn-primary')) ?>
	
	<?php foreach ($comments as $newsComment): $view->assert($newsComment instanceof NewsComment) ?>
		<div class="news-comment">
			<h4 class="news-comment-title">
				<?php $html->out($newsComment->getSender()) ?>
				<small class="news-comment-date"><?php $html->l10nDateTime($newsComment->getDate(), 
						DateTimeFormat::STYLE_MEDIUM) ?></small>
			</h4>
			<p class="news-comment-text"><?php $html->out($newsComment->getContent()) ?></p>
		</div>
	<?php endforeach ?>
</div>