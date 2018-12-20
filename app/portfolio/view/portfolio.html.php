<?php

	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
	use portfolio\bo\Portfolio;
use page\ui\PageHtmlBuilder;
use rocket\impl\ei\component\prop\ci\model\ContentItem;

	$view = HtmlView::view($this);
	$html = HtmlView::html($view);
	$request = HtmlView::request($view);
	
	$pageHtml = new PageHtmlBuilder($view);
	
	$portfolio = $view->getParam('portfolio');
	$view->assert($portfolio instanceof Portfolio);
	
	$n2nLocale = $request->getN2nLocale();
	
	$view->useTemplate('\tmpl\view\template.html', array('title' => $portfolio->t($n2nLocale)->getName(), 
			'smallContainer' => true));
	
?>

<div>
	<?php foreach ($portfolio->t($view->getN2nLocale())->getDescription() as $contentItem): 
	$view->assert($contentItem instanceof ContentItem) ?>
		<?php if ($contentItem->getPanel() !== 'main') continue ?>
		<?php $html->out($contentItem->createUiComponent($view)) ?>
	<?php endforeach ?>
</div>

<?php $html->linkToController(null, $html->getText('back'), array('class' => 'btn btn-primary')) ?>