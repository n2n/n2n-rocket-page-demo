<?php

	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
	use tmpl\model\TmplModel;
	use page\ui\PageHtmlBuilder;
use contact\model\ContactForm;

	$view = HtmlView::view($this);
	$html = HtmlView::html($view);
	$formHtml = HtmlView::formHtml($view);
	
	
	$view->useTemplate('inc\contactTemplate.html'); 
	
	$contactForm = $view->getParam('contactForm');
	$view->assert($contactForm instanceof ContactForm);
?>


<div class="contact-form row">
	<?php $formHtml->open($contactForm, null, null, array('class' => 'col-sm-8')) ?>
		<div class="form-group <?php $formHtml->outOnError('name', 'has-danger') ?>">
			<?php $formHtml->label('name', null, array('class' => 'col-form-label')) ?><br>
			<?php $formHtml->input('name', array('class' => 'form-control')) ?>
			<?php $formHtml->message('name', 'div', array('class' => 'form-control-feedback')) ?>
		</div>
		<div class="form-group <?php $formHtml->outOnError('email', 'has-danger') ?>">
			<?php $formHtml->label('email', null, array('class' => 'col-form-label')) ?>
			<?php $formHtml->input('email', array('class' => 'form-control')) ?>
			<?php $formHtml->message('email', 'div', array('class' => 'form-control-feedback')) ?>
		</div>
		<div class="form-group <?php $formHtml->outOnError('message', 'has-danger') ?>">
			<?php $formHtml->label('message', null, array('class' => 'col-form-label')) ?><br>
			<?php $formHtml->textarea('message', array('class' => 'form-control', 'rows' => '7')) ?>
			<?php $formHtml->message('message', 'div', array('class' => 'form-control-feedback')) ?>
		</div>
		<div class="form-group">
			<!-- with 'getL10nText' the text can also be translated like the labels in the .ini files (check ContactForm model) -->
			<?php $formHtml->buttonSubmit('send', $view->getL10nText('send'), array('class' => 'btn btn-primary', 'role' => 'button')) ?>
		</div>
	<?php $formHtml->close() ?>
</div>
