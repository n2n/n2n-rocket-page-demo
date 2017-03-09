<?php
	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
	use ci\bo\CiAttachment;

	$view = HtmlView::view($this);
	$html = HtmlView::html($view);
	
	$attachment = $view->getParam('attachment');
	$view->assert($attachment instanceof CiAttachment);
?>

<div class="ci ci-attachment">
	<dl>
		<dt>
			<i class="fa <?php $html->out($attachment->getFaClassName()) ?>" aria-hidden="true"></i> 
			<?php $html->link($view->buildUrlStr($attachment->getFile()), $attachment->getTitle(), 
					array('target' => '_blank')) ?>
		</dt>
		<dd><?php $html->out($attachment->getDescription())?></dd>
	</dl>
</div>