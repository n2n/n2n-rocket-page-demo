<?php
namespace tmpl\model;

use n2n\impl\web\ui\view\html\HtmlView;
use rocket\impl\ei\component\prop\string\cke\model\CkeStyle;
use rocket\impl\ei\component\prop\string\cke\model\CkeCssConfig;

class TmplCkeCssConfig implements CkeCssConfig {
	public function getContentCssUrls(HtmlView $view): ?array {
		$meta = $view->getHtmlBuilder()->meta();
		return array($meta->getAssetUrl('css/editor.css', 'bstmpl'));
	}
	
	public function getBodyClass(): ?string {
		return 'bstmpl-cke';
	}
	
	public function getBodyId(): ?string {
		return 'bstmpl-cke';
	}
	
	public function getAdditionalStyles(): ?array {
		return array(new CkeStyle('Blockquote', 'blockquote', array('class' => 'blockquote')),
				new CkeStyle('Blockquote Footer', 'footer', array('class' => 'blockquote-footer')),
				new CkeStyle('Button Gross Primary', 'a', array('class' => 'btn btn-lg btn-primary btn-round')),
				new CkeStyle('Button Primary', 'a', array('class' => 'btn btn-primary btn-round')),
				new CkeStyle('Button Klein Primary', 'a', array('class' => 'btn btn-sm btn-primary btn-round')),
				new CkeStyle('Pfeil-Link', 'a', array('class' => 'tp-btn')),
				new CkeStyle('klein', 'small'),
				new CkeStyle('Tabelle', 'table', array('class' => 'table table-responsive-lg cke_show_border')),
				new CkeStyle('Tabelle mit Highlight', 'table', array('class' => 'table table-hover table-bordered table-responsive-lg cke_show_border')),
				new CkeStyle('Tabelle mit Rahmen', 'table', array('class' => 'table table-bordered table-responsive-lg cke_show_border')),
				new CkeStyle('Tabelle - striped - mit Rahmen', 'table', array('class' => 'table table-striped table-bordered table-responsive-lg cke_show_border')),
				new CkeStyle('Row - Green', 'tr', array('class' => 'table-success')),
				new CkeStyle('Row - Blue', 'tr', array('class' => 'table-info')),
				new CkeStyle('Row - Yellow', 'tr', array('class' => 'table-warning')),
				new CkeStyle('Row - Red', 'tr', array('class' => 'table-danger'))
		);
	}
	/* (non-PHPdoc)
	 * @see \rocket\script\entity\field\impl\string\wysiwyg\WysiwygCssConfiguration::getFormatTags()
	 */
	public function getFormatTags(): ?array {
		return array('p', 'h2', 'h3', 'h4', 'pre', 'address', 'div');
	}
}