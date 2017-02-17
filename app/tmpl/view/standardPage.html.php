<?php
	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
	use page\ui\PageHtmlBuilder;
	
	$view = HtmlView::view($view);
	$pageHtml = new PageHtmlBuilder($view);
	 
	$view->useTemplate('template.html', array('title' => $pageHtml->getTitle()));
?>

<?php $pageHtml->contentItems('main') ?>
