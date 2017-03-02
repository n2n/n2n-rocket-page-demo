<?php
	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
	use n2n\io\managed\img\impl\ThSt;
	use ci\bo\CiImage;
	
	$view = HtmlView::view($this);
	$html = HtmlView::html($view);
	 
	$image = $view->getParam('image');
	$view->assert($image instanceof CiImage);
 
?>
<figure class="ci ci-image">
    <?php $html->image($image->getFileImage(), ThSt::prop(750, 500), array('class' => 'img-fluid rounded')) ?>
    <?php if (null !== ($caption = $image->getCaption())): ?>
        <figcaption><?php $html->out($caption) ?></figcaption>
    <?php endif; ?>
</figure>