<?php
	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
	use news\bo\NewsArticle;
use n2n\l10n\DateTimeFormat;
use n2n\io\managed\img\impl\ThSt;
	
	$view = HtmlView::view($this);
	$html = HtmlView::html($view);
	
	$newsArticles = $view->getParam('newsArticles');
	
	$view->useTemplate('\tmpl\view\template.html', array('smallContainer' => true));
?>

<?php foreach ($newsArticles as $newsArticle): ?>
	<?php $view->assert($newsArticle instanceof NewsArticle) ?>
	<article class="news-article-overview">
		<h2 class="news-overview-title"><?php $html->out($newsArticle->getTitle()) ?></h2>
		<span class="news-article-date">
			<?php $html->l10nDate($newsArticle->getPublished(), DateTimeFormat::STYLE_LONG) ?>
		</span>
		
		<?php if (null !== $newsImage = $newsArticle->getImage()): ?>
			<div class="news-content row">
				<div class="news-content-image col-sm-4">
					<?php $html->image($newsImage, ThSt::crop(528, 352), array('class' => 'img-fluid rounded')) ?>
				</div>
				<div class="news-content-lead col-sm-8">
		<?php endif ?>
		
		<p class="news-content-lead lead"><?php $html->out($newsArticle->getLead()) ?></p>
		<?php $html->linkToController($newsArticle->getUrlPart(), $html->getText('read'), 
				array('class' => 'btn btn-primary')) ?>
		<?php if ($newsImage): ?>
				</div>
			</div>
		<?php endif ?>
		
		
	</article>
<?php endforeach ?>