<?php

	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
	use portfolio\bo\Portfolio;

	$view = HtmlView::view($this);
	$html = HtmlView::html($view);
	$request = HtmlView::request($view);
	
	$portfolio = $view->getParam('portfolio');
	$view->assert($portfolio instanceof Portfolio);
	
	$n2nLocale = $request->getN2nLocale();
	
	$view->useTemplate('\tmpl\view\template.html', array('title' => $portfolio->t($n2nLocale)->getName()));
	
?>

Output Porfolio Entry


<?php $html->linkToController(null, $html->getText('back'), array('btn btn-default')) ?>