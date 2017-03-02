<?php
	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
	use portfolio\bo\Portfolio;
use n2n\io\managed\img\impl\ThSt;
use n2n\io\managed\img\ImageDimension;
use n2n\impl\web\ui\view\html\img\Mimg;

	$view = HtmlView::view($this);
	$html = HtmlView::html($view);
	$request = HtmlView::request($view);
	
	$portfolios = $view->getParam('portfolios');
	
	$n2nLocale = $request->getN2nLocale();
	
	$view->useTemplate('\tmpl\view\template.html');
	
?>

<div class="portfolios row">
	<?php foreach ($portfolios as $portfolio): $view->assert($portfolio instanceof Portfolio) ?>
	
		<div class="col-sm-6 col-lg-4">
			<div class="portfolio card">
				<div class="card-block">
					<?php if (null !== ($fileImage = $portfolio->getFileImage())): ?> 
						<?php $html->image($fileImage, ThSt::crop(503, 335), array('class' => 'img-fluid card-img-top', 'alt' => 'Portfolio picture')); ?>
					<?php endif ?>

					<h3 class="card-title"><?php $html->out($portfolio->t($n2nLocale)->getName())?></h3>
					<?php $html->linkToController($portfolio->t($n2nLocale)->getPathPart(), $html->getText('more'), 
						array('class' => 'btn btn-primary')) ?>
				</div>
			</div>
		</div>
		
	<?php endforeach ?>
</div>