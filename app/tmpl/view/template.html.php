<?php
	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;

	$view = HtmlView::view($this);
	$html = HtmlView::html($view);
	
	$title = $view->getParam('title');
	
	$view->useTemplate('boilerplate.html');
?>

<div class="container">
	<h1><?php $html->out($title) ?></h1>
	
	<?php $view->importContentView() ?>
	
</div>