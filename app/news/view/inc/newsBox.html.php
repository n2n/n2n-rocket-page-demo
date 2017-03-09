<?php

	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
	use news\model\NewsDao;
	use news\bo\NewsArticle;
	use page\ui\PageHtmlBuilder;
	use page\model\nav\murl\MurlPage;
use n2n\util\StringUtils;
use n2n\l10n\DateTimeFormat;

	$view = HtmlView::view($this);
	$html = HtmlView::html($view);
	$request = HtmlView::request($view);
	
	$newsDao = $view->lookup('news\model\NewsDao');
	$view->assert($newsDao instanceof NewsDao);
	
	$pageHtml = new PageHtmlBuilder($view);
	
	$latestNews = $newsDao->getLatestNewsArticles($request->getN2nLocale());

?>

<div class="news-sidebar">
	<h2><?php $html->text('news_latest_news') ?></h2>
	<?php foreach ($latestNews as $newsArticle): $view->assert($newsArticle instanceof NewsArticle) ?>
		<article class="news-preview">
			<h3><?php $html->out($newsArticle->getTitle())?></h3>
			<span class="news-preview-date">
				<?php $html->l10nDate($newsArticle->getPublished(), DateTimeFormat::STYLE_SHORT) ?>
			</span>
			<p class="news-preview-lead lead"><?php $html->out(StringUtils::reduce($newsArticle->getLead(), 40, '...')) ?></p>
			
			<?php $html->link(MurlPage::tag('news\controller\NewsPageController')->pathExt($newsArticle->getUrlPart()), 
					$html->getText('read'), array('class' => 'btn btn-primary btn-sm') )?>
		</article>
	<?php endforeach ?>
</div>
