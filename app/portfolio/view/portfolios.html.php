<?php
	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
	use portfolio\bo\Portfolio;

	$view = HtmlView::view($this);
	$html = HtmlView::html($view);
	$request = HtmlView::request($view);
	
	$portfolios = $view->getParam('portfolios');
	
	$n2nLocale = $request->getN2nLocale();
	
	$view->useTemplate('\tmpl\view\template.html');
	
?>

<div class="row">
	<?php foreach ($portfolios as $portfolio): $view->assert($portfolio instanceof Portfolio) ?>
	
		<div class="col-sm-4">
			<div class="card">
				<?php // $html->image($portfolio->getFileImage()) ?>
				<h3><?php $html->out($portfolio->t($n2nLocale)->getName())?></h3>
				<?php $html->linkToController($portfolio->t()->getPathPart(), $html->getText('more'), 
						array('class' => 'btn btn-primary')) ?>
			</div>
		</div>
		
	<?php endforeach ?>
</div>